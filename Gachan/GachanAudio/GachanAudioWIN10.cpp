//
// GachanAudioWIN10.cpp ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include <stdint.h>
#include <objbase.h>
#include <memory>
#include <mmreg.h>

#include <xaudio2.h>
#include <xaudio2fx.h>
#include <x3daudio.h>

#include "Gachan.h"



const uint32_t FOURCC_RIFF_TAG      = MAKEFOURCC('R', 'I', 'F', 'F');
const uint32_t FOURCC_FORMAT_TAG    = MAKEFOURCC('f', 'm', 't', ' ');
const uint32_t FOURCC_DATA_TAG      = MAKEFOURCC('d', 'a', 't', 'a');
const uint32_t FOURCC_WAVE_FILE_TAG = MAKEFOURCC('W', 'A', 'V', 'E');
const uint32_t FOURCC_XWMA_FILE_TAG = MAKEFOURCC('X', 'W', 'M', 'A');

#pragma pack(push,1)//アライメントを1にする
struct RIFFChunk
{
	uint32_t tag;
	uint32_t size;
};

struct RIFFChunkHeader
{
	uint32_t tag;
	uint32_t size;
	uint32_t riff;
};
#pragma pack(pop)

static_assert(sizeof(RIFFChunk) == 8, "structure size mismatch");
static_assert(sizeof(RIFFChunkHeader) == 12, "structure size mismatch");

const RIFFChunk* FindChunk(
	_In_reads_bytes_(sizeBytes) const uint8_t* data,
	_In_ size_t sizeBytes,
	_In_ uint32_t tag)
{
	if (!data)
		return nullptr;

	const uint8_t* ptr = data;
	const uint8_t* end = data + sizeBytes;

	while (end > (ptr + sizeof(RIFFChunk)))
	{
		auto header = reinterpret_cast<const RIFFChunk*>(ptr);
		if (header->tag == tag)
			return header;

		ptrdiff_t offset = header->size + sizeof(RIFFChunk);
		ptr += offset;
	}

	return nullptr;
}
HRESULT WaveFindFormatAndData(
	_In_reads_bytes_(wavDataSize) const uint8_t* wavData,
	_In_ size_t wavDataSize,
	_Outptr_ const WAVEFORMATEX** pwfx,
	_Outptr_ const uint8_t** pdata,
	_Out_ uint32_t* dataSize,
	_Out_ bool& dpds,
	_Out_ bool& seek)
{
	if (!wavData || !pwfx)
		return E_POINTER;

	dpds = seek = false;

	if (wavDataSize < (sizeof(RIFFChunk) * 2 + sizeof(uint32_t) + sizeof(WAVEFORMAT)))
	{
		return E_FAIL;
	}

	const uint8_t* wavEnd = wavData + wavDataSize;

	auto riffChunk = FindChunk(wavData, wavDataSize, FOURCC_RIFF_TAG);
	if (!riffChunk || riffChunk->size < 4)
	{
		return E_FAIL;
	}

	auto riffHeader = reinterpret_cast<const RIFFChunkHeader*>(riffChunk);
	if (riffHeader->riff != FOURCC_WAVE_FILE_TAG && riffHeader->riff != FOURCC_XWMA_FILE_TAG)
	{
		return E_FAIL;
	}

	auto ptr = reinterpret_cast<const uint8_t*>(riffHeader) + sizeof(RIFFChunkHeader);
	if ((ptr + sizeof(RIFFChunk)) > wavEnd)
	{
		return HRESULT_FROM_WIN32(ERROR_HANDLE_EOF);
	}

	auto fmtChunk = FindChunk(ptr, riffHeader->size, FOURCC_FORMAT_TAG);
	if (!fmtChunk || fmtChunk->size < sizeof(PCMWAVEFORMAT))
	{
		return E_FAIL;
	}

	ptr = reinterpret_cast<const uint8_t*>(fmtChunk) + sizeof(RIFFChunk);
	if (ptr + fmtChunk->size > wavEnd)
	{
		return HRESULT_FROM_WIN32(ERROR_HANDLE_EOF);
	}

	auto wf = reinterpret_cast<const WAVEFORMAT*>(ptr);

	switch (wf->wFormatTag)
	{
	case WAVE_FORMAT_PCM:
	case WAVE_FORMAT_IEEE_FLOAT:
		break;

	default:
	{
		if (fmtChunk->size < sizeof(WAVEFORMATEX))
		{
			return E_FAIL;
		}

		auto wfx = reinterpret_cast<const WAVEFORMATEX*>(ptr);

		if (fmtChunk->size < (sizeof(WAVEFORMATEX) + wfx->cbSize))
		{
			return E_FAIL;
		}

		switch (wfx->wFormatTag)
		{
		case WAVE_FORMAT_WMAUDIO2:
		case WAVE_FORMAT_WMAUDIO3:
			dpds = true;
			break;

		case  0x166://XBOX
			if ((fmtChunk->size < 52) || (wfx->cbSize < 34 ))
			{
				return E_FAIL;
			}
			seek = true;
			break;

		case WAVE_FORMAT_ADPCM:
			if ((fmtChunk->size < (sizeof(WAVEFORMATEX) + 32)) || (wfx->cbSize < 32))
			{
				return E_FAIL;
			}
			break;

		case WAVE_FORMAT_EXTENSIBLE:
			if ((fmtChunk->size < sizeof(WAVEFORMATEXTENSIBLE)) || (wfx->cbSize < (sizeof(WAVEFORMATEXTENSIBLE) - sizeof(WAVEFORMATEX))))
			{
				return E_FAIL;
			}
			else
			{
				static const GUID s_wfexBase = { 0x00000000, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xAA, 0x00, 0x38, 0x9B, 0x71 };

				auto wfex = reinterpret_cast<const WAVEFORMATEXTENSIBLE*>(ptr);

				if (memcmp(reinterpret_cast<const BYTE*>(&wfex->SubFormat) + sizeof(DWORD),
					reinterpret_cast<const BYTE*>(&s_wfexBase) + sizeof(DWORD), sizeof(GUID) - sizeof(DWORD)) != 0)
				{
					return HRESULT_FROM_WIN32(ERROR_NOT_SUPPORTED);
				}

				switch (wfex->SubFormat.Data1)
				{
				case WAVE_FORMAT_PCM:
				case WAVE_FORMAT_IEEE_FLOAT:
					break;

				case WAVE_FORMAT_WMAUDIO2:
				case WAVE_FORMAT_WMAUDIO3:
					dpds = true;
					break;

				default:
					return HRESULT_FROM_WIN32(ERROR_NOT_SUPPORTED);
				}

			}
			break;

		default:
			return HRESULT_FROM_WIN32(ERROR_NOT_SUPPORTED);
		}
	}
	}

	ptr = reinterpret_cast<const uint8_t*>(riffHeader) + sizeof(RIFFChunkHeader);
	if ((ptr + sizeof(RIFFChunk)) > wavEnd)
	{
		return HRESULT_FROM_WIN32(ERROR_HANDLE_EOF);
	}

	auto dataChunk = FindChunk(ptr, riffChunk->size, FOURCC_DATA_TAG);
	if (!dataChunk || !dataChunk->size)
	{
		return HRESULT_FROM_WIN32(ERROR_INVALID_DATA);
	}

	ptr = reinterpret_cast<const uint8_t*>(dataChunk) + sizeof(RIFFChunk);
	if (ptr + dataChunk->size > wavEnd)
	{
		return HRESULT_FROM_WIN32(ERROR_HANDLE_EOF);
	}

	*pwfx = reinterpret_cast<const WAVEFORMATEX*>(wf);
	*pdata = ptr;
	*dataSize = dataChunk->size;
	return S_OK;
}

HRESULT LoadAudioFromFile(
	_In_z_ const char* szFileName,
	_Inout_ std::unique_ptr<uint8_t[]>& wavData,
	_Out_ DWORD* bytesRead)
{
	if (!szFileName)
		return E_INVALIDARG;

	HANDLE hFile = CreateFileA(szFileName,
		GENERIC_READ,
		FILE_SHARE_READ,
		nullptr,
		OPEN_EXISTING,
		FILE_ATTRIBUTE_NORMAL,
		nullptr);

	if (!hFile)
	{
		return HRESULT_FROM_WIN32(GetLastError());
	}

	FILE_STANDARD_INFO fileInfo;
	if (!GetFileInformationByHandleEx(hFile, FileStandardInfo, &fileInfo, sizeof(fileInfo)))
	{
		return HRESULT_FROM_WIN32(GetLastError());
	}

	if (fileInfo.EndOfFile.HighPart > 0)
	{
		return E_FAIL;
	}

	if (fileInfo.EndOfFile.LowPart < (sizeof(RIFFChunk) * 2 + sizeof(DWORD) + sizeof(WAVEFORMAT)))
	{
		return E_FAIL;
	}

	wavData.reset(new (std::nothrow) uint8_t[fileInfo.EndOfFile.LowPart]);
	if (!wavData)
	{
		return E_OUTOFMEMORY;
	}

	if (!ReadFile(hFile,
		wavData.get(),
		fileInfo.EndOfFile.LowPart,
		bytesRead,
		nullptr
	))
	{
		return HRESULT_FROM_WIN32(GetLastError());
	}

	return (*bytesRead < fileInfo.EndOfFile.LowPart) ? E_FAIL : S_OK;
}

_Use_decl_annotations_
HRESULT LoadWAVAudioFromFile(
	const char* szFileName,
	std::unique_ptr<uint8_t[]>& wavData,
	const WAVEFORMATEX** wfx,
	const uint8_t** startAudio,
	uint32_t* audioBytes)
{
	if (!szFileName || !wfx || !startAudio || !audioBytes)
		return E_INVALIDARG;

	*wfx = nullptr;
	*startAudio = nullptr;
	*audioBytes = 0;

	DWORD bytesRead = 0;
	HRESULT hr = LoadAudioFromFile(szFileName, wavData, &bytesRead);
	if (FAILED(hr))
	{
		SysLog("WAV:READ ERROR\n");
		DEBUGSTOP;
		return hr;
	}

	bool dpds, seek;
	hr = WaveFindFormatAndData(wavData.get(), bytesRead, wfx, startAudio, audioBytes, dpds, seek);
	if (FAILED(hr)) {
		SysLog("WAV:READ ERROR\n");
		DEBUGSTOP;
		return hr;
	}

	return (dpds || seek) ? E_FAIL : S_OK;
}











#include <string.h>
#include "GachanAudio.h"
#include "GachanAudioWIN10Engine.h"


	//X3DAudioは任意単位 (元のサンプルがAVAudioと比べてmeterのよう) dxは単位10cm
	const float DX3DToX3DAudio = 0.1f;


	//const char* AudioPath = NULL;


	class GachanAudioBufferData
	{
	public:
		XAUDIO2_BUFFER buffer;

		std::unique_ptr<uint8_t[]> waveData;
	};


	bool GetSystemPath(char* path, int len, const char* fullpath);

	static void* LoadWAV(const char* filename, bool use3D)
	{
		char path[1024];

#if 1
		GetSystemPath(path, 1024, filename);

		SysLog("WAV:%s\n", path);

#else

		if (AudioPath) {
			strcpy_s(path, AudioPath);
			strcat_s(path, "\\");
			strcat_s(path, filename);
		}
#if 1
		else {
			CHAR pathnow[pathlen];
			::GetModuleFileNameA(NULL, pathnow, pathlen);
			char* ptr = strstr(pathnow, "GachanWIN10");
			if (ptr) {
				*ptr = 0;
				strcpy_s(path, pathnow);
				strcat_s(path, filename);
			}
			else {
				while (1) {}
			}
		}
#endif
		if (strlen(path) >= pathlen) {
			while (1) {}
		}
#endif

		GachanAudioBufferData* data = new GachanAudioBufferData;

		const WAVEFORMATEX* pwfx;
		const uint8_t* sampleData;
		uint32_t waveSize;

		LoadWAVAudioFromFile(path, data->waveData, &pwfx, &sampleData, &waveSize);


		data->buffer.pAudioData = sampleData;
		data->buffer.Flags      = XAUDIO2_END_OF_STREAM;
		data->buffer.AudioBytes = waveSize;
		data->buffer.LoopCount  = XAUDIO2_LOOP_INFINITE;


		GachanAudioEngine* engine = GachanAudioEngine::GetEngine();
		if (use3D) {

			if (engine->format3D == NULL) {
				int size = sizeof(WAVEFORMATEX) + pwfx->cbSize;
				engine->format3D = (WAVEFORMATEX*)malloc(size);
				memcpy(engine->format3D, pwfx, size);
			}
		}
		else {
			if (engine->format == NULL) {
				int size = sizeof(WAVEFORMATEX) + pwfx->cbSize;
				engine->format = (WAVEFORMATEX*)malloc(size);
				memcpy(engine->format, pwfx, size);
			}
		}
		return (void*)data;
	}


	void GachanAudio3DBuffer::Create(const char* filename)
	{
		buffer = LoadWAV(filename, true);
	}
	void GachanAudio3DBuffer::Release()
	{
		if (buffer) {
			((GachanAudioBufferData*)buffer)->waveData.reset();
			delete buffer;
			buffer = NULL;
		}
	}

	void GachanAudioBuffer::Create(const char* filename)
	{
		buffer = LoadWAV(filename, false);
	}
	void GachanAudioBuffer::Release()
	{
		if (buffer) {
			((GachanAudioBufferData*)buffer)->waveData.reset();
			delete buffer;
			buffer = NULL;
		}
	}








	class GachanAudio3DPlayerData
	{
	public:
		IXAudio2SourceVoice* voice;
		X3DAUDIO_EMITTER     emitter;
		X3DAUDIO_CONE        emitterCone;
		FLOAT32              emitterAzimuths[AUDIO3DINPUTCHANNELS];
		FLOAT32              matrixCoefficients[AUDIO3DINPUTCHANNELS * OUTPUTCHANNELS];
		X3DAUDIO_DSP_SETTINGS dspSettings;
	};
	static const X3DAUDIO_DISTANCE_CURVE_POINT Emitter_LFE_CurvePoints[3] = { 0.0f, 1.0f, 0.25f, 0.0f, 1.0f, 0.0f };
	static const X3DAUDIO_DISTANCE_CURVE       Emitter_LFE_Curve = { (X3DAUDIO_DISTANCE_CURVE_POINT*)& Emitter_LFE_CurvePoints[0], 3 };

	static const X3DAUDIO_DISTANCE_CURVE_POINT Emitter_Reverb_CurvePoints[3] = { 0.0f, 0.5f, 0.75f, 1.0f, 1.0f, 0.0f };
	static const X3DAUDIO_DISTANCE_CURVE       Emitter_Reverb_Curve = { (X3DAUDIO_DISTANCE_CURVE_POINT*)& Emitter_Reverb_CurvePoints[0], 3 };


	static void* CreateGachanAudio3DPlayer(const WAVEFORMATEX* fmt)
	{
		GachanAudio3DPlayerData* data = (GachanAudio3DPlayerData*)malloc(sizeof(GachanAudio3DPlayerData));
		memset(data, 0, sizeof(GachanAudio3DPlayerData));

		GachanAudioEngine* engine = GachanAudioEngine::GetEngine();

		XAUDIO2_SEND_DESCRIPTOR sendDescriptors[2];
		sendDescriptors[0].Flags        = XAUDIO2_SEND_USEFILTER; 
		sendDescriptors[0].pOutputVoice = engine->pMasteringVoice;
		sendDescriptors[1].Flags        = XAUDIO2_SEND_USEFILTER; 
		sendDescriptors[1].pOutputVoice = engine->pSubmixVoice;
		const XAUDIO2_VOICE_SENDS sendList = { 2, sendDescriptors };

		engine->pXAudio2->CreateSourceVoice(&data->voice, fmt, 0, 2.0f, nullptr, &sendList);


		data->emitter.pCone = &data->emitterCone;
		data->emitter.pCone->InnerAngle  = 0.0f;
		data->emitter.pCone->OuterAngle  = 0.0f;
		data->emitter.pCone->InnerVolume = 0.0f;
		data->emitter.pCone->OuterVolume = 1.0f;
		data->emitter.pCone->InnerLPF    = 0.0f;
		data->emitter.pCone->OuterLPF    = 1.0f;
		data->emitter.pCone->InnerReverb = 0.0f;
		data->emitter.pCone->OuterReverb = 1.0f;

		data->emitter.Position.x = 0.0f;
		data->emitter.Position.y = 0.0f;
		data->emitter.Position.z = 0.0f;

		data->emitter.OrientFront.x =
		data->emitter.OrientFront.y =
		data->emitter.OrientTop.x   =
		data->emitter.OrientTop.z   = 0.f;

		data->emitter.OrientFront.z =
		data->emitter.OrientTop.y   = 1.f;

		data->emitter.ChannelCount     = AUDIO3DINPUTCHANNELS;
		data->emitter.ChannelRadius    = 1.0f;
		data->emitter.pChannelAzimuths = data->emitterAzimuths;

		data->emitter.InnerRadius      = 2.0f;
		data->emitter.InnerRadiusAngle = X3DAUDIO_PI / 4.0f;;

		data->emitter.pVolumeCurve        = (X3DAUDIO_DISTANCE_CURVE*)& X3DAudioDefault_LinearCurve;
		data->emitter.pLFECurve           = (X3DAUDIO_DISTANCE_CURVE*)& Emitter_LFE_Curve;
		data->emitter.pLPFDirectCurve     = nullptr; 
		data->emitter.pLPFReverbCurve     = nullptr; 
		data->emitter.pReverbCurve        = (X3DAUDIO_DISTANCE_CURVE*)& Emitter_Reverb_Curve;
		data->emitter.CurveDistanceScaler = 14.0f;
		data->emitter.DopplerScaler       = 1.0f;

		data->dspSettings.SrcChannelCount = AUDIO3DINPUTCHANNELS;
		data->dspSettings.DstChannelCount = engine->nChannels;
		data->dspSettings.pMatrixCoefficients = data->matrixCoefficients;



		return data;
	}


	void GachanAudio3DPlayer::Create()
	{
		GachanAudioEngine* engine = GachanAudioEngine::GetEngine();

		player = CreateGachanAudio3DPlayer(engine->format3D);
		used = false;
	}
	void GachanAudio3DPlayer::Release()
	{
		if (player) {
			if (((GachanAudio3DPlayerData*)player)->voice) {
				((GachanAudio3DPlayerData*)player)->voice->DestroyVoice();
			}
			free(player);
			player = NULL;
		}
		used = false;
	}

	void GachanAudio3DPlayer::SetBuffer(GachanAudio3DBuffer* buffer, bool loop)
	{
		if (player && buffer && buffer->buffer) {
			GachanAudio3DPlayerData* playerdata = (GachanAudio3DPlayerData*)player;
			GachanAudioBufferData* bufdata      = (GachanAudioBufferData*)buffer->buffer;
			if (playerdata->voice) {
				XAUDIO2_BUFFER* buf = &bufdata->buffer;
				buf->LoopCount = (loop) ? XAUDIO2_LOOP_INFINITE : XAUDIO2_NO_LOOP_REGION;

				playerdata->voice->SubmitSourceBuffer(buf);
			}
		}
	}
	void GachanAudio3DPlayer::SetVolume(Val volume)
	{
		if (player) {
			GachanAudio3DPlayerData* playerdata = (GachanAudio3DPlayerData*)player;
			if (playerdata->voice) {
				playerdata->voice->SetVolume(volume);
			}
		}
	}

	void GachanAudio3DPlayer::SetPosition(Vec pos)
	{
		if (player) {
			GachanAudio3DPlayerData* playerdata = (GachanAudio3DPlayerData*)player;
			
			playerdata->emitter.Position.x = pos.x * DX3DToX3DAudio;
			playerdata->emitter.Position.y = pos.y * DX3DToX3DAudio;
			playerdata->emitter.Position.z = pos.z * DX3DToX3DAudio;//left hand



			GachanAudioEngine* engine = GachanAudioEngine::GetEngine();

			DWORD dwCalcFlags = X3DAUDIO_CALCULATE_MATRIX | X3DAUDIO_CALCULATE_DOPPLER
				| X3DAUDIO_CALCULATE_LPF_DIRECT | X3DAUDIO_CALCULATE_LPF_REVERB
				| X3DAUDIO_CALCULATE_REVERB;
			if (engine->fUseRedirectToLFE)
			{
				dwCalcFlags |= X3DAUDIO_CALCULATE_REDIRECT_TO_LFE;
			}

			X3DAudioCalculate(
				engine->x3DInstance, 
				&engine->listener, 
				&playerdata->emitter, 
				dwCalcFlags,
				&playerdata->dspSettings);

			IXAudio2SourceVoice* voice = playerdata->voice;
			if (voice) {
				voice->SetFrequencyRatio(playerdata->dspSettings.DopplerFactor);
				voice->SetOutputMatrix(engine->pMasteringVoice, AUDIO3DINPUTCHANNELS, engine->nChannels, playerdata->matrixCoefficients);
				voice->SetOutputMatrix(engine->pSubmixVoice, 1, 1, &playerdata->dspSettings.ReverbLevel);

				XAUDIO2_FILTER_PARAMETERS FilterParametersDirect = { 
					LowPassFilter, 
					2.0f * sinf(X3DAUDIO_PI / 6.0f * playerdata->dspSettings.LPFDirectCoefficient), 
					1.0f };

				voice->SetOutputFilterParameters(engine->pMasteringVoice, &FilterParametersDirect);

				XAUDIO2_FILTER_PARAMETERS FilterParametersReverb = { 
					LowPassFilter, 
					2.0f * sinf(X3DAUDIO_PI / 6.0f * playerdata->dspSettings.LPFReverbCoefficient), 
					1.0f };

				voice->SetOutputFilterParameters(engine->pSubmixVoice, &FilterParametersReverb);
			}
		}
	}

	void GachanAudio3DPlayer::Play()
	{
		if (player) {
			GachanAudio3DPlayerData* playerdata = (GachanAudio3DPlayerData*)player;
			if (playerdata->voice) {
				playerdata->voice->Start(0);
			}
		}
	}
	void GachanAudio3DPlayer::Stop()
	{
		if (player) {
			GachanAudio3DPlayerData* playerdata = (GachanAudio3DPlayerData*)player;
			if (playerdata->voice) {
				playerdata->voice->Stop();
			}
		}
	}




	class GachanAudioPlayerData
	{
	public:
		IXAudio2SourceVoice* voice;
	};
	static void* CreateGachanAudioPlayer(const WAVEFORMATEX* fmt)
	{
		GachanAudioPlayerData* data = (GachanAudioPlayerData*)malloc(sizeof(GachanAudioPlayerData));
		memset(data, 0, sizeof(GachanAudioPlayerData));

		GachanAudioEngine* engine = GachanAudioEngine::GetEngine();

		engine->pXAudio2->CreateSourceVoice(&data->voice, fmt);

		return data;
	}
	void GachanAudioPlayer::Create()
	{
		GachanAudioEngine* engine = GachanAudioEngine::GetEngine();

		player = CreateGachanAudioPlayer(engine->format);
		used = false;
	}
	void GachanAudioPlayer::Release()
	{
		if (player) {
			if (((GachanAudioPlayerData*)player)->voice) {
				((GachanAudioPlayerData*)player)->voice->DestroyVoice();
			}
			free(player);
			player = NULL;
		}
		used = false;
	}
	void GachanAudioPlayer::SetBuffer(GachanAudioBuffer* buffer, bool loop)
	{
		if (player && buffer && buffer->buffer) {
			GachanAudioPlayerData* playerdata = (GachanAudioPlayerData*)player;
			GachanAudioBufferData* bufdata    = (GachanAudioBufferData*)buffer->buffer;
			if (playerdata->voice) {
				XAUDIO2_BUFFER* buf = &bufdata->buffer;
				buf->LoopCount = (loop) ? XAUDIO2_LOOP_INFINITE : XAUDIO2_NO_LOOP_REGION;

				playerdata->voice->SubmitSourceBuffer(buf);
			}
		}
	}
	void GachanAudioPlayer::SetVolume(Val volume)
	{
		if (player) {
			GachanAudioPlayerData* playerdata = (GachanAudioPlayerData*)player;
			if (playerdata->voice) {
				playerdata->voice->SetVolume(volume);
			}
		}
	}
	void GachanAudioPlayer::Play()
	{
		if (player) {
			GachanAudioPlayerData* playerdata = (GachanAudioPlayerData*)player;
			if (playerdata->voice) {
				playerdata->voice->Start(0);
			}
		}
	}
	void GachanAudioPlayer::Stop()
	{
		if (player) {
			GachanAudioPlayerData* playerdata = (GachanAudioPlayerData*)player;
			if (playerdata->voice) {
				playerdata->voice->Stop();
			}
		}
	}







	void GachanAudio::Create()
	{
		GachanAudioEngine* engine = GachanAudioEngine::GetEngine();

		engine->Create();
	}

	void GachanAudio::Release()
	{
		GachanAudioEngine* engine = GachanAudioEngine::GetEngine();

		engine->Release();

	}


	void GachanAudio::SetListener(Vec pos, Vec front, Vec up)
	{
		GachanAudioEngine* engine = GachanAudioEngine::GetEngine();

		engine->listener.Position.x = pos.x * DX3DToX3DAudio;
		engine->listener.Position.y = pos.y * DX3DToX3DAudio;
		engine->listener.Position.z = pos.z * DX3DToX3DAudio;//left hand

		engine->listener.Velocity.x = 0.0f * DX3DToX3DAudio;
		engine->listener.Velocity.y = 0.0f * DX3DToX3DAudio;
		engine->listener.Velocity.z = 0.0f * DX3DToX3DAudio;//left hand

		engine->listener.OrientFront.x = front.x;
		engine->listener.OrientFront.y = front.y;
		engine->listener.OrientFront.z = front.z;

		engine->listener.OrientTop.x = up.x;
		engine->listener.OrientTop.y = up.y;
		engine->listener.OrientTop.z = up.z;
	}

















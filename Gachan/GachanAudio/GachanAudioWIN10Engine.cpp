//
// GachanAudioWIN10Engine.cpp ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//




#include "GachanAudioWIN10Engine.h"


#ifndef SAFE_RELEASE
#define SAFE_RELEASE(p)      { if (p) { (p)->Release(); (p) = nullptr; } }
#endif


GachanAudioEngine engine;

GachanAudioEngine* GachanAudioEngine::GetEngine()
{
	return &engine;
}

static const X3DAUDIO_CONE Listener_DirectionalCone = { 
	X3DAUDIO_PI * 5.0f / 6.0f, 
	X3DAUDIO_PI * 11.0f / 6.0f, 
	1.0f, 
	0.75f, 
	0.0f, 
	0.25f, 
	0.708f, 
	1.0f 
};

XAUDIO2FX_REVERB_I3DL2_PARAMETERS g_PRESET_PARAMS[NUM_PRESETS] =
{
	XAUDIO2FX_I3DL2_PRESET_FOREST,
	XAUDIO2FX_I3DL2_PRESET_DEFAULT,
	XAUDIO2FX_I3DL2_PRESET_GENERIC,
	XAUDIO2FX_I3DL2_PRESET_PADDEDCELL,
	XAUDIO2FX_I3DL2_PRESET_ROOM,
	XAUDIO2FX_I3DL2_PRESET_BATHROOM,
	XAUDIO2FX_I3DL2_PRESET_LIVINGROOM,
	XAUDIO2FX_I3DL2_PRESET_STONEROOM,
	XAUDIO2FX_I3DL2_PRESET_AUDITORIUM,
	XAUDIO2FX_I3DL2_PRESET_CONCERTHALL,
	XAUDIO2FX_I3DL2_PRESET_CAVE,
	XAUDIO2FX_I3DL2_PRESET_ARENA,
	XAUDIO2FX_I3DL2_PRESET_HANGAR,
	XAUDIO2FX_I3DL2_PRESET_CARPETEDHALLWAY,
	XAUDIO2FX_I3DL2_PRESET_HALLWAY,
	XAUDIO2FX_I3DL2_PRESET_STONECORRIDOR,
	XAUDIO2FX_I3DL2_PRESET_ALLEY,
	XAUDIO2FX_I3DL2_PRESET_CITY,
	XAUDIO2FX_I3DL2_PRESET_MOUNTAINS,
	XAUDIO2FX_I3DL2_PRESET_QUARRY,
	XAUDIO2FX_I3DL2_PRESET_PLAIN,
	XAUDIO2FX_I3DL2_PRESET_PARKINGLOT,
	XAUDIO2FX_I3DL2_PRESET_SEWERPIPE,
	XAUDIO2FX_I3DL2_PRESET_UNDERWATER,
	XAUDIO2FX_I3DL2_PRESET_SMALLROOM,
	XAUDIO2FX_I3DL2_PRESET_MEDIUMROOM,
	XAUDIO2FX_I3DL2_PRESET_LARGEROOM,
	XAUDIO2FX_I3DL2_PRESET_MEDIUMHALL,
	XAUDIO2FX_I3DL2_PRESET_LARGEHALL,
	XAUDIO2FX_I3DL2_PRESET_PLATE,
};


HRESULT GachanAudioEngine::Create()
{
	memset(&engine, 0, sizeof(GachanAudioEngine));

	HRESULT hr;
	hr = CoInitializeEx(nullptr, COINIT_MULTITHREADED);
	//hr = CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);
	if (FAILED(hr))
		return hr;

	UINT32 flags = 0;
	hr = XAudio2Create(&engine.pXAudio2, flags);
	if (FAILED(hr)) {
		return hr;
	}

#ifdef _DEBUG
	XAUDIO2_DEBUG_CONFIGURATION debug = { 0 };
	debug.TraceMask = XAUDIO2_LOG_ERRORS | XAUDIO2_LOG_WARNINGS;
	debug.BreakMask = XAUDIO2_LOG_ERRORS;
	engine.pXAudio2->SetDebugConfiguration(&debug, 0);
#endif

	if (FAILED(hr = engine.pXAudio2->CreateMasteringVoice(&engine.pMasteringVoice))) {
		SAFE_RELEASE(engine.pXAudio2);
		return hr;
	}

	DWORD dwChannelMask;
	UINT32 nSampleRate;

	XAUDIO2_VOICE_DETAILS details;
	engine.pMasteringVoice->GetVoiceDetails(&details);

	if (details.InputChannels > OUTPUTCHANNELS) {
		SAFE_RELEASE(engine.pXAudio2);
		return E_FAIL;
	}

	if (FAILED(hr = engine.pMasteringVoice->GetChannelMask(&dwChannelMask))) {
		SAFE_RELEASE(engine.pXAudio2);
		return E_FAIL;
	}

	nSampleRate          = details.InputSampleRate;
	engine.nChannels     = details.InputChannels;
	engine.dwChannelMask = dwChannelMask;

	UINT32 rflags = 0;

	if (FAILED(hr = XAudio2CreateReverb(&engine.pReverbEffect, rflags))) {
		SAFE_RELEASE(engine.pXAudio2);
		return hr;
	}

	XAUDIO2_EFFECT_DESCRIPTOR effects[] = {
		{ engine.pReverbEffect, TRUE, 1 } 
	};
	XAUDIO2_EFFECT_CHAIN effectChain = {
		1, effects 
	};

	if (FAILED(hr = engine.pXAudio2->CreateSubmixVoice(&engine.pSubmixVoice, 1, nSampleRate, 0, 0, nullptr, &effectChain))) {
		SAFE_RELEASE(engine.pXAudio2);
		SAFE_RELEASE(engine.pReverbEffect);
		return hr;
	}

	XAUDIO2FX_REVERB_PARAMETERS native;
	ReverbConvertI3DL2ToNative(&g_PRESET_PARAMS[0], &native);
	engine.pSubmixVoice->SetEffectParameters(0, &native, sizeof(native));


	X3DAudioInitialize(dwChannelMask, X3DAUDIO_SPEED_OF_SOUND, engine.x3DInstance);


	engine.fListenerAngle    = 0;
	engine.fUseListenerCone  = TRUE;
	engine.fUseInnerRadius   = TRUE;
	engine.fUseRedirectToLFE = ((dwChannelMask & SPEAKER_LOW_FREQUENCY) != 0);

	engine.listener.Position.x = 0.0f;
	engine.listener.Position.y = 0.0f;
	engine.listener.Position.z = 0.0f;

	engine.listener.OrientFront.x =
	engine.listener.OrientFront.y =
	engine.listener.OrientTop.x   =
	engine.listener.OrientTop.z   = 0.f;

	engine.listener.OrientFront.z =
	engine.listener.OrientTop.y   = 1.f;

	if (engine.fUseListenerCone) {
		engine.listener.pCone = (X3DAUDIO_CONE*)& Listener_DirectionalCone;
	}
	else {
		engine.listener.pCone = nullptr;
	}

	return S_OK;
}


HRESULT GachanAudioEngine::SetReverb(int nReverb)
{
	if (nReverb < 0 || nReverb >= NUM_PRESETS) {
		return E_FAIL;
	}

	if (engine.pSubmixVoice) {
		XAUDIO2FX_REVERB_PARAMETERS native;
		ReverbConvertI3DL2ToNative(&g_PRESET_PARAMS[nReverb], &native);
		engine.pSubmixVoice->SetEffectParameters(0, &native, sizeof(native));
	}

	return S_OK;
}

VOID GachanAudioEngine::PauseAudio(bool resume)
{
	if (resume) {
		engine.pXAudio2->StartEngine();
	}
	else {
		engine.pXAudio2->StopEngine();
	}
}


VOID GachanAudioEngine::Release()
{
	engine.pXAudio2->StopEngine();

	if (engine.pSubmixVoice) {
		engine.pSubmixVoice->DestroyVoice();
		engine.pSubmixVoice = nullptr;
	}

	if (engine.pMasteringVoice) {
		engine.pMasteringVoice->DestroyVoice();
		engine.pMasteringVoice = nullptr;
	}

	SAFE_RELEASE(engine.pXAudio2);
	SAFE_RELEASE(engine.pReverbEffect);

	if (engine.format) {
		free(engine.format);
		engine.format = NULL;
	}
	if (engine.format3D) {
		free(engine.format3D);
		engine.format3D = NULL;
	}


	CoUninitialize();
}


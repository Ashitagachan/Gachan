//
// GachanAudioWIN10Engine.h ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#ifndef __DXAUDIOWIN10ENGINE_H__
#define __DXAUDIOWIN10ENGINE_H__



#include <xaudio2.h>
#include <xaudio2fx.h>
#include <x3daudio.h>
#pragma comment(lib,"xaudio2.lib")

#define AUDIO3DINPUTCHANNELS 1  
#define OUTPUTCHANNELS       8 

#define NUM_PRESETS          30


struct XMFLOAT3
{
	float x;
	float y;
	float z;
};
class GachanAudioEngine
{
public:
	IXAudio2* pXAudio2;
	IXAudio2MasteringVoice* pMasteringVoice;
	IXAudio2SubmixVoice*    pSubmixVoice;
	IUnknown*               pReverbEffect;

	WAVEFORMATEX* format3D;//mono
	WAVEFORMATEX* format;//stereo

	WAVEFORMATEX* format3Duser;//mono ユーザ用
	WAVEFORMATEX* formatuser;//stereo ユーザ用

	X3DAUDIO_HANDLE x3DInstance;
	int nFrameToApply3DAudio;

	DWORD dwChannelMask;
	UINT32 nChannels;

	X3DAUDIO_LISTENER listener;

	float fListenerAngle;
	bool  fUseListenerCone;
	bool  fUseInnerRadius;
	bool  fUseRedirectToLFE;

	static GachanAudioEngine* GetEngine();

	HRESULT Create();
	VOID Release();

	HRESULT SetReverb(int nReverb);
	VOID PauseAudio(bool resume);
};









#endif
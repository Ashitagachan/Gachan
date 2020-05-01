//
// GachanAudio.h ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANAUDIO_H__
#define __GACHANAUDIO_H__


#include "GachanMath.h"
#include "GachanMathVector.h"


//のちにユーザGachanAudioBufferなどを解放するので、
//のちにユーザGachan3DObjectを解放した時と同じ形をとる
//ユーザに、Create()とRelease()を任せる形

//------------------------------------------------------------------------
//注意：Audio***Playerを作る前に、AudioBufferを作ること(フォーマットを取ってるので)
//------------------------------------------------------------------------
    
    
    
//BUFFER 3DMONO
class GachanAudio3DBuffer
{
public:
    void *buffer;//コンストラクタでNULLクリアしてない
    
    void Create(const char* filename);//MONO
    void Release();
};
    
//BUFFER STEREO
class GachanAudioBuffer
{
public:
    void *buffer;//コンストラクタでNULLクリアしてない
        
    void Create(const char* filename);//STEREO
    void Release();
};

//最初はBufferや、GameObjectと同じように、 GachanGameAudioで数の上限があるテーブルで管理される上限がある
//（あんまり意味ないけど、わかりやすいように）
//が、上記と同じように、のちにユーザに解放する
    
//OBJECT 3DMONO
class GachanAudio3DPlayer
{
public:
    void *player;//コンストラクタでNULLクリアしてない
    bool used;
    
    void Create();
    void Release();
    
    void SetBuffer(GachanAudio3DBuffer* buffer, bool loop = false);
    void SetVolume(Val volume);
    void SetPosition(Vec pos);
    void Play();
	void Stop();
};
    
//OBJECT STEREO
class GachanAudioPlayer
{
public:
    void *player;//コンストラクタでNULLクリアしてない
    bool used;

    void Create();
    void Release();
    
    void SetBuffer(GachanAudioBuffer* buffer, bool loop = false);
    void SetVolume(Val volume);
    void Play();
    void Stop();
};

    
    
    

class GachanAudio
{
public:
    static void Create();
    static void Release();
    
    static void SetListener(Vec pos, Vec front, Vec up);
};



#endif

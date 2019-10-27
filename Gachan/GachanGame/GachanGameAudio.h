//
// GachanGameAudio.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANGAMEAUDIO_H__
#define __GACHANGAMEAUDIO_H__

#include "GachanAudio.h"

//3D MONO
class GachanGameAudio3D
{
public:
    //static
    const static int PlayerNum = 128;//上限
    static void SetPlayerNum(int num);
    static void CreatePlayer(int until = -1);
    static void ReleasePlayer();
    
    static int  GetPlayerIndex();
    static void FreePlayerIndex(int index);
    
    int playerindex;

    bool GetPlayer();//今まで取得できなくて、取得できたときにtrue
    bool HavePlayer();
    void FreePlayer();

    
    enum BUFFER {
        EXPLOSION00,
        EXPLOSION01,
        MOVE00,
        MOVE01,
        
        NUM
    };
    
    void Clear();
    void SetBuffer(BUFFER buf, bool loop = false);
    void SetVolume(Val volume);
    void SetPosition(Vec pos);
    void Play();
    void Stop();

};

//STEREO
class GachanGameAudio
{
public:
    //static
    const static int PlayerNum = 128;//上限
    static void SetPlayerNum(int num);
    static void CreatePlayer(int until = -1);
    static void ReleasePlayer();
    
    static int  GetPlayerIndex();
    static void FreePlayerIndex(int index);
    

    int playerindex;
    
    bool GetPlayer();
    bool HavePlayer();
    void FreePlayer();

    enum BUFFER {
        MUSIC00,
        MUSIC01,
        NUM
    };

    void Clear();
    void SetBuffer(BUFFER buf, bool loop = false);
    void SetVolume(Val volume);
    void Play();
    void Stop();
};



#endif

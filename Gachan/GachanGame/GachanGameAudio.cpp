//
// GachanGameAudio.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "GachanGame.h"
#include "GachanGameAudio.h"
#include "Gachan3DCamera.h"

static const char* filename3D[GachanGameAudio3D::BUFFER::NUM] =
{
    "Sound3DExplosion00.wav",
    "Sound3DExplosion01.wav",
    "Sound3DMove00.wav",
    "Sound3DMove01.wav",
};
static const char* filename[GachanGameAudio::BUFFER::NUM] =
{
    "Music00.wav",
    "Music01.wav",
};
static GachanAudio3DBuffer audio3Dbuffer[GachanGameAudio3D::BUFFER::NUM] = {0,};
static int                 audio3DPlayerNumMax = GachanGameAudio3D::PlayerNum;
static GachanAudio3DPlayer audio3Dplayer[GachanGameAudio3D::PlayerNum] = {0,};

static GachanAudioBuffer   audiobuffer[GachanGameAudio::BUFFER::NUM] = {0,};
static int                 audioPlayerNumMax = GachanGameAudio::PlayerNum;
static GachanAudioPlayer   audioplayer[GachanGameAudio::PlayerNum] = {0,};


void GachanGameAudioCreate()
{
    
    for (int i = 0; i < GachanGameAudio3D::BUFFER::NUM; i++) {
        if (audio3Dbuffer[i].buffer == NULL) {
            audio3Dbuffer[i].Create(filename3D[i]);
        }
    }
    for (int i = 0; i < GachanGameAudio::BUFFER::NUM; i++) {
        if (audiobuffer[i].buffer == NULL) {
            audiobuffer[i].Create(filename[i]);
        }
    }
    
    GachanGameAudio3D::SetPlayerNum(32);//プレイヤーの上限をセット
    GachanGameAudio  ::SetPlayerNum(32);//プレイヤーの上限をセット
    
    GachanGameAudio3D::CreatePlayer();//プレイヤーを作り置きしておく
    GachanGameAudio  ::CreatePlayer();//プレイヤーを作り置きしておく
}
void GachanGameAudioRelease()
{
	GachanGameAudio3D::ReleasePlayer();
	GachanGameAudio::ReleasePlayer();

	//bufferは、playerの後にリリースすべし。でないとアクセス違反が起こる
	for (int i = 0; i < GachanGameAudio3D::BUFFER::NUM; i++) {
        if (audio3Dbuffer[i].buffer) {
            audio3Dbuffer[i].Release();
        }
    }
    for (int i = 0; i < GachanGameAudio::BUFFER::NUM; i++) {
        if (audiobuffer[i].buffer) {
            audiobuffer[i].Release();
        }
    }
}

void GachanGameAudioUpdate()
{
    //update listener
    GachanAudio::SetListener(Gachan3DCamera::position, Gachan3DCamera::front, Gachan3DCamera::up);
}



//---------------------
//GachanGameAudio3D
//---------------------


//static
void GachanGameAudio3D::SetPlayerNum(int num)
{
    if (num <= GachanGameAudio3D::PlayerNum) {
        audio3DPlayerNumMax = num;
    }
    else {
        GACHANGAMESTOP;
    }
}
void GachanGameAudio3D::CreatePlayer(int until)
{
    if (GachanGameAudio3D::PlayerNum <= until) {
        while (1) {}
    }
    if (until < 0) {
        until = audio3DPlayerNumMax;
    }
    for (int i = 0; i < until; i++) {
        if (audio3Dplayer[i].player == NULL) {
            audio3Dplayer[i].Create();
        }
    }
}
void GachanGameAudio3D::ReleasePlayer()
{
    for (int i = 0; i < GachanGameAudio3D::PlayerNum; i++) {
        if (audio3Dplayer[i].player) {
            audio3Dplayer[i].Release();
        }
    }
}
int GachanGameAudio3D::GetPlayerIndex()
{
    for (int i = 0; i < audio3DPlayerNumMax; i++) {
        if (audio3Dplayer[i].player && audio3Dplayer[i].used == false) {
            audio3Dplayer[i].used = true;
            return i;
        }
        else if (audio3Dplayer[i].player == NULL) {
            audio3Dplayer[i].Create();
            audio3Dplayer[i].used = true;
            return i;
        }
    }
    return -1;
}
void GachanGameAudio3D::FreePlayerIndex(int index)
{
    if (index < 0 || GachanGameAudio3D::PlayerNum <= index) {
        return;
    }
    if (audio3Dplayer[index].player) {
        audio3Dplayer[index].Stop();
    }
    audio3Dplayer[index].used = false;
}






bool GachanGameAudio3D::GetPlayer()
{
    if (playerindex < 0) {
        playerindex = GachanGameAudio3D::GetPlayerIndex();
        return true;
    }
    return false;
}
bool GachanGameAudio3D::HavePlayer()
{
    return (playerindex >= 0);
}
void GachanGameAudio3D::FreePlayer()
{
    GachanGameAudio3D::FreePlayerIndex(playerindex);
    playerindex = -1;
}

void GachanGameAudio3D::Clear()
{
    playerindex = -1;
}
void GachanGameAudio3D::SetBuffer(BUFFER bufferindex, bool loop)
{
    if (playerindex < 0) {return;}
    
    GachanAudio3DPlayer* player = &audio3Dplayer[playerindex];
    GachanAudio3DBuffer* buffer = &audio3Dbuffer[bufferindex];
    if (player && player->player && buffer && buffer->buffer) {
        player->SetBuffer(buffer, loop);
    }
}
void GachanGameAudio3D::SetVolume(Val volume)
{
    if (playerindex < 0) {return;}

    GachanAudio3DPlayer* player = &audio3Dplayer[playerindex];
    if (player && player->player) {
        player->SetVolume(volume);
    }
}
void GachanGameAudio3D::SetPosition(Vec pos)
{
    if (playerindex < 0) {return;}

    GachanAudio3DPlayer* player = &audio3Dplayer[playerindex];
    if (player && player->player) {
        player->SetPosition(pos);
    }
}
void GachanGameAudio3D::Play()
{
    if (playerindex < 0) {return;}

    GachanAudio3DPlayer* player = &audio3Dplayer[playerindex];
    if (player && player->player) {
        player->Play();
    }
}
void GachanGameAudio3D::Stop()
{
    if (playerindex < 0) {return;}

    GachanAudio3DPlayer* player = &audio3Dplayer[playerindex];
    if (player && player->player) {
        player->Stop();
    }
}







//---------------------
//GachanGameAudio
//---------------------

//static
void GachanGameAudio::SetPlayerNum(int num)
{
    if (num <= GachanGameAudio::PlayerNum) {
        audioPlayerNumMax = num;
    }
    else {
        GACHANGAMESTOP;
    }
}
void GachanGameAudio::CreatePlayer(int until)
{
    if (GachanGameAudio::PlayerNum <= until) {
        while (1) {}
    }
    if (until < 0) {
        until = audioPlayerNumMax;
    }
    for (int i = 0; i < until; i++) {
        if (audioplayer[i].player == NULL) {
            audioplayer[i].Create();
        }
    }
}
void GachanGameAudio::ReleasePlayer()
{
    for (int i = 0; i < GachanGameAudio::PlayerNum; i++) {
        if (audioplayer[i].player) {
            audioplayer[i].Release();
        }
    }
}
int GachanGameAudio::GetPlayerIndex()
{
    for (int i = 0; i < audioPlayerNumMax; i++) {
        if (audioplayer[i].player && audioplayer[i].used == false) {
            audioplayer[i].used = true;
            return i;
        }
        else if (audioplayer[i].player == NULL) {
            audioplayer[i].Create();
            audioplayer[i].used = true;
            return i;
        }
    }
    return -1;
}
void GachanGameAudio::FreePlayerIndex(int index)
{
    if (index < 0 || GachanGameAudio::PlayerNum <= index) {
        return;
    }
    if (audioplayer[index].player) {
        audioplayer[index].Stop();
    }
    audioplayer[index].used = false;
}





bool GachanGameAudio::GetPlayer()
{
    if (playerindex < 0) {
        playerindex = GachanGameAudio::GetPlayerIndex();
    }
    return (playerindex >= 0);
}
bool GachanGameAudio::HavePlayer()
{
    return (playerindex >= 0);
}
void GachanGameAudio::FreePlayer()
{
    GachanGameAudio::FreePlayerIndex(playerindex);
    playerindex = -1;
}

void GachanGameAudio::Clear()
{
    playerindex = -1;
}
void GachanGameAudio::SetBuffer(BUFFER bufferindex, bool loop)
{
    if (playerindex < 0) {return;}

    GachanAudioPlayer* player = &audioplayer[playerindex];
    GachanAudioBuffer* buffer = &audiobuffer[bufferindex];
    if (player && player->player && buffer && buffer->buffer) {
        player->SetBuffer(buffer, loop);
    }
}
void GachanGameAudio::SetVolume(Val volume)
{
    if (playerindex < 0) {return;}

    GachanAudioPlayer* player = &audioplayer[playerindex];
    if (player && player->player) {
        player->SetVolume(volume);
    }
}
void GachanGameAudio::Play()
{
    if (playerindex < 0) {return;}

    GachanAudioPlayer* player = &audioplayer[playerindex];
    if (player && player->player) {
        player->Play();
    }
}
void GachanGameAudio::Stop()
{
    if (playerindex < 0) {return;}

    GachanAudioPlayer* player = &audioplayer[playerindex];
    if (player && player->player) {
        player->Stop();
    }
}






















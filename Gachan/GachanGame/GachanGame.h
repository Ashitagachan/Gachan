//
// GachanGame.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANGAME_H__
#define __GACHANGAME_H__

#include "GachanMath.h"
#include "GachanMathVector.h"
#include "GachanMathMatrix.h"

class GachanGame
{
    static void LogSub(const char* str);

public:

    //ログの出力 (注意:u8はつけない not require u8)
    static void Log(const char* format, ...);

    
    enum COLOR {
        WHITE,      //しろ
        LIGHTGLAY,  //あかるいはいいろ
        GLAY,       //はいいろ
        DARKGLAY,   //くらいはいいろ
        BLACK,      //くろ
        PINK,       //ピンク
        RED,        //あかいろ
        ORANGE,     //オレンジいろ
        YELLOW,     //きいろ
        GREEN,      //みどりいろ
        CYAN,       //みずいろ
        BLUE,       //あお
        MAGENTA,    //むらさきいろ
        
        NUM
    };
    static Vec GetColor(COLOR color);

    //バックグラウンドの色をセット Set background color
    static void SetBackgroundColor(COLOR color);
    static void SetBackgroundColor(Vec color);
    static void SetBackgroundColor(Val r, Val g, Val b);
    
};




#include "GachanGameCamera.h"
#include "GachanGameObject.h"
#include "GachanGameLight.h"
#include "GachanGameKeyboard.h"
#include "GachanGameAudio.h"
#include "GachanGameController.h"
#include "GachanGameInverseKinematics.h"
#include "GachanGameMemory.h"
#include "GachanGameTask.h"

#ifndef GACHANGAMESTOP
#define GACHANGAMESTOP  do{}while(1)
#endif




#endif







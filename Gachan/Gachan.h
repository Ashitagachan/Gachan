//
// Gachan.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHAN_H__
#define __GACHAN_H__



#include "GachanMath.h"
#include "Gachan3D.h"
#include "GachanGame.h"


#if WINDOWS
#pragma warning( disable : 4305 )//for VS2017 ['double' から 'Val' へ切り詰めます。]
#pragma warning( disable : 4244 )//for VS2017 ['引数': 'double' から 'Val' への変換です。データが失われる可能性があります。]
#endif

#ifndef DEBUGSTOP
#define DEBUGSTOP  do{}while(1)
#endif



//MAC IOS において、
//フルパス、もしくはGachanのルートパスからFilesパスにする
//Filesがなければファイル名だけ返す
//Filesフォルダも、バンドルべた置も対応
const char* GetFilesPath(const char* fullpath);


void SysLog(const char* format, ...);


class GachanInitialize
{
public:
    enum {
        //-------------
        //DEFAULT OFF
        //-------------
        FLG_TEXT_JP_HIRAKANA = 1<<0,//日本語全角ひらがなカタカナ英数記号
        FLG_TEXT_JP_KANJI1ST = 1<<1,//日本語第一水準漢字
        FLG_TEXT_JP_KANJI2ND = 1<<2,//日本語第二水準漢字(一部)
        FLG_TEXT_JP_ALL = FLG_TEXT_JP_HIRAKANA|FLG_TEXT_JP_KANJI1ST|FLG_TEXT_JP_KANJI2ND,//日本語上記全部
        //FLG_RAYTRACING,
        
        //-------------
        //DEFAULT ON
        //-------------
        FLG_SHADOWMAP        = 1<<3,
    };
    static void Enable(UInt64 flag);
    static void Disable(UInt64 flag);
    static bool IsEnabled(UInt64 flag);

};

class GachanFinalize
{
public:
    int dummy;
};


#endif

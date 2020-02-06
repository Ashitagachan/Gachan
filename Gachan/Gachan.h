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
#include "GachanGame.h"


#if WINDOWS
#pragma warning( disable : 4305 )//for VS2017 ['double' から 'Val' へ切り詰めます。]
#pragma warning( disable : 4244 )//for VS2017 ['引数': 'double' から 'Val' への変換です。データが失われる可能性があります。]
#endif

#ifndef DEBUGSTOP
#define DEBUGSTOP  do{}while(1)
#endif


class GachanInitialize
{
public:
    enum ENABLE {
        TEXT_JP_HIRAKANA,//日本語全角ひらがなカタカナ英数記号
        TEXT_JP_KANJI1ST,//日本語第一水準漢字
        TEXT_JP_KANJI2ND,//日本語第二水準漢字(一部)
        TEXT_JP_ALL,     //日本語上記全部
        //RAYTRACING,
    };
    static void Enable(ENABLE enable);
    
};

class GachanFinalize
{
public:
    int dummy;
};


#endif

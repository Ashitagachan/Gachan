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


#endif

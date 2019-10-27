//
// Gachan3D.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHAN3D_H__
#define __GACHAN3D_H__

#include "GachanMath.h"
#include "GachanMathVector.h"

class Gachan3D
{
public:
    static void Create();
    static void Release();
    
    static Vec BackgroundColor;
    static void SetBackgroundColor(Val r, Val g, Val b);
};

#ifndef GACHAN3DSTOP
#define GACHAN3DSTOP  do{}while(1)
#endif



#endif

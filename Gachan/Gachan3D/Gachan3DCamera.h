//
// Gachan3DCamera.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHAN3DCAMERA_H__
#define __GACHAN3DCAMERA_H__

#include "GachanMathVector.h"

class Gachan3DCamera
{
public:
    static Vec position;
    static Vec up;
    static Vec front;

    static void SetScreen(int width, int height);//will be called from GachanMetalBase or GachanD3D12Base
    static void SetAspectRatio(Val tate, Val yoko);
    static void SetCamera(Vec position, Vec target, Val nearclip, Val farclip, Val angle);
};








#endif







//
// Gachan3DPrimitive.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHAN3DPRIMS_H__
#define __GACHAN3DPRIMS_H__


#include "Gachan3DObject.h"


class Gachan3DPrimitive
{
public:
	static void Create();
	static void Release();

    static void DrawSphere(const Vec* pos, Val rad, float r = 0.0f, float g = 0.0f, float b = 1.0f);
    static void DrawLine(const Vec* pos, const Vec* pos2, float scale, float r = 0.0f, float g = 0.0f, float b = 1.0f);
};






#endif

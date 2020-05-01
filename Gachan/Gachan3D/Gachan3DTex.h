//
// Gachan3DTex.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2020 Ashitagachan
// See LICENSE.txt for licensing information.
//

#ifndef __GACHAN3DTEX_H__
#define __GACHAN3DTEX_H__

#include "GachanMath.h"



class Gachan3DTexture
{
public:
	static bool CreateFromFile(void** tif, Char* fname);
	static bool Release(void* tif);
};











#endif

//
// Gachan3DMatrixStack.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHAN3DMATRIXSTACK_H__
#define __GACHAN3DMATRIXSTACK_H__

#include "GachanMathMatrix.h"

class Gachan3DMatrixStack
{
public:

    static void Push();
    static void Push(const Mat44& mat);
    static void Pop();
    static void Mul(const Mat44& mat);
    static Mat44* Get();
    static void Set(const Mat44& mat);
    static void SetWorld();
    
    static void Create();
};

typedef Gachan3DMatrixStack MatStack;//ショートバージョン Short Version



#endif

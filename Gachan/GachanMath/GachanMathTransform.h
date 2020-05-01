//
// GachanMathTransform.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2020 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANMATHTRANSFORM_H__
#define __GACHANMATHTRANSFORM_H__


#include "GachanMathVector.h"
#include "GachanMathMatrix.h"

    
class GachanMathTransform
{
    typedef GachanMathTransform Trans;
public:

    Vec loc;
    Vec rot;
    Vec scl;
    
    ROTATIONORDER resultRO;
    
    void SetResultRO(ROTATIONORDER rotorder)
    {
        resultRO = rotorder;
    }
    ROTATIONORDER ResultRO()
    {
        return resultRO;
    }
    
    //Quat quat;


    void Clear(void)
    {
        //int size = sizeof(Trans);
        
        resultRO = RO_NONE;
        loc.Clear();
        rot.Clear();
        scl.x = 1.0f;
        scl.y = 1.0f;
        scl.z = 1.0f;
    }
    Mat44 Transform();
    Mat44 TransformTrs();
    Mat44 TransformRot();
    Mat44 TransformScl();
    
    void ConviZiR();
};

typedef GachanMathTransform Trans;
    
    

#endif

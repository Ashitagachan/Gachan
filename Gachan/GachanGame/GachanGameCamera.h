//
// GachanGameCamera.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANGAMECAMERA_H__
#define __GACHANGAMECAMERA_H__

#include "GachanMath.h"
#include "GachanMathVector.h"


//カメラ Camera
class GachanGameCamera
{
public:
    Vec position;
    Vec target;
    Val angle;

    void SetPosition(Vec position);
    void SetPosition(Val x, Val y, Val z);
    Vec  GetPosition();
    void SetTarget(Vec target);
    void SetTarget(Val x, Val y, Val z);
    Vec  GetTarget();
    void SetAngle(Val angle);//たて方向の画角 Angle of view in the vertical direction (radian)
    void SetCamera();
};




#endif

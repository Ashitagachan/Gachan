//
// GachanGameLight.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANGAMELIGHT_H__
#define __GACHANGAMELIGHT_H__

#include "GachanMathVector.h"


//環境光 Ambient Light
class GachanGameLightAmbient
{
public:
    Vec color;

    void SetColor(Vec color);
    void SetColor(Val r, Val g, Val b);
    Vec  GetColor();
    void SetLight();
};

//方向光 Directinal Light
class GachanGameLightDirection
{
public:
    Vec direction;
    Vec color;
    
    void SetDirection(Vec direction);
    void SetDirection(Val x, Val y, Val z);
    Vec  GetDirection();
    void SetColor(Vec color);
    void SetColor(Val r, Val g, Val b);
    Vec  GetColor();
    void SetLight();
};




#endif

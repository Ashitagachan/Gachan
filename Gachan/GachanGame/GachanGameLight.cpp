//
// GachanGameLight.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "GachanGameLight.h"
#include "Gachan3DShader.h"


//GachanGameLight
void GachanGameLightAmbient::SetColor(Val r, Val g, Val b)
{
    color.r = r;
    color.g = g;
    color.b = b;
}

void GachanGameLightAmbient::SetColor(Vec col)
{
    color = col;
}
Vec GachanGameLightAmbient::GetColor()
{
    return color;
}

void GachanGameLightAmbient::SetLight()
{
    Gachan3DShader::SetLightAmbient(color);
}


//GachanGameLightDirectional
void GachanGameLightDirection::SetDirection(Vec dir)
{
    direction = dir;
    direction.SetUnit();
}

void GachanGameLightDirection::SetDirection(Val x, Val y, Val z)
{
    direction.x = x;
    direction.y = y;
    direction.z = z;
    direction.SetUnit();
}
Vec GachanGameLightDirection::GetDirection()
{
    return direction;
}

void GachanGameLightDirection::SetColor(Vec col)
{
    color = col;
}

void GachanGameLightDirection::SetColor(Val r, Val g, Val b)
{
    color.r = r;
    color.g = g;
    color.b = b;
}
Vec GachanGameLightDirection::GetColor()
{
    return color;
}

void GachanGameLightDirection::SetLight()
{
    Gachan3DShader::SetLightDirection(direction, color);
}



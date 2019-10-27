//
// GachanGame.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include <stdio.h>
#include <string.h>
#include <stdarg.h>

#include "Gachan3D.h"
#include "GachanGame.h"
#include "GachanMath.h"


void GachanGameObjectCreate();
void GachanGameObjectRelease();
void GachanGameAudioCreate();
void GachanGameAudioRelease();
void GachanGameAudioUpdate();

void GachanGameControllerCreate();
void GachanGameControllerRelease();
void GachanGameControllerUpdate();

void GachanGameCreate()
{
    GachanMath::Create();
    Gachan3D::Create();
    GachanAudio::Create();
    GachanGameObjectCreate();
    GachanGameAudioCreate();
    GachanGameControllerCreate();
}
void GachanGameRelease()
{
    GachanGameControllerRelease();
    GachanGameObjectRelease();
    GachanGameAudioRelease();
    GachanAudio::Release();
    Gachan3D::Release();
    GachanMath::Release();
}
void GachanGameUpdate()
{
    GachanGameAudioUpdate();
    GachanGameControllerUpdate();
}





void GachanGame::Log(const char* format, ...)
{
    const static int charmax = 512;
    static char buffer[charmax];
    
    va_list ap;
    va_start(ap, format);
    vsprintf(buffer, format, ap);
    va_end(ap);
    
    if (strlen(buffer) >= charmax) {
        //error
        GACHANGAMESTOP;
    }
    
    LogSub(buffer);
}





Vec GachanGame::GetColor(COLOR color)
{
    Vec colortable[COLOR::NUM] = {
        //R      G       B
        {  1.0f,  1.0f,  1.0f },//WHITE,
        { 0.75f, 0.75f, 0.75f },//LIGHTGLAY,
        {  0.5f,  0.5f,  0.5f },//GLAY,
        { 0.25f, 0.25f, 0.25f },//DARKGLAY,
        {  0.0f,  0.0f,  0.0f },//BLACK,
        {  1.0f, 0.75f, 0.75f },//PINK,
        {  1.0f,  0.0f,  0.0f },//RED,
        {  1.0f,  0.5f,  0.0f },//ORANGE,
        {  1.0f,  1.0f,  0.0f },//YELLOW,
        {  0.0f,  1.0f,  0.0f },//GREEN,
        {  0.0f,  1.0f,  1.0f },//CYAN,
        {  0.0f,  0.0f,  1.0f },//BLUE,
        {  1.0f,  0.0f,  1.0f },//MAGENTA,
    };
    return colortable[color];
}


void GachanGame::SetBackgroundColor(Val r, Val g, Val b)
{
    Gachan3D::SetBackgroundColor(r, g, b);
}

void GachanGame::SetBackgroundColor(Vec color)
{
    Gachan3D::SetBackgroundColor(color.r, color.g, color.b);
}

void GachanGame::SetBackgroundColor(COLOR color)
{
    Vec col = GetColor(color);
    SetBackgroundColor(col);
}




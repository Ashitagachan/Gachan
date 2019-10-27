//
// Gachan3D.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "Gachan3D.h"
#include "Gachan3DShader.h"
#include "Gachan3DMatrixStack.h"
#include "Gachan3DText.h"

void Gachan3D::Create()
{
    Gachan3DShader::Create();
    Gachan3DMatrixStack::Create();
    Gachan3DText::Create();
}

void Gachan3D::Release()
{
    Gachan3DText::Release();
    Gachan3DShader::Release();    
}

Vec Gachan3D::BackgroundColor = { 0.2f, 0.2f, 0.2f };
void Gachan3D::SetBackgroundColor(Val r, Val g, Val b)
{
    BackgroundColor.r = r;
    BackgroundColor.g = g;
    BackgroundColor.b = b;
}

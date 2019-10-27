//
// Gachan3DText.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHAN3DTEXT_H__
#define __GACHAN3DTEXT_H__


class Gachan3DText
{
public:
    static void Create();
    static void Release();
    
    
    static void SetParameter(Val textsize = 1.0f, Val textinterval = 1.0f, Val textlineinterval = 1.0f);
    static void SetColor(Val r, Val g, Val b, Val a);
    
    static void Draw(const char* utf8char);
    
    static void DrawTest();
};



#endif

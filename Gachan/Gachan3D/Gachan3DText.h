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
    static UInt64 Flag;
public:
    static void Create();
    static void Release();

    enum {
        FLG_JP_HIRAKANA = 1<<0,//日本語全角ひらがなカタカナ英数記号
        FLG_JP_KANJI1ST = 1<<1,//日本語第一水準漢字
        FLG_JP_KANJI2ND = 1<<2,//日本語第二水準漢字(一部)
        FLG_JP_ALL      = FLG_JP_HIRAKANA | FLG_JP_KANJI1ST | FLG_JP_KANJI2ND,
    };
    static void SetFlag(UInt64 flag)
    {
        Flag |= flag;
    }
    static bool IsFlag(UInt64 flag)
    {
        return (Flag & flag)? true : false;
    }

    
    static void SetParameter(Val textsize = 1.0f, Val textinterval = 1.0f, Val textlineinterval = 1.0f);
    static void SetColor(Val r, Val g, Val b, Val a);
    
    static void Draw(const char* utf8char);
    
    static void DrawTest();
};



#endif

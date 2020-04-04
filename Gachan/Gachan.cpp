//
// Gachan.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2020 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"
#include "Gachan3DText.h"


static UInt64 enableflag = GachanInitialize::FLG_SHADOWMAP;//初期値

bool GachanInitialize::IsEnabled(UInt64 f)
{
    return (enableflag & f)? true : false;
}


void GachanInitialize::Enable(UInt64 f)
{
    enableflag |= f;
    
    if (enableflag & GachanInitialize::FLG_TEXT_JP_HIRAKANA) {
            Gachan3DText::SetFlag(Gachan3DText::FLG_JP_HIRAKANA);
    }
    if (enableflag & GachanInitialize::FLG_TEXT_JP_KANJI1ST) {
            Gachan3DText::SetFlag(Gachan3DText::FLG_JP_KANJI1ST);
    }
    if (enableflag & GachanInitialize::FLG_TEXT_JP_KANJI2ND) {
            Gachan3DText::SetFlag(Gachan3DText::FLG_JP_KANJI2ND);
    }
}

void GachanInitialize::Disable(UInt64 f)
{
    enableflag &= ~f;
}




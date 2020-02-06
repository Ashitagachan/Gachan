//
// Gachan.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2020 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"
#include "Gachan3DText.h"

void GachanInitialize::Enable(GachanInitialize::ENABLE enable)
{
    switch (enable) {
        case ENABLE::TEXT_JP_HIRAKANA:
            Gachan3DText::SetFlag(Gachan3DText::FLG_JP_HIRAKANA);
            break;
        case ENABLE::TEXT_JP_KANJI1ST:
            Gachan3DText::SetFlag(Gachan3DText::FLG_JP_KANJI1ST);
            break;
        case ENABLE::TEXT_JP_KANJI2ND:
            Gachan3DText::SetFlag(Gachan3DText::FLG_JP_KANJI2ND);
            break;
        case ENABLE::TEXT_JP_ALL:
            Gachan3DText::SetFlag(Gachan3DText::FLG_JP_ALL);
            break;
    }
}




//
// Gachan.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2020 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include <stdio.h>
#include <string.h>
#include <stdarg.h>

#include "Gachan.h"
#include "Gachan3DText.h"




//MAC IOS において、
//フルパス、もしくはGachanのルートパスからFilesパスにする
//Filesがなければファイル名だけ返す
//Filesフォルダも、バンドルべた置も対応
const char* GetFilesPath(const char* fullpath)
{
    const unsigned char* p = (const unsigned char*)strstr(fullpath, "Files");
    if (p) {
        // BackSlash:0x5C YEN:0xA5  slash:0x2F
        while (*p != 0x5C && *p != 0x2F && *p != 0xA5) {
            p--;
        }
        return (const char*)p + 1;
    }
    else {
        const unsigned char* p = (const unsigned char*)fullpath;
        const unsigned char* slash = NULL;
        while (*p) {
            if (*p == 0x5C ||
                *p == 0xA5 ||
                *p == 0x2F) {        // BackSlash:0x5C YEN:0xA5  slash:0x2F
                slash = p;
            }
            p++;
        }
        if (slash) {
            return (const char*)slash + 1;
        }
        return fullpath;
    }
    return NULL;
}








void SysLogSub(const char* str);

void SysLog(const char* format, ...)
{
    const static int charmax = 1024;
    static char buffer[charmax];
    
    va_list ap;
    va_start(ap, format);
    vsprintf(buffer, format, ap);
    va_end(ap);
    
    if (strlen(buffer) >= charmax) {
        //error
        DEBUGSTOP;
    }
    
    SysLogSub(buffer);
}

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




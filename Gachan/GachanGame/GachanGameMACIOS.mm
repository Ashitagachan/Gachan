//
// GachanGameMACIOS.mm
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "GachanGame.h"

//#include "Foundation/Foundation.h"
#include <stdio.h>


//str (UTF-8)
//XcodeはファイルがUTF-8だと、文字列リテラルもUTF-8のままコンパイルされます。
void GachanGame::LogSub(const char* str)
{
#if 0
    NSString* s = [NSString stringWithUTF8String:str];
    NSLog(@"%@", s);
#else
    printf("%s", str);
#endif
}

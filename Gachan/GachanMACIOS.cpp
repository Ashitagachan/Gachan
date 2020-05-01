//
// GachanMACIOS.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "Gachan.h"

#include <stdio.h>
#include <string.h>


//str (UTF-8)
//XcodeはファイルがUTF-8だと、文字列リテラルもUTF-8のままコンパイルされます。
void SysLogSub(const char* str)
{
#if 0
    NSString* s = [NSString stringWithUTF8String:str];
    NSLog(@"%@", s);
#else
    printf("%s", str);
#endif
}



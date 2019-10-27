//
// GachanGameWIN10.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "GachanGame.h"

#include <windows.h>
#include <stdio.h>


//str (SJIS（日本語の場合）)
//VisualStudioはファイルがUTF-8でも文字列リテラルをSJIS（日本語の場合）に変換します。
void GachanGame::LogSub(const char* str)
{
#if 1
    OutputDebugStringA(str);
#else
	printf("%s", str);
#endif
}







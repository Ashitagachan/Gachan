//
// hinagata.cpp ソースファイル
// UTF-8 CRLF形式
//
// (c) 2018 Toshihisa Saito
// 2018/9/26
//
//

#include <windows.h>
#include <stdio.h>

#include "Gachan.h"




	//str (SJIS（日本語の場合）)
	//VisualStudioはファイルがUTF-8でも文字列リテラルをSJIS（日本語の場合）に変換します。
	void SysLogSub(const char* str)
	{
#if 1
		OutputDebugStringA(str);
#else
		printf("%s", str);
#endif
	}




	//GachanではWIN10の際にRootパス変換に使う。
	//作業環境フルパスから、Gachanルートからのパスに変換する
	const char* GetGachanRootPath(const char* fullpath)
	{
#define ATESTNAME "ATESTNameSpace/"

		const unsigned char* p = (const unsigned char*)strstr(fullpath, ATESTNAME);
		if (p) {
			p += strlen(ATESTNAME);
			return (const char*)p;
		}

#define GACHANNAME "Ashitagachan/Gachan/"

		p = (const unsigned char*)strstr(fullpath, GACHANNAME);
		if (p) {
			p += strlen(GACHANNAME);
			return (const char*)p;
		}
		return fullpath;
	}

	bool GetSystemPath(char* path, int len, const char* fullpath)
	{
		CHAR pathnow[1024];
		::GetModuleFileNameA(NULL, pathnow, 1024);
		char* ptr = strstr(pathnow, "GachanWIN10");
		if (ptr) {
			*ptr = 0;
			const char* gachanpath = GetGachanRootPath(fullpath);
			strcpy_s(path, len, pathnow);
			strcat_s(path, len, gachanpath);
		}
		else {
			return false;
		}
		return true;
	}




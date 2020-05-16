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

	//注意
	//通常ユーザーが出力し使用するファイルパスは
	//Gachanのルートパスからの相対パスに限定し、絶対パスは使用できない。
	//そして、"*Files"フォルダ以下にいれる。
	//(MACIOSの場合はFilesフォルダごとバンドルにいれる。なのでFilesフォルダ名は被ってはいけない)

	void GetGachanPath(const char* &p0, const char* &p1, const char* fullpath)
	{

		//dx環境
		// "*/ATESTNameSpace/STAGE2-2_BeginnersGameProgramming/Texture/TextureFiles/checkdxt5.DDS"
		#define ATESTNAME "ATESTNameSpace/"

		p0 = (const char*)strstr(fullpath, ATESTNAME);
		if (p0) {
			p0 += strlen(ATESTNAME);
			p1 = NULL;
			return;
		}

		//Gachan環境
		//"*/Ashitagachan/Gachan/STAGE2-2_BeginnersGameProgramming/Texture/TextureFiles"
		#define GACHANNAME "Ashitagachan/Gachan/"

		p0 = (const char*)strstr(fullpath, GACHANNAME);
		if (p0) {
			p0 += strlen(GACHANNAME);
			p1 = NULL;
			return;
		}


		//dx環境
		//                    "*/dxgameobject/GachanGameObjectAncientCubeFiles/diffuse.dds"
		//"Gachan/GachanGame/GachanGameObject/GachanGameObjectAncientCubeFiles"
		#define DXGAMEOBJECT "dxgameobject/"
		static const char GACHANGAMEOBJECT[] = "Gachan/GachanGame/GachanGameObject/";

		p1 = (const char*)strstr(fullpath, DXGAMEOBJECT);
		if (p1) {
			p0 = GACHANGAMEOBJECT;
			p1 += strlen(DXGAMEOBJECT);
			return;
		}

		//Gachan環境
		p0 = (const char*)strstr(fullpath, GACHANGAMEOBJECT);
		if (p0) {
			p1 = NULL;
			return;
		}

		//すでにGachanのルートパスになっているもの
		p0 = fullpath;
		p1 = NULL;
	}


	bool GetSystemPath(char* path, int len, const char* fullpath)
	{
		CHAR pathnow[1024];
		::GetModuleFileNameA(NULL, pathnow, 1024);
		char* ptr = strstr(pathnow, "GachanWIN10");
		if (ptr) {
			*ptr = 0;
			const char* p0 = NULL;
			const char* p1 = NULL;

			GetGachanPath(p0, p1, fullpath);

			strcpy_s(path, len, pathnow);
			if (p0) {
				strcat_s(path, len, p0);
			}
			if (p1) {
				strcat_s(path, len, p1);
			}
		}
		else {
			return false;
		}
		return true;
	}




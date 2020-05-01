//
// GachanBundle.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#ifndef __GACHANBUNDLE_H__
#define __GACHANBUNDLE_H__



class GachanBundle
{
    static int BundleIdx;
    const static int BundleMax = 16;
    static const char* BundleStr[BundleMax];
    static void*       BundlePtr[BundleMax];
    
    static void CreateOne();//環境依存->glesbundle.mm
    static void ReleaseOne();//環境依存->glesbundle.mm
public:
    //テクスチャやtsbバイナリ等の、ファイル読み込み時のバンドル（ファイルの在り処などの情報）を管理する。
    //例えば、G01のCreate時にG01全般のBundleIDをPushして、
    //さらにその内部でdxsolaのCreate時にdxsolaのリソースの在り処をPushして、Createが終わったらPopしている。
    //
    //現状iOS/macOSでのみ有効でBundleIDをPushする。
    //Windowsでは現状直パスを使っているので使われていない(存在はしている)。
    
    
    static bool Push(const char* bundlestr);
    static void Pop();
    static const char* GetStr();
    static void* GetPtr();//バンドルの実態 iOS/macOSの場合には (NSBundle*)
};
    

#endif

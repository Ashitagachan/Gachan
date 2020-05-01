//
// GachanBundle.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
//
#include <stdio.h>
#include "GachanBundle.h"


int         GachanBundle::BundleIdx = -1;
const char* GachanBundle::BundleStr[BundleMax];
void*       GachanBundle::BundlePtr[BundleMax];


    
    void GachanBundle::CreateOne()
    {
        //汎用アーカイバ(aparchive.cpp/h)で対応予定
#if 0
        NSString* bundleID = [[NSString alloc] initWithCString:BundleStr[BundleIdx] encoding:NSUTF8StringEncoding];
        NSBundle* bundle = [NSBundle bundleWithIdentifier:bundleID];
        
        NSLog(@"%@", bundle);
        
        BundlePtr[BundleIdx] = (__bridge void*) bundle;
#endif
#if DEBUG
        printf("dx::Bundle::Push %s\n", BundleStr[BundleIdx]);
#endif
    }
    
    void GachanBundle::ReleaseOne()
    {
        //汎用アーカイバ(aparchive.cpp/h)で対応予定
#if 0
        BundlePtr[BundleIdx] = NULL;
#endif
#if DEBUG
        printf("dx::Bundle::Pop\n");
#endif
    }

    
bool GachanBundle::Push(const char* bundlestr)
{	
	if (bundlestr == NULL) {
		return false;
	}

    if (BundleIdx < BundleMax-1) {
        BundleIdx++;
        BundleStr[BundleIdx] = bundlestr;
        CreateOne();
        return true;
    }
    else {
        while (1) {}
    }
    return false;
}
void GachanBundle::Pop()
{
    if (BundleIdx > -1) {
        ReleaseOne();
        BundleIdx--;
    }
}
const char* GachanBundle::GetStr()
{
    if (BundleIdx > -1) {
        return BundleStr[BundleIdx];
    }
    return (char*) 0;
}

void* GachanBundle::GetPtr()
{
    if (BundleIdx > -1) {
        return BundlePtr[BundleIdx];
    }
    return (char*) 0;
}

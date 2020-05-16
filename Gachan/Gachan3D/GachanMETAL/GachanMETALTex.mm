//
// GachanMETALTex.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2020 Ashitagachan
// See LICENSE.txt for licensing information.
//
#import <Metal/Metal.h>
#import <MetalKit/MetalKit.h>

#include "Gachan.h"
#include "GachanBundle.h"
#include "GachanMath.h"
#include "Gachan3DTex.h"
#include "GachanMETALBase.h"
#include "GachanMETALTexDDS.h"
    
bool OS_GetResourcePath_DDS(char* resourcepath, const char* filename)
{
    NSBundle* bundle = nil;
    if (GachanBundle::GetStr()) {
        NSString* bundlepath = [NSString stringWithUTF8String:GachanBundle::GetStr()];
        bundle = [NSBundle bundleWithPath:bundlepath];
    }
    if (bundle == nil) {
        bundle = [NSBundle mainBundle];
    }

    NSString* fn = [[NSString alloc] initWithCString:filename encoding:NSUTF8StringEncoding];
    const char* path = [[bundle pathForResource:fn ofType:@"dds"] UTF8String];
    if (path == NULL) {
        path = [[bundle pathForResource:fn ofType:@"DDS"] UTF8String];
    }
    if (path) {
        strcpy(resourcepath, path);
        return true;
    }
    return false;
}

bool OS_GetResourcePath_PVR(char* resourcepath, const char* filename)
{
    NSBundle* bundle = nil;
    if (GachanBundle::GetStr()) {
        NSString* bundlepath = [NSString stringWithUTF8String:GachanBundle::GetStr()];
        bundle = [NSBundle bundleWithPath:bundlepath];
    }
    if (bundle == nil) {
        bundle = [NSBundle mainBundle];
    }

    NSString* fn = [[NSString alloc] initWithCString:filename encoding:NSUTF8StringEncoding];
    const char* path = [[bundle pathForResource:fn ofType:@"pvr"] UTF8String];
    if (path == NULL) {
        path = [[bundle pathForResource:fn ofType:@"PVR"] UTF8String];
    }
    if (path) {
        strcpy(resourcepath, path);
        return true;
    }
    return false;
}



    
void* CreateTextureColored(int width, int height, unsigned int abgr)
{
    //注意　リトルエンディアンなので、MTLPixelFormatRGBA8Unormを使ってabgr色の順番を入れ替えてもらう。
    
    MTLTextureDescriptor *textureDesc
    = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:MTLPixelFormatRGBA8Unorm//MTLPixelFormatBGRA8Unorm
                                                         width:width
                                                        height:height
                                                     mipmapped:TRUE];
    
    id<MTLDevice> device = [[GachanMetalBase sharedInstance] getDevice];
    
    id<MTLTexture> texture = [device newTextureWithDescriptor:textureDesc];
    
    NSUInteger bytesPerRow = 4 * width;
    MTLRegion region = MTLRegionMake2D(0,0,width,height);
    
    unsigned char* bits = (unsigned char*)malloc(width * height * 4);
    if (bits) {
        unsigned int* ptr = (unsigned int*)bits;
        for (int h = 0; h < height; h++) {
            for (int w = 0; w < width; w++) {
                *ptr = abgr;
                ptr++;
            }
        }
    }
    
    [texture replaceRegion:region mipmapLevel:0 withBytes:bits bytesPerRow:bytesPerRow];
    if (bits) {
        free(bits);
        bits = NULL;
    }
    return (__bridge_retained void*) texture;
}
    



   
void* createtextureMTKLoader(Char* path)
{
    id<MTLDevice> device = [[GachanMetalBase sharedInstance] getDevice];

    //MTKTextureLoaderは非同期読み込みにも対応しているらしい。
    //https://developer.apple.com/documentation/metalkit/mtktextureloader?language=objc
    MTKTextureLoader* textureLoader = [[MTKTextureLoader alloc] initWithDevice:device];
    
    //https://developer.apple.com/documentation/metalkit/mtktextureloader/loading_options?language=objc
    NSDictionary *textureLoaderOptions =
    @{
      MTKTextureLoaderOptionTextureUsage       : @(MTLTextureUsageShaderRead),
      MTKTextureLoaderOptionTextureStorageMode : @(MTLStorageModePrivate),
      //MTKTextureLoaderOptionAllocateMipmaps    : YES,//pvrなら変換時にMIPMAP生成ができる。これを指定するとそれを上書きする。
      //MTKTextureLoaderOptionGenerateMipmaps    : YES
      };
    NSString* strpath = [NSString stringWithUTF8String:path];
    NSURL* url = [NSURL fileURLWithPath:strpath];
    NSError *error;
    id<MTLTexture> texture = [textureLoader newTextureWithContentsOfURL:url
                                                                options:textureLoaderOptions
                                                                  error:&error];
#if DEBUG
    //NSLog(@"%s MIPLVL %d", path, (int)texture.mipmapLevelCount);
#endif
    return (__bridge_retained void*) texture;
}



bool Gachan3DTexture::CreateFromFile(void** ptif, Char* fname)
{
    if (!fname) {
        return false;
    }
    
    const char* p = GetFilesPath(fname);
    char filename[512];
    strcpy(filename, p);
    
    SysLog("TEX:%s\n", filename);

    char fullpath[1024];

//#if !TARGET_IPHONE_SIMULATOR
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wint-to-void-pointer-cast"


    char* dds = strstr(filename, ".dds");
    if (dds == NULL) {
        dds = strstr(filename, ".DDS");
    }
    if (dds) {
        *dds = 0x00;
        if (OS_GetResourcePath_DDS(fullpath, (const char*)filename)) {
            *ptif = (void*) createtextureDDS(fullpath);
            if (*ptif) {
                return true;
            }
        }
#if MAC
#else
        //iOSの場合には同名のpvrバージョンを確認する
        if (OS_GetResourcePath_PVR(fullpath, (const char*)filename)) {
            *ptif = (void*) createtextureMTKLoader(fullpath);
            if (*ptif) {
                return true;
            }
        }
        
        //iOSの場合にはDXT1-5のデコードを試みる
        if (OS_GetResourcePath_DDS(fullpath, (const char*)filename)) {
            *ptif = (void*) createtextureDDS(fullpath, true);//DXT1-5 decode mode == true
            if (*ptif) {
                return true;
            }
        }
#endif
    }
    

    char* pvr = strstr(filename, ".pvr");
    if (pvr == NULL)  {
        pvr = strstr(filename, ".PVR");
    }
    if (pvr) {
        *pvr = 0x00;
        if (OS_GetResourcePath_PVR(fullpath, (const char*)filename)) {
            *ptif = (void*) createtextureMTKLoader(fullpath);
            if (*ptif) {
                return true;
            }
        }
        //同名のddsバージョンを確認する
        if (OS_GetResourcePath_DDS(fullpath, (const char*)filename)) {
            *ptif = (void*) createtextureDDS(fullpath);
            if (*ptif) {
                return true;
            }
#if MAC
#else
            //iOSの場合にはDXT1-5のデコードを試みる
            *ptif = (void*) createtextureDDS(fullpath, true);//DXT1-5 decode mode == true
            if (*ptif) {
                return true;
            }
#endif
        }
    }

    SysLog("TEX:READ ERROR\n");
    
    *ptif = NULL;
#pragma clang diagnostic pop

    return false;
}


bool Gachan3DTexture::Release(void* ptif)
{
    id<MTLTexture> texture = (__bridge_transfer id<MTLTexture>) ptif;
    texture = NULL;
    //NULLクリアは呼び出し元で行っている。
    return true;
}
    
    

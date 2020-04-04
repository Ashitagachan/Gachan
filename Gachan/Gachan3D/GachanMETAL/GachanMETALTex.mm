//
// GachanMETALTex.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2020 Ashitagachan
// See LICENSE.txt for licensing information.
//
#import <Metal/Metal.h>
#import <MetalKit/MetalKit.h>
#include "GachanMETALBase.h"

    
    
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
    






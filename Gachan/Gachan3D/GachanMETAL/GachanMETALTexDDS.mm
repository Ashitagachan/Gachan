//
// GachanMETALTexDDS.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2020 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include <stdio.h>
#include <stdlib.h>

#include "GachanMath.h"
#include "GachanMETALBase.h"
#include "Gachan3DTexDDS.h"
#include "GachanMETALTexDDS.h"



#define DXGI2METAL(dxgiformat, metalformat)  case (dxgiformat): return metalformat;

MTLPixelFormat GetMetalFormat(DXGI_FORMAT dxgiformat)
{
    //配列にしたほうがいい？？
    switch (dxgiformat) {
            
    //128
    DXGI2METAL(DXGI_FORMAT_R32G32B32A32_TYPELESS, MTLPixelFormatRGBA32Uint)
    DXGI2METAL(DXGI_FORMAT_R32G32B32A32_FLOAT,    MTLPixelFormatRGBA32Float)
    DXGI2METAL(DXGI_FORMAT_R32G32B32A32_UINT,     MTLPixelFormatRGBA32Uint)
    DXGI2METAL(DXGI_FORMAT_R32G32B32A32_SINT,     MTLPixelFormatRGBA32Sint)
    //96
    //DXGI2METAL(DXGI_FORMAT_R32G32B32_TYPELESS,
    //DXGI2METAL(DXGI_FORMAT_R32G32B32_FLOAT,
    //DXGI2METAL(DXGI_FORMAT_R32G32B32_UINT,
    //DXGI2METAL(DXGI_FORMAT_R32G32B32_SINT,
    //64
    DXGI2METAL(DXGI_FORMAT_R16G16B16A16_TYPELESS, MTLPixelFormatRGBA16Uint)
    DXGI2METAL(DXGI_FORMAT_R16G16B16A16_FLOAT,    MTLPixelFormatRGBA16Float)
    DXGI2METAL(DXGI_FORMAT_R16G16B16A16_UNORM,    MTLPixelFormatRGBA16Unorm)
    DXGI2METAL(DXGI_FORMAT_R16G16B16A16_UINT,     MTLPixelFormatRGBA16Uint)
    DXGI2METAL(DXGI_FORMAT_R16G16B16A16_SNORM,    MTLPixelFormatRGBA16Snorm)
    DXGI2METAL(DXGI_FORMAT_R16G16B16A16_SINT,     MTLPixelFormatRGBA16Sint)
    DXGI2METAL(DXGI_FORMAT_R32G32_TYPELESS,       MTLPixelFormatRG32Uint)
    DXGI2METAL(DXGI_FORMAT_R32G32_FLOAT,          MTLPixelFormatRG32Float)
    DXGI2METAL(DXGI_FORMAT_R32G32_UINT,           MTLPixelFormatRG32Uint)
    DXGI2METAL(DXGI_FORMAT_R32G32_SINT,           MTLPixelFormatRG32Sint)
    //DXGI2METAL(DXGI_FORMAT_R32G8X24_TYPELESS,
    //DXGI2METAL(DXGI_FORMAT_D32_FLOAT_S8X24_UINT,
    //DXGI2METAL(DXGI_FORMAT_R32_FLOAT_X8X24_TYPELESS,
    //DXGI2METAL(DXGI_FORMAT_X32_TYPELESS_G8X24_UINT,
    //32
    DXGI2METAL(DXGI_FORMAT_R10G10B10A2_TYPELESS,  MTLPixelFormatRGB10A2Uint)
    DXGI2METAL(DXGI_FORMAT_R10G10B10A2_UNORM,     MTLPixelFormatRGB10A2Unorm)
    DXGI2METAL(DXGI_FORMAT_R10G10B10A2_UINT,      MTLPixelFormatRGB10A2Uint)
    DXGI2METAL(DXGI_FORMAT_R11G11B10_FLOAT,       MTLPixelFormatRG11B10Float)
    DXGI2METAL(DXGI_FORMAT_R8G8B8A8_TYPELESS,     MTLPixelFormatRGBA8Uint)
    DXGI2METAL(DXGI_FORMAT_R8G8B8A8_UNORM,        MTLPixelFormatRGBA8Unorm)
    DXGI2METAL(DXGI_FORMAT_R8G8B8A8_UNORM_SRGB,   MTLPixelFormatRGBA8Unorm_sRGB)
    DXGI2METAL(DXGI_FORMAT_R8G8B8A8_UINT,         MTLPixelFormatRGBA8Uint)
    DXGI2METAL(DXGI_FORMAT_R8G8B8A8_SNORM,        MTLPixelFormatRGBA8Snorm)
    DXGI2METAL(DXGI_FORMAT_R8G8B8A8_SINT,         MTLPixelFormatRGBA8Sint)
    DXGI2METAL(DXGI_FORMAT_R16G16_TYPELESS,       MTLPixelFormatRG16Uint)
    DXGI2METAL(DXGI_FORMAT_R16G16_FLOAT,          MTLPixelFormatRG16Float)
    DXGI2METAL(DXGI_FORMAT_R16G16_UNORM,          MTLPixelFormatRG16Unorm)
    DXGI2METAL(DXGI_FORMAT_R16G16_UINT,           MTLPixelFormatRG16Uint)
    DXGI2METAL(DXGI_FORMAT_R16G16_SNORM,          MTLPixelFormatRG16Snorm)
    DXGI2METAL(DXGI_FORMAT_R16G16_SINT,           MTLPixelFormatRG16Sint)
    DXGI2METAL(DXGI_FORMAT_R32_TYPELESS,          MTLPixelFormatR32Uint)
    DXGI2METAL(DXGI_FORMAT_D32_FLOAT,             MTLPixelFormatDepth32Float)
    DXGI2METAL(DXGI_FORMAT_R32_FLOAT,             MTLPixelFormatR32Float)
    DXGI2METAL(DXGI_FORMAT_R32_UINT,              MTLPixelFormatR32Uint)
    DXGI2METAL(DXGI_FORMAT_R32_SINT,              MTLPixelFormatR32Sint)
    //DXGI2METAL(DXGI_FORMAT_R24G8_TYPELESS,
#if MAC
    DXGI2METAL(DXGI_FORMAT_D24_UNORM_S8_UINT,     MTLPixelFormatDepth24Unorm_Stencil8)
#endif
    //DXGI2METAL(DXGI_FORMAT_R24_UNORM_X8_TYPELESS,
    //DXGI2METAL(DXGI_FORMAT_X24_TYPELESS_G8_UINT,
    //16
    DXGI2METAL(DXGI_FORMAT_R8G8_TYPELESS,         MTLPixelFormatRG8Uint)
    DXGI2METAL(DXGI_FORMAT_R8G8_UNORM,            MTLPixelFormatRG8Unorm)
    DXGI2METAL(DXGI_FORMAT_R8G8_UINT,             MTLPixelFormatRG8Uint)
    DXGI2METAL(DXGI_FORMAT_R8G8_SNORM,            MTLPixelFormatRG8Snorm)
    DXGI2METAL(DXGI_FORMAT_R8G8_SINT,             MTLPixelFormatRG8Sint)
    DXGI2METAL(DXGI_FORMAT_R16_TYPELESS,          MTLPixelFormatR16Uint)
    DXGI2METAL(DXGI_FORMAT_R16_FLOAT,             MTLPixelFormatR16Float)
    DXGI2METAL(DXGI_FORMAT_D16_UNORM,             MTLPixelFormatDepth16Unorm)
    DXGI2METAL(DXGI_FORMAT_R16_UNORM,             MTLPixelFormatR16Unorm)
    DXGI2METAL(DXGI_FORMAT_R16_UINT,              MTLPixelFormatR16Uint)
    DXGI2METAL(DXGI_FORMAT_R16_SNORM,             MTLPixelFormatR16Snorm)
    DXGI2METAL(DXGI_FORMAT_R16_SINT,              MTLPixelFormatR16Sint)
    //8
    DXGI2METAL(DXGI_FORMAT_R8_TYPELESS,           MTLPixelFormatR8Uint)
    DXGI2METAL(DXGI_FORMAT_R8_UNORM,              MTLPixelFormatR8Unorm)
    DXGI2METAL(DXGI_FORMAT_R8_UINT,               MTLPixelFormatR8Uint)
    DXGI2METAL(DXGI_FORMAT_R8_SNORM,              MTLPixelFormatR8Snorm)
    DXGI2METAL(DXGI_FORMAT_R8_SINT,               MTLPixelFormatR8Sint)
    DXGI2METAL(DXGI_FORMAT_A8_UNORM,              MTLPixelFormatA8Unorm)
    //1
    //DXGI2METAL(DXGI_FORMAT_R1_UNORM,
    //32
    //DXGI2METAL(DXGI_FORMAT_R9G9B9E5_SHAREDEXP,
    //DXGI2METAL(DXGI_FORMAT_R8G8_B8G8_UNORM,
    //DXGI2METAL(DXGI_FORMAT_G8R8_G8B8_UNORM,
#if MAC
    DXGI2METAL(DXGI_FORMAT_BC1_TYPELESS,          MTLPixelFormatBC1_RGBA)
    DXGI2METAL(DXGI_FORMAT_BC1_UNORM,             MTLPixelFormatBC1_RGBA)
    DXGI2METAL(DXGI_FORMAT_BC1_UNORM_SRGB,        MTLPixelFormatBC1_RGBA_sRGB)
    DXGI2METAL(DXGI_FORMAT_BC2_TYPELESS,          MTLPixelFormatBC2_RGBA)
    DXGI2METAL(DXGI_FORMAT_BC2_UNORM,             MTLPixelFormatBC2_RGBA)
    DXGI2METAL(DXGI_FORMAT_BC2_UNORM_SRGB,        MTLPixelFormatBC2_RGBA_sRGB)
    DXGI2METAL(DXGI_FORMAT_BC3_TYPELESS,          MTLPixelFormatBC3_RGBA)
    DXGI2METAL(DXGI_FORMAT_BC3_UNORM,             MTLPixelFormatBC3_RGBA)
    DXGI2METAL(DXGI_FORMAT_BC3_UNORM_SRGB,        MTLPixelFormatBC3_RGBA_sRGB)
    DXGI2METAL(DXGI_FORMAT_BC4_TYPELESS,          MTLPixelFormatBC4_RUnorm)
    DXGI2METAL(DXGI_FORMAT_BC4_UNORM,             MTLPixelFormatBC4_RUnorm)
    DXGI2METAL(DXGI_FORMAT_BC4_SNORM,             MTLPixelFormatBC4_RSnorm)
    DXGI2METAL(DXGI_FORMAT_BC5_TYPELESS,          MTLPixelFormatBC5_RGUnorm)
    DXGI2METAL(DXGI_FORMAT_BC5_UNORM,             MTLPixelFormatBC5_RGUnorm)
    DXGI2METAL(DXGI_FORMAT_BC5_SNORM,             MTLPixelFormatBC5_RGSnorm)
#endif
            
#if MAC
#else
    //ONLY FOR IOS
    DXGI2METAL(DXGI_FORMAT_B5G6R5_UNORM,          MTLPixelFormatB5G6R5Unorm)
    DXGI2METAL(DXGI_FORMAT_B5G5R5A1_UNORM,        MTLPixelFormatBGR5A1Unorm)
#endif
    DXGI2METAL(DXGI_FORMAT_B8G8R8A8_UNORM,        MTLPixelFormatBGRA8Unorm)
    //DXGI2METAL(DXGI_FORMAT_B8G8R8X8_UNORM,
    DXGI2METAL(DXGI_FORMAT_R10G10B10_XR_BIAS_A2_UNORM, MTLPixelFormatRGB10A2Unorm)
    DXGI2METAL(DXGI_FORMAT_B8G8R8A8_TYPELESS,     MTLPixelFormatBGRA8Unorm)
    DXGI2METAL(DXGI_FORMAT_B8G8R8A8_UNORM_SRGB,   MTLPixelFormatBGRA8Unorm_sRGB)
    //DXGI2METAL(DXGI_FORMAT_B8G8R8X8_TYPELESS,
    //DXGI2METAL(DXGI_FORMAT_B8G8R8X8_UNORM_SRGB,
#if MAC
    DXGI2METAL(DXGI_FORMAT_BC6H_TYPELESS,         MTLPixelFormatBC6H_RGBUfloat)
    DXGI2METAL(DXGI_FORMAT_BC6H_UF16,             MTLPixelFormatBC6H_RGBUfloat)
    DXGI2METAL(DXGI_FORMAT_BC6H_SF16,             MTLPixelFormatBC6H_RGBFloat)
    DXGI2METAL(DXGI_FORMAT_BC7_TYPELESS,          MTLPixelFormatBC7_RGBAUnorm)
    DXGI2METAL(DXGI_FORMAT_BC7_UNORM,             MTLPixelFormatBC7_RGBAUnorm)
    DXGI2METAL(DXGI_FORMAT_BC7_UNORM_SRGB,        MTLPixelFormatBC7_RGBAUnorm_sRGB)
#endif
    //DXGI2METAL(DXGI_FORMAT_AYUV,
    //DXGI2METAL(DXGI_FORMAT_Y410,
    //DXGI2METAL(DXGI_FORMAT_Y416,
    //DXGI2METAL(DXGI_FORMAT_NV12,
    //DXGI2METAL(DXGI_FORMAT_P010,
    //DXGI2METAL(DXGI_FORMAT_P016,
    //DXGI2METAL(DXGI_FORMAT_420_OPAQUE,
    //DXGI2METAL(DXGI_FORMAT_YUY2,
    //DXGI2METAL(DXGI_FORMAT_Y210,
    //DXGI2METAL(DXGI_FORMAT_Y216,
    //DXGI2METAL(DXGI_FORMAT_NV11,
    //DXGI2METAL(DXGI_FORMAT_AI44,
    //DXGI2METAL(DXGI_FORMAT_IA44,
    //DXGI2METAL(DXGI_FORMAT_P8,
    //DXGI2METAL(DXGI_FORMAT_A8P8,
    //DXGI2METAL(DXGI_FORMAT_B4G4R4A4_UNORM,

    //DXGI2METAL(DXGI_FORMAT_P208,
    //DXGI2METAL(DXGI_FORMAT_V208,
    //DXGI2METAL(DXGI_FORMAT_V408,
        
    default:
        return MTLPixelFormatInvalid;
    }
}


void* createtextureDDS(char* path, bool dxtdecode)//dxtdecode:DXT1-5 decode mode
{
    if (path == NULL) {
        return NULL;
    }
    
    //NSLog(@"%s", path);
    
    unsigned char* buf = NULL;
    unsigned int bufsize = 0;

    FILE* fp = fopen(path, "rb");
    if (fp) {
        fseek(fp, 0, SEEK_END);
        bufsize = (unsigned int)ftell(fp);

        buf = (unsigned char*)malloc(bufsize);
        if (buf == NULL) {
            return NULL;
        }
        fseek(fp, 0, SEEK_SET);
        fread(buf, bufsize, 1, fp);
        fclose(fp);
        fp = NULL;
    }
    else {
        return NULL;
    }
    

    DDS dds;
    
    if (dds.SetBuffer(buf, bufsize)) {
        
        UChar* decodebuf = NULL;
        
        if (dxtdecode) {
            if (dds.GetDecodeBC()) {
                UInt size = dds.GetDecodeBCSize();
                decodebuf = (UChar*) malloc(size);
                dds.DecodeBC(decodebuf, size);
            }
#if 1
            else {
                free(buf);
                return NULL;
            }
#endif
        }

        MTLPixelFormat metalformat = GetMetalFormat(dds.dxgiformat);
        if (metalformat == MTLPixelFormatInvalid) {
            if (decodebuf) {
                free(decodebuf);
            }
            free(buf);
            return NULL;
        }
        
        DDS::LEVEL level[dds.arraysize * dds.mipcount];
        if (dds.GetLevels(level)) {

            MTLTextureDescriptor *textureDesc
                = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:metalformat
                                                                     width:dds.width
                                                                    height:dds.height
                                                                 mipmapped:(dds.mipcount > 1)];
         
            id<MTLDevice> device = [[GachanMetalBase sharedInstance] getDevice];
            id<MTLTexture> texture = [device newTextureWithDescriptor:textureDesc];

            UInt levelWidth       = dds.width;
            UInt levelHeight      = dds.height;
            UInt levelBytesPerRow = dds.GetBytes(dds.width, 1);
        
        
            //for (int array = 0; array < dds.arraysize; array++) {//cubemap非対応
                for (int mip = 0; mip < dds.mipcount; mip++) {
                    MTLRegion region = MTLRegionMake2D(0, 0, levelWidth, levelHeight);
                    
                    //NSLog(@"level %d w %d h %d bytesperrow %d", mip, levelWidth, levelHeight, levelBytesPerRow);
                    
                    [texture replaceRegion:region
                               mipmapLevel:mip
                                 withBytes:level[mip].ptr
                               bytesPerRow:levelBytesPerRow];

                    levelWidth  = MAX(levelWidth  / 2, 1);
                    levelHeight = MAX(levelHeight / 2, 1);
                    
                    int getpitch = dds.GetBytes(levelWidth, 1);
                    levelBytesPerRow = getpitch;
                    //levelBytesPerRow = (dds.GetPitch(dds.width, 1) > 0) ? MAX(getpitch,             16) : 0;
                    //levelBytesPerRow = (levelBytesPerRow > 0) ?           MAX(levelBytesPerRow / 2, 16) : 0;
                }
            //}
            if (decodebuf) {
                free(decodebuf);
            }
            free(buf);
            return (__bridge_retained void*) texture;
        }
        if (decodebuf) {
            free(decodebuf);
        }
    }
    free(buf);
    return NULL;
}



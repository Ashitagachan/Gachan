//
// Gachan.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"
#include "Gachan3DTexDDS.h"


#ifndef MAKEFOURCC
#define MAKEFOURCC(ch0, ch1, ch2, ch3)                              \
                ((UInt32)(UInt8)(ch0) | ((UInt32)(UInt8)(ch1) << 8) |       \
                ((UInt32)(UInt8)(ch2) << 16) | ((UInt32)(UInt8)(ch3) << 24 ))
#endif

//const UInt32 DDS_MAGIC = 0x20534444; // "DDS "



#define ISBITMASK( r,g,b,a ) ( ddpf.RBitMask == r && ddpf.GBitMask == g && ddpf.BBitMask == b && ddpf.ABitMask == a )

DXGI_FORMAT GetDXGIFormat( const DDS_PIXELFORMAT ddpf )
{
    if (ddpf.flags & DDS_RGB)
    {
        switch (ddpf.RGBBitCount)
        {
        case 32:
            if (ISBITMASK(0x000000ff,0x0000ff00,0x00ff0000,0xff000000))
            {
                return DXGI_FORMAT_R8G8B8A8_UNORM;
            }

            if (ISBITMASK(0x00ff0000,0x0000ff00,0x000000ff,0xff000000))
            {
                return DXGI_FORMAT_B8G8R8A8_UNORM;
            }

            if (ISBITMASK(0x00ff0000,0x0000ff00,0x000000ff,0x00000000))
            {
                return DXGI_FORMAT_B8G8R8X8_UNORM;
            }

            // No DXGI format maps to ISBITMASK(0x000000ff,0x0000ff00,0x00ff0000,0x00000000) aka D3DFMT_X8B8G8R8

            // Note that many common DDS reader/writers (including D3DX) swap the
            // the RED/BLUE masks for 10:10:10:2 formats. We assume
            // below that the 'backwards' header mask is being used since it is most
            // likely written by D3DX. The more robust solution is to use the 'DX10'
            // header extension and specify the DXGI_FORMAT_R10G10B10A2_UNORM format directly

            // For 'correct' writers, this should be 0x000003ff,0x000ffc00,0x3ff00000 for RGB data
            if (ISBITMASK(0x3ff00000,0x000ffc00,0x000003ff,0xc0000000))
            {
                return DXGI_FORMAT_R10G10B10A2_UNORM;
            }

            // No DXGI format maps to ISBITMASK(0x000003ff,0x000ffc00,0x3ff00000,0xc0000000) aka D3DFMT_A2R10G10B10

            if (ISBITMASK(0x0000ffff,0xffff0000,0x00000000,0x00000000))
            {
                return DXGI_FORMAT_R16G16_UNORM;
            }

            if (ISBITMASK(0xffffffff,0x00000000,0x00000000,0x00000000))
            {
                // Only 32-bit color channel format in D3D9 was R32F
                return DXGI_FORMAT_R32_FLOAT; // D3DX writes this out as a FourCC of 114
            }
            break;

        case 24:
            // No 24bpp DXGI formats aka D3DFMT_R8G8B8
            break;

        case 16:
            if (ISBITMASK(0x7c00,0x03e0,0x001f,0x8000))
            {
                return DXGI_FORMAT_B5G5R5A1_UNORM;
            }
            if (ISBITMASK(0xf800,0x07e0,0x001f,0x0000))
            {
                return DXGI_FORMAT_B5G6R5_UNORM;
            }

            // No DXGI format maps to ISBITMASK(0x7c00,0x03e0,0x001f,0x0000) aka D3DFMT_X1R5G5B5

            if (ISBITMASK(0x0f00,0x00f0,0x000f,0xf000))
            {
                return DXGI_FORMAT_B4G4R4A4_UNORM;
            }

            // No DXGI format maps to ISBITMASK(0x0f00,0x00f0,0x000f,0x0000) aka D3DFMT_X4R4G4B4

            // No 3:3:2, 3:3:2:8, or paletted DXGI formats aka D3DFMT_A8R3G3B2, D3DFMT_R3G3B2, D3DFMT_P8, D3DFMT_A8P8, etc.
            break;
        }
    }
    else if (ddpf.flags & DDS_LUMINANCE)
    {
        if (8 == ddpf.RGBBitCount)
        {
            if (ISBITMASK(0x000000ff,0x00000000,0x00000000,0x00000000))
            {
                return DXGI_FORMAT_R8_UNORM; // D3DX10/11 writes this out as DX10 extension
            }

            // No DXGI format maps to ISBITMASK(0x0f,0x00,0x00,0xf0) aka D3DFMT_A4L4

            if (ISBITMASK(0x000000ff, 0x00000000, 0x00000000, 0x0000ff00))
            {
                return DXGI_FORMAT_R8G8_UNORM; // Some DDS writers assume the bitcount should be 8 instead of 16
            }
        }

        if (16 == ddpf.RGBBitCount)
        {
            if (ISBITMASK(0x0000ffff,0x00000000,0x00000000,0x00000000))
            {
                return DXGI_FORMAT_R16_UNORM; // D3DX10/11 writes this out as DX10 extension
            }
            if (ISBITMASK(0x000000ff,0x00000000,0x00000000,0x0000ff00))
            {
                return DXGI_FORMAT_R8G8_UNORM; // D3DX10/11 writes this out as DX10 extension
            }
        }
    }
    else if (ddpf.flags & DDS_ALPHA)
    {
        if (8 == ddpf.RGBBitCount)
        {
            return DXGI_FORMAT_A8_UNORM;
        }
    }
    else if (ddpf.flags & DDS_BUMPDUDV)
    {
        if (16 == ddpf.RGBBitCount)
        {
            if (ISBITMASK(0x00ff, 0xff00, 0x0000, 0x0000))
            {
                return DXGI_FORMAT_R8G8_SNORM; // D3DX10/11 writes this out as DX10 extension
            }
        }

        if (32 == ddpf.RGBBitCount)
        {
            if (ISBITMASK(0x000000ff, 0x0000ff00, 0x00ff0000, 0xff000000))
            {
                return DXGI_FORMAT_R8G8B8A8_SNORM; // D3DX10/11 writes this out as DX10 extension
            }
            if (ISBITMASK(0x0000ffff, 0xffff0000, 0x00000000, 0x00000000))
            {
                return DXGI_FORMAT_R16G16_SNORM; // D3DX10/11 writes this out as DX10 extension
            }

            // No DXGI format maps to ISBITMASK(0x3ff00000, 0x000ffc00, 0x000003ff, 0xc0000000) aka D3DFMT_A2W10V10U10
        }
    }
    else if (ddpf.flags & DDS_FOURCC)
    {
        if (MAKEFOURCC( 'D', 'X', 'T', '1' ) == ddpf.fourCC)
        {
            return DXGI_FORMAT_BC1_UNORM;
        }
        if (MAKEFOURCC( 'D', 'X', 'T', '3' ) == ddpf.fourCC)
        {
            return DXGI_FORMAT_BC2_UNORM;
        }
        if (MAKEFOURCC( 'D', 'X', 'T', '5' ) == ddpf.fourCC)
        {
            return DXGI_FORMAT_BC3_UNORM;
        }

        // While pre-multiplied alpha isn't directly supported by the DXGI formats,
        // they are basically the same as these BC formats so they can be mapped
        if (MAKEFOURCC( 'D', 'X', 'T', '2' ) == ddpf.fourCC)
        {
            return DXGI_FORMAT_BC2_UNORM;
        }
        if (MAKEFOURCC( 'D', 'X', 'T', '4' ) == ddpf.fourCC)
        {
            return DXGI_FORMAT_BC3_UNORM;
        }

        if (MAKEFOURCC( 'A', 'T', 'I', '1' ) == ddpf.fourCC)
        {
            return DXGI_FORMAT_BC4_UNORM;
        }
        if (MAKEFOURCC( 'B', 'C', '4', 'U' ) == ddpf.fourCC)
        {
            return DXGI_FORMAT_BC4_UNORM;
        }
        if (MAKEFOURCC( 'B', 'C', '4', 'S' ) == ddpf.fourCC)
        {
            return DXGI_FORMAT_BC4_SNORM;
        }

        if (MAKEFOURCC( 'A', 'T', 'I', '2' ) == ddpf.fourCC)
        {
            return DXGI_FORMAT_BC5_UNORM;
        }
        if (MAKEFOURCC( 'B', 'C', '5', 'U' ) == ddpf.fourCC)
        {
            return DXGI_FORMAT_BC5_UNORM;
        }
        if (MAKEFOURCC( 'B', 'C', '5', 'S' ) == ddpf.fourCC)
        {
            return DXGI_FORMAT_BC5_SNORM;
        }

        // BC6H and BC7 are written using the "DX10" extended header

        if (MAKEFOURCC( 'R', 'G', 'B', 'G' ) == ddpf.fourCC)
        {
            return DXGI_FORMAT_R8G8_B8G8_UNORM;
        }
        if (MAKEFOURCC( 'G', 'R', 'G', 'B' ) == ddpf.fourCC)
        {
            return DXGI_FORMAT_G8R8_G8B8_UNORM;
        }

        if (MAKEFOURCC('Y','U','Y','2') == ddpf.fourCC)
        {
            return DXGI_FORMAT_YUY2;
        }

        // Check for D3DFORMAT enums being set here
        switch( ddpf.fourCC )
        {
        case 36: // D3DFMT_A16B16G16R16
            return DXGI_FORMAT_R16G16B16A16_UNORM;

        case 110: // D3DFMT_Q16W16V16U16
            return DXGI_FORMAT_R16G16B16A16_SNORM;

        case 111: // D3DFMT_R16F
            return DXGI_FORMAT_R16_FLOAT;

        case 112: // D3DFMT_G16R16F
            return DXGI_FORMAT_R16G16_FLOAT;

        case 113: // D3DFMT_A16B16G16R16F
            return DXGI_FORMAT_R16G16B16A16_FLOAT;

        case 114: // D3DFMT_R32F
            return DXGI_FORMAT_R32_FLOAT;

        case 115: // D3DFMT_G32R32F
            return DXGI_FORMAT_R32G32_FLOAT;

        case 116: // D3DFMT_A32B32G32R32F
            return DXGI_FORMAT_R32G32B32A32_FLOAT;
        }
    }

    return DXGI_FORMAT_UNKNOWN;
}

int GetBitsPerPixel( DXGI_FORMAT dxgiformat )
 {
     switch( dxgiformat )
     {
     case DXGI_FORMAT_R32G32B32A32_TYPELESS:
     case DXGI_FORMAT_R32G32B32A32_FLOAT:
     case DXGI_FORMAT_R32G32B32A32_UINT:
     case DXGI_FORMAT_R32G32B32A32_SINT:
         return 128;

     case DXGI_FORMAT_R32G32B32_TYPELESS:
     case DXGI_FORMAT_R32G32B32_FLOAT:
     case DXGI_FORMAT_R32G32B32_UINT:
     case DXGI_FORMAT_R32G32B32_SINT:
         return 96;

     case DXGI_FORMAT_R16G16B16A16_TYPELESS:
     case DXGI_FORMAT_R16G16B16A16_FLOAT:
     case DXGI_FORMAT_R16G16B16A16_UNORM:
     case DXGI_FORMAT_R16G16B16A16_UINT:
     case DXGI_FORMAT_R16G16B16A16_SNORM:
     case DXGI_FORMAT_R16G16B16A16_SINT:
     case DXGI_FORMAT_R32G32_TYPELESS:
     case DXGI_FORMAT_R32G32_FLOAT:
     case DXGI_FORMAT_R32G32_UINT:
     case DXGI_FORMAT_R32G32_SINT:
     case DXGI_FORMAT_R32G8X24_TYPELESS:
     case DXGI_FORMAT_D32_FLOAT_S8X24_UINT:
     case DXGI_FORMAT_R32_FLOAT_X8X24_TYPELESS:
     case DXGI_FORMAT_X32_TYPELESS_G8X24_UINT:
     case DXGI_FORMAT_Y416:
     case DXGI_FORMAT_Y210:
     case DXGI_FORMAT_Y216:
         return 64;

     case DXGI_FORMAT_R10G10B10A2_TYPELESS:
     case DXGI_FORMAT_R10G10B10A2_UNORM:
     case DXGI_FORMAT_R10G10B10A2_UINT:
     case DXGI_FORMAT_R11G11B10_FLOAT:
     case DXGI_FORMAT_R8G8B8A8_TYPELESS:
     case DXGI_FORMAT_R8G8B8A8_UNORM:
     case DXGI_FORMAT_R8G8B8A8_UNORM_SRGB:
     case DXGI_FORMAT_R8G8B8A8_UINT:
     case DXGI_FORMAT_R8G8B8A8_SNORM:
     case DXGI_FORMAT_R8G8B8A8_SINT:
     case DXGI_FORMAT_R16G16_TYPELESS:
     case DXGI_FORMAT_R16G16_FLOAT:
     case DXGI_FORMAT_R16G16_UNORM:
     case DXGI_FORMAT_R16G16_UINT:
     case DXGI_FORMAT_R16G16_SNORM:
     case DXGI_FORMAT_R16G16_SINT:
     case DXGI_FORMAT_R32_TYPELESS:
     case DXGI_FORMAT_D32_FLOAT:
     case DXGI_FORMAT_R32_FLOAT:
     case DXGI_FORMAT_R32_UINT:
     case DXGI_FORMAT_R32_SINT:
     case DXGI_FORMAT_R24G8_TYPELESS:
     case DXGI_FORMAT_D24_UNORM_S8_UINT:
     case DXGI_FORMAT_R24_UNORM_X8_TYPELESS:
     case DXGI_FORMAT_X24_TYPELESS_G8_UINT:
     case DXGI_FORMAT_R9G9B9E5_SHAREDEXP:
     case DXGI_FORMAT_R8G8_B8G8_UNORM:
     case DXGI_FORMAT_G8R8_G8B8_UNORM:
     case DXGI_FORMAT_B8G8R8A8_UNORM:
     case DXGI_FORMAT_B8G8R8X8_UNORM:
     case DXGI_FORMAT_R10G10B10_XR_BIAS_A2_UNORM:
     case DXGI_FORMAT_B8G8R8A8_TYPELESS:
     case DXGI_FORMAT_B8G8R8A8_UNORM_SRGB:
     case DXGI_FORMAT_B8G8R8X8_TYPELESS:
     case DXGI_FORMAT_B8G8R8X8_UNORM_SRGB:
     case DXGI_FORMAT_AYUV:
     case DXGI_FORMAT_Y410:
     case DXGI_FORMAT_YUY2:
         return 32;

     case DXGI_FORMAT_P010:
     case DXGI_FORMAT_P016:
     case DXGI_FORMAT_V408:
         return 24;

     case DXGI_FORMAT_R8G8_TYPELESS:
     case DXGI_FORMAT_R8G8_UNORM:
     case DXGI_FORMAT_R8G8_UINT:
     case DXGI_FORMAT_R8G8_SNORM:
     case DXGI_FORMAT_R8G8_SINT:
     case DXGI_FORMAT_R16_TYPELESS:
     case DXGI_FORMAT_R16_FLOAT:
     case DXGI_FORMAT_D16_UNORM:
     case DXGI_FORMAT_R16_UNORM:
     case DXGI_FORMAT_R16_UINT:
     case DXGI_FORMAT_R16_SNORM:
     case DXGI_FORMAT_R16_SINT:
     case DXGI_FORMAT_B5G6R5_UNORM:
     case DXGI_FORMAT_B5G5R5A1_UNORM:
     case DXGI_FORMAT_A8P8:
     case DXGI_FORMAT_B4G4R4A4_UNORM:
     case DXGI_FORMAT_P208:
     case DXGI_FORMAT_V208:
         return 16;

     case DXGI_FORMAT_NV12:
     case DXGI_FORMAT_420_OPAQUE:
     case DXGI_FORMAT_NV11:
         return 12;

     case DXGI_FORMAT_R8_TYPELESS:
     case DXGI_FORMAT_R8_UNORM:
     case DXGI_FORMAT_R8_UINT:
     case DXGI_FORMAT_R8_SNORM:
     case DXGI_FORMAT_R8_SINT:
     case DXGI_FORMAT_A8_UNORM:
     case DXGI_FORMAT_AI44:
     case DXGI_FORMAT_IA44:
     case DXGI_FORMAT_P8:
         return 8;

     case DXGI_FORMAT_R1_UNORM:
         return 1;

     case DXGI_FORMAT_BC1_TYPELESS:
     case DXGI_FORMAT_BC1_UNORM:
     case DXGI_FORMAT_BC1_UNORM_SRGB:
     case DXGI_FORMAT_BC4_TYPELESS:
     case DXGI_FORMAT_BC4_UNORM:
     case DXGI_FORMAT_BC4_SNORM:
         return 4;

     case DXGI_FORMAT_BC2_TYPELESS:
     case DXGI_FORMAT_BC2_UNORM:
     case DXGI_FORMAT_BC2_UNORM_SRGB:
     case DXGI_FORMAT_BC3_TYPELESS:
     case DXGI_FORMAT_BC3_UNORM:
     case DXGI_FORMAT_BC3_UNORM_SRGB:
     case DXGI_FORMAT_BC5_TYPELESS:
     case DXGI_FORMAT_BC5_UNORM:
     case DXGI_FORMAT_BC5_SNORM:
     case DXGI_FORMAT_BC6H_TYPELESS:
     case DXGI_FORMAT_BC6H_UF16:
     case DXGI_FORMAT_BC6H_SF16:
     case DXGI_FORMAT_BC7_TYPELESS:
     case DXGI_FORMAT_BC7_UNORM:
     case DXGI_FORMAT_BC7_UNORM_SRGB:
         return 8;

     default:
         return 0;
     }
 }





static UInt GetBytes_128BIT(UInt w, UInt h)
{
    return w * h * 16;
}
static UInt GetBytes_96BIT(UInt w, UInt h)
{
    return w * h * 12;
}
static UInt GetBytes_64BIT(UInt w, UInt h)
{
    return w * h * 8;
}
static UInt GetBytes_32BIT(UInt w, UInt h)
{
    return w * h * 4;
}
static UInt GetBytes_24BIT(UInt w, UInt h)
{
    return w * h * 3;
}
static UInt GetBytes_16BIT(UInt w, UInt h)
{
    return w * h * 2;
}
static UInt GetBytes_8BIT(UInt w, UInt h)
{
    return w * h * 1;
}


//検証必要
static UInt GetBytes_12BIT(UInt w, UInt h)
{
    UInt wbytes = (w * 12 + 7) / 8;
    return wbytes * h;
}
static UInt GetBytes_4BIT(UInt w, UInt h)
{
    UInt wbytes = (w * 4 + 7) / 8;
    return wbytes * h;
}
static UInt GetBytes_1BIT(UInt w, UInt h)
{
    UInt wbytes = (w * 1 + 7) / 8;
    return wbytes * h;
}


//for BC
static UInt GetBytes_BC1(UInt w, UInt h)
{
    return ((w + 3) / 4) * ((h + 3) / 4) * 8;
}
static UInt GetBytes_BC2_BC3(UInt w, UInt h)
{
    return ((w + 3) / 4) * ((h + 3) / 4) * 16;
}


static DDS::GETBYTES GetGetBytes(DXGI_FORMAT dxgiformat)
{
    switch (dxgiformat) {
            
        case DXGI_FORMAT_BC1_TYPELESS:
        case DXGI_FORMAT_BC1_UNORM:
        case DXGI_FORMAT_BC1_UNORM_SRGB:
            return GetBytes_BC1;
            
        case DXGI_FORMAT_BC2_TYPELESS:
        case DXGI_FORMAT_BC2_UNORM:
        case DXGI_FORMAT_BC2_UNORM_SRGB:
        case DXGI_FORMAT_BC3_TYPELESS:
        case DXGI_FORMAT_BC3_UNORM:
        case DXGI_FORMAT_BC3_UNORM_SRGB:
            return GetBytes_BC2_BC3;
        
        //現状非対応
        case DXGI_FORMAT_BC4_TYPELESS:
        case DXGI_FORMAT_BC4_UNORM:
        case DXGI_FORMAT_BC4_SNORM:
        case DXGI_FORMAT_BC5_TYPELESS:
        case DXGI_FORMAT_BC5_UNORM:
        case DXGI_FORMAT_BC5_SNORM:
        case DXGI_FORMAT_BC6H_TYPELESS:
        case DXGI_FORMAT_BC6H_UF16:
        case DXGI_FORMAT_BC6H_SF16:
        case DXGI_FORMAT_BC7_TYPELESS:
        case DXGI_FORMAT_BC7_UNORM:
        case DXGI_FORMAT_BC7_UNORM_SRGB:
            
        case DXGI_FORMAT_R8G8_B8G8_UNORM:
        case DXGI_FORMAT_G8R8_G8B8_UNORM:
        case DXGI_FORMAT_YUY2:
        case DXGI_FORMAT_Y210:
        case DXGI_FORMAT_Y216:
        case DXGI_FORMAT_NV11:
        case DXGI_FORMAT_NV12:
        case DXGI_FORMAT_420_OPAQUE:
        case DXGI_FORMAT_P208:
        case DXGI_FORMAT_P010:
        case DXGI_FORMAT_P016:
            return NULL;

        default://非圧縮 
        {
            UInt bits = GetBitsPerPixel(dxgiformat);
            switch (bits) {
            case 128:
                return GetBytes_128BIT;
            case 96:
                return GetBytes_96BIT;
            case 64:
                return GetBytes_64BIT;
            case 32:
                return GetBytes_32BIT;
            case 24:
                return GetBytes_24BIT;
            case 16:
                return GetBytes_16BIT;
            case 12:
                return GetBytes_12BIT;
            case 8:
                return GetBytes_8BIT;
            case 4:
                return GetBytes_4BIT;
            case 1:
                return GetBytes_1BIT;
            }
            return NULL;//非対応
        }
    }
}

bool DDS::SetBuffer(UChar* buf, UInt bufsize)
{
    data = buf;
    const DDS_HEADER* header = (DDS_HEADER*)data;
    
    data += sizeof(DDS_HEADER);
    datalength = bufsize - sizeof(DDS_HEADER);
    dxgiformat = DXGI_FORMAT_UNKNOWN;
	cubemap    = false;//現状非対応

    const DDS_HEADER_DXT10* header10 = NULL;
    if ((header->ddspf.flags & DDS_FOURCC) &&
        (MAKEFOURCC('D', 'X', '1', '0') == header->ddspf.fourCC)) {
        header10 = (DDS_HEADER_DXT10*) buf;
        data += sizeof(DDS_HEADER_DXT10);
        datalength -= sizeof(DDS_HEADER_DXT10);

        arraysize = header10->arraySize;
        if (arraysize != 1) {//cubemap/depth非対応
            return false;
        }
        dxgiformat = (DXGI_FORMAT)header10->dxgiFormat;
    }
    else {
        arraysize = 1;
        dxgiformat = GetDXGIFormat(header->ddspf);
    }

    width     = header->width;
    height    = header->height;
    bits      = GetBitsPerPixel(dxgiformat);
    arraysize = 1;
    mipcount  = (header->mipMapCount == 0)? 1 : header->mipMapCount;
    GetBytes  = GetGetBytes(dxgiformat);
    if (GetBytes == NULL) {
        return false;
    }
    
    return true;
}

bool DDS::GetLevels(DDS::LEVEL* levels)
{
    UInt32 dataOffset  = 0;
    UInt32 levelWidth  = width;
    UInt32 levelHeight = height;
    UInt32 levelidx = 0;

    while (dataOffset < datalength) {
        //UInt32 levelSize = levelWidth * levelHeight * (bits / 8);
        UInt32 levelSize = GetBytes(levelWidth, levelHeight);
		UInt32 pitchSize = GetBytes(levelWidth, 1);
        
        DDS::LEVEL level;
        level.ptr = data + dataOffset;
		level.pitch = pitchSize;
        level.size  = levelSize;
        levels[levelidx] = level;

        //SysLog("level %d offset %d size %d\n", levelidx, dataOffset, levelSize);


        dataOffset += levelSize;

        levelWidth  = MAX(levelWidth / 2, 1);
        levelHeight = MAX(levelHeight / 2, 1);
        
        levelidx++;
    }    
    return true;
}



#pragma pack(push,1)
class BC_COLORBLOCK
{
public:
    UInt16 rgb565[2];
    UInt32 block;
};
class BC2_ALPHABLOCK
{
public:
    UInt64 block;
};
class BC3_ALPHABLOCK
{
public:
    UInt8 alpha[2];
    UInt16 block16;
    UInt32 block32;
    
    UInt64 block()
    {
        //endian test
        //block16 = 0xABCD;
        //block32 = 0xCCCCBBBB;
        //UInt64 testb = 0x0000CCCCBBBBABCD;
        UInt64 b = (UInt64)block16 | ((UInt64)block32 << 16);
        return b;
    }
};
#pragma pack(pop)

void DDS::DecodeBC(UChar* buf, UInt buflen)
{
    
    if (sizeof(BC_COLORBLOCK)  != 8 ||
        sizeof(BC2_ALPHABLOCK) != 8 ||
        sizeof(BC3_ALPHABLOCK) != 8) {
        DEBUGSTOP;
    }

    int bc = GetDecodeBC();
    
    //bc1
    UInt blockSize    = 8;
    UChar* colorblock = data;
    UChar* alphablock = NULL;

    //bc2 bc3
    if (bc == 2 || bc == 3) {
        blockSize  = 16;
        colorblock = data + 8;//alphablockとの順番に注意 endianを意識せよ
        alphablock = data;
    }

    //ヘッダ情報を書き換える
    dxgiformat = DXGI_FORMAT_R8G8B8A8_UNORM;
    data       = buf;
    datalength = buflen;
    bits       = GetBitsPerPixel(dxgiformat);
    GetBytes   = GetGetBytes(dxgiformat);

    
    UInt levelWidth  = width;
    UInt levelHeight = height;

    
    //for (int array = 0; array < dds.arraysize; array++) {//cubemap/depth非対応
    for (int mip = 0; mip < (int)mipcount; mip++) {

        UInt32 levelSize = GetBytes(levelWidth, levelHeight);

        for (int starty = 0; starty < (int)levelHeight; starty += 4) {
            for (int startx = 0; startx < (int)levelWidth; startx += 4) {

                //FOR EACH BLOCK


                //BC1,2,3 COLOR BLOCK
                BC_COLORBLOCK* cb = (BC_COLORBLOCK*)colorblock;
                Vec4 color[4];//0.0f-1.0f
        
                if (cb->rgb565[0] > cb->rgb565[1]) {
                    color[0].SetRGB565(cb->rgb565[0]);
                    color[1].SetRGB565(cb->rgb565[1]);
                    color[2] = Vec4::GetLerp(color[0], color[1], 1.0f / 3.0f);
                    color[3] = Vec4::GetLerp(color[0], color[1], 2.0f / 3.0f);
                }
                else {
                    color[0].SetRGB565(cb->rgb565[0]);
                    color[1].SetRGB565(cb->rgb565[1]);
                    color[2] = Vec4::GetLerp(color[0], color[1], 1.0f / 2.0f);
                    color[3].Clear();
                }
                UInt32 color2bit = cb->block;

                
                //ALPHA BLOCK
                UInt64 alphabit = 0;
                
                if (bc == 2) {
                    BC2_ALPHABLOCK* bc2ab = (BC2_ALPHABLOCK*)alphablock;
                    alphabit = bc2ab->block;
                }
                
                Val alpha[8];//0.0f-1.0f
                if (bc == 3) {
                    BC3_ALPHABLOCK* bc3ab = (BC3_ALPHABLOCK*)alphablock;
                    if (bc3ab->alpha[0] > bc3ab->alpha[1]) {
                        alpha[0] = (Val)bc3ab->alpha[0] / 255.0f;
                        alpha[1] = (Val)bc3ab->alpha[1] / 255.0f;
                        alpha[2] = Lerp(alpha[0], alpha[1], 1.0f / 7.0f);
                        alpha[3] = Lerp(alpha[0], alpha[1], 2.0f / 7.0f);
                        alpha[4] = Lerp(alpha[0], alpha[1], 3.0f / 7.0f);
                        alpha[5] = Lerp(alpha[0], alpha[1], 4.0f / 7.0f);
                        alpha[6] = Lerp(alpha[0], alpha[1], 5.0f / 7.0f);
                        alpha[7] = Lerp(alpha[0], alpha[1], 6.0f / 7.0f);
                    }
                    else {
                        alpha[0] = (Val)bc3ab->alpha[0] / 255.0f;
                        alpha[1] = (Val)bc3ab->alpha[1] / 255.0f;
                        alpha[2] = Lerp(alpha[0], alpha[1], 1.0f / 5.0f);
                        alpha[3] = Lerp(alpha[0], alpha[1], 2.0f / 5.0f);
                        alpha[4] = Lerp(alpha[0], alpha[1], 3.0f / 5.0f);
                        alpha[5] = Lerp(alpha[0], alpha[1], 4.0f / 5.0f);
                        alpha[6] = 0.0f;
                        alpha[7] = 1.0f;
                    }
                    
                    alphabit = bc3ab->block();
                }

                
                for (int y = starty; y < starty + 4 && y < (int)levelHeight; y++) {
                    for (int x = startx; x < startx + 4 && x < (int)levelWidth; x++) {

                        int pixel = (x + y * levelWidth) * 4;

                        //BC1,2,3 COLOR BLOCK
                        UInt coloridx = color2bit & 0x03;
                        Vec4 col = color[coloridx];
                        buf[pixel + 0] = col.r * 255.0f;
                        buf[pixel + 1] = col.g * 255.0f;
                        buf[pixel + 2] = col.b * 255.0f;
                        buf[pixel + 3] = col.a * 255.0f;
                        color2bit >>= 2;
                
                        //BC2 ALPHA BLOCK
                        if (bc == 2) {
                            UInt8 a = alphabit & 0x0F;
                            a *= 17;
                            buf[pixel + 3] = a;
                            alphabit >>= 4;
                        }
                        
                        //BC3 ALPHA BLOCK
                        if (bc == 3) {
                            UInt alphaidx = alphabit & 0x07;
                            Val a = alpha[alphaidx];
                            buf[pixel + 3] = a * 255.0f;
                            alphabit >>= 3;
                        }
                    }
                }
        
                colorblock += blockSize;
                if (alphablock) {
                    alphablock += blockSize;
                }
            }
        }
        
        buf += levelSize;
        
        levelWidth  = MAX(levelWidth  / 2, 1);
        levelHeight = MAX(levelHeight / 2, 1);
    }
    //}
    

    

}


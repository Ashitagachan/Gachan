//
// GachanMETALPass.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANMETALPASS_H__
#define __GACHANMETALPASS_H__

#import <Metal/Metal.h>
#include "GachanMath.h"

class GachanMetalPass
{
public:
    static void CreateShadowMap();
    static void ReleaseShadowMap();
    static void Create();
    static void Release();

    static void SetBackgroundColor(Val r, Val g, Val b);

    //SHADOWMAP PASS
    static void StartShadowMap();
    static void EndShadowMap();
    
    //NORMAL PASS
    static void Start();
    static void SetRenderPassDesc_LoadRenderTarget();
    
    static id<MTLDepthStencilState>    GetDepthStencilState(int ztest = 1);
    static id<MTLCommandQueue>         GetCommandQueue();
    static MTLRenderPassDescriptor*    GetPassDesc();
    
    static void End();
};



#endif



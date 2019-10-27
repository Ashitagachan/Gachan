//
// GachanMETALPass.mm
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

//#include "Gachan3DPass.h"
#include "Gachan3D.h"
#include "GachanMathVector.h"
#include "GachanMETALPass.h"
#import "GachanMETALBase.h"


    static id<MTLTexture>              TexDepth;
    static MTLRenderPassDescriptor*    RenderPassDesc;
    static id<CAMetalDrawable>         Drawable;
    static id<MTLDepthStencilState>    DepthStencilState[2];//0:ZTestOFF 1:ZTestOn
    static id<MTLCommandQueue>         CommandQueue;


    void GachanMetalPass::Create()
    {
        CAMetalLayer* metalLayer = [[GachanMetalBase sharedInstance] getLayer];
        id<CAMetalDrawable> drawable = [metalLayer nextDrawable];
        
        
        
        //----------------------------
        //NORMAL DEPTH TEXTURE
        NSLog(@"MetalPass::Create texDepth width %d height %d", (int)drawable.texture.width, (int)drawable.texture.height);
        
        MTLTextureDescriptor* desc = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat: MTLPixelFormatDepth32Float
                                                                                        width: drawable.texture.width
                                                                                       height: drawable.texture.height
                                                                                    mipmapped: NO];
#if MAC
        desc.resourceOptions = MTLResourceStorageModePrivate;
#else
#endif
        desc.usage = MTLTextureUsageRenderTarget | MTLTextureUsageShaderRead;
        TexDepth = [metalLayer.device newTextureWithDescriptor:desc];
        TexDepth.label = @"texDepth";
        
        //-----------------------------
        //DEPTH STENCIL STATE
        MTLDepthStencilDescriptor* depthStencilDesc = [MTLDepthStencilDescriptor new];
        
        //ZTEST OFF
        depthStencilDesc.depthWriteEnabled    = NO;
        depthStencilDesc.depthCompareFunction = MTLCompareFunctionAlways;
        DepthStencilState[0] = [metalLayer.device newDepthStencilStateWithDescriptor:depthStencilDesc];
        //ZTEST ON
        depthStencilDesc.depthWriteEnabled    = YES;
        depthStencilDesc.depthCompareFunction = MTLCompareFunctionLess;
        DepthStencilState[1] = [metalLayer.device newDepthStencilStateWithDescriptor:depthStencilDesc];
        
        //RenderPassDesc = [[MTLRenderPassDescriptor alloc] init];
        RenderPassDesc = [MTLRenderPassDescriptor renderPassDescriptor];
        
        
        CommandQueue = [metalLayer.device newCommandQueue];
    }
    void GachanMetalPass::Release()
    {
        TexDepth             = nil;
        RenderPassDesc       = nil;
        Drawable             = nil;
        DepthStencilState[0] = nil;
        DepthStencilState[1] = nil;
        CommandQueue         = nil;
    }


    //void Pass::Start(int pass)
    //{
    //
    //}
    
    void MergeDrawStart(bool firstdraw);
    void MergeDrawEnd();
    
    void GachanMetalPass::Start()
    {
        CAMetalLayer* metalLayer = [[GachanMetalBase sharedInstance] getLayer];
        Drawable = [metalLayer nextDrawable];
        
        //PASS START
        RenderPassDesc.colorAttachments[0].texture     = Drawable.texture;
        RenderPassDesc.colorAttachments[0].clearColor  = MTLClearColorMake(Gachan3D::BackgroundColor.r,
                                                                           Gachan3D::BackgroundColor.g,
                                                                           Gachan3D::BackgroundColor.b, 1.0);
        RenderPassDesc.colorAttachments[0].loadAction  = MTLLoadActionClear;
        RenderPassDesc.colorAttachments[0].storeAction = MTLStoreActionStore;
        
        RenderPassDesc.depthAttachment.texture     = TexDepth;
        RenderPassDesc.depthAttachment.clearDepth  = 1.0f;
        RenderPassDesc.depthAttachment.loadAction  = MTLLoadActionClear;
        RenderPassDesc.depthAttachment.storeAction = MTLStoreActionStore;
        
        
        MergeDrawStart(true);
    }

    void GachanMetalPass::SetRenderPassDesc_LoadRenderTarget()
    {
        //FOR NEXT DRAW
        RenderPassDesc.colorAttachments[0].loadAction  = MTLLoadActionLoad;
        RenderPassDesc.colorAttachments[0].storeAction = MTLStoreActionStore;
    
        RenderPassDesc.depthAttachment.loadAction  = MTLLoadActionLoad;
        RenderPassDesc.depthAttachment.storeAction = MTLStoreActionStore;
    }

    id<MTLCommandQueue> GachanMetalPass::GetCommandQueue()
    {
        return CommandQueue;
    }
    id<MTLDepthStencilState> GachanMetalPass::GetDepthStencilState(int ztest)
    {
        return DepthStencilState[ztest];
    }
    MTLRenderPassDescriptor* GachanMetalPass::GetPassDesc()
    {
        return RenderPassDesc;
    }
    

    
    void GachanMetalPass::End()
    {
        MergeDrawEnd();
        
        //end draw and flip backbuffer
        id<MTLCommandBuffer> commandBuffer = [CommandQueue commandBuffer];
        commandBuffer.label = @"MetalPass::End()";
        [commandBuffer presentDrawable:Drawable];
        [commandBuffer commit];
        //[CommandBuffer waitUntilCompleted];//block
    }
    
    //void Pass::End()//see dx3dpass.h
    //{
    //}
    








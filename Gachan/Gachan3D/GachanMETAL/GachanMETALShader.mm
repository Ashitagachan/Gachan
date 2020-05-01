//
// GachanMETALShader.mm
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#import <Metal/Metal.h>
#include "Gachan3DCamera.h"
#include "Gachan3DObject.h"
#include "Gachan3DShader.h"
#include "Gachan3DPass.h"
#include "GachanMETALShaderTypes.h"

#import "GachanMETALBase.h"
#include "GachanMETALPass.h"

static NSBundle* MetalShaderBundle   = NULL;

Gachan3DShader::Table Gachan3DShader::ShaderList[Gachan3DShader::SHADER_NUM] = {
    { Gachan3DVertex::TYPE_VN,   (const unsigned int*) "vs_default",   (const unsigned int*) "ps_default"      },
    { Gachan3DVertex::TYPE_VNUV, (const unsigned int*) "vs_texa",      (const unsigned int*) "ps_texa"         },
    { Gachan3DVertex::TYPE_VN,   (const unsigned int*) "vs_defaultNL", (const unsigned int*) "ps_defaultNL"    },
};

Gachan3DShader::Table Gachan3DShader::ShaderListShadowMap[Gachan3DShader::SHADER_SHADOWMAP_NUM] = {
    //for shadow map creation
    { Gachan3DVertex::TYPE_VN,   (const unsigned int*) "vs_shadow_vn",    (const unsigned int*) NULL },
    { Gachan3DVertex::TYPE_VNUV, (const unsigned int*) "vs_shadow_vnuv",  (const unsigned int*) NULL },
};


id <MTLSamplerState>      SamplerStateWRAP[GachanMaterialTex::WRAP_NUM][GachanMaterialTex::WRAP_NUM];//wrapu x wrapv
id <MTLSamplerState>      SamplerState[DX3DTEX_NUM];
id <MTLTexture>           Texture     [DX3DTEX_NUM];


//最初にセットしておくテクスチャ
//METALでは、ExistingShadowTexture(tex stage 1)とか使わなくてもセットしておくべき
void* TextureObject;
void* TextureStaticShadow;
void* TextureDynamicShadow;



MTLVertexDescriptor* VertexDesc[Gachan3DShader::SHADER_NUM];
id <MTLFunction>    VertexShader[Gachan3DShader::SHADER_NUM];
id <MTLFunction>    PixelShader [Gachan3DShader::SHADER_NUM];

MTLVertexDescriptor* VertexDescShadowMap  [Gachan3DShader::SHADER_SHADOWMAP_NUM];
id <MTLFunction>     VertexShaderShadowMap[Gachan3DShader::SHADER_SHADOWMAP_NUM];

//PIPELINESTATE and RENDERSTATE
static MTLCullMode CullMode;
static bool DoubleSide = false;
static int  AlphaBlend = 1;//0:Off 1:ON
static int  DepthTest  = 1;//0:Off 1:ON

id <MTLRenderPipelineState> PipelineState[Gachan3DShader::SHADER_NUM][2];//0:AlphaBlend OFF  1:AlphaBlend ON
id <MTLRenderPipelineState> PipelineStateShadowMap[Gachan3DShader::SHADER_SHADOWMAP_NUM];



#define MERGEDRAW  (1)

#if MERGEDRAW
static const int                    MergeDrawMax = 48;//ADJUST
static int                          MergeDrawCount = 0;
static id <MTLCommandBuffer>        MergeCommandBuffer;
static id <MTLRenderCommandEncoder> MergeRenderEncoder;

static const int     MergeSemaphoreNum = 3;//ADJUST
dispatch_semaphore_t MergeSemaphore;
static int           MergeIdx = 0;

//Uniform buffer
id <MTLBuffer> UniformBufferVertex[MergeSemaphoreNum][MergeDrawMax];
id <MTLBuffer> UniformBufferPixel [MergeSemaphoreNum][MergeDrawMax];
int            UniformBufferUse   [MergeSemaphoreNum];  //0:not used   1:used
#else
id <MTLBuffer> UniformBufferVertex;
#endif

UniformVertex* UniformBufferVertexPtr;






static void VertexDescVertType(Int verttype, MTLVertexDescriptor* vertexdesc)
{
    //switch (verttype)
    {
         int offset = 0;
         int index  = 0;
         vertexdesc.attributes[index].format      = MTLVertexFormatFloat3;//V POS
         vertexdesc.attributes[index].offset      = offset;
         vertexdesc.attributes[index].bufferIndex = 0;
         offset += 12;
         index++;
         vertexdesc.attributes[index].format      = MTLVertexFormatFloat3;//N NORMAL
         vertexdesc.attributes[index].offset      = offset;
         vertexdesc.attributes[index].bufferIndex = 0;
         offset += 12;
         index++;

        switch (verttype) {
          case Gachan3DVertex::TYPE_VNUV:
              vertexdesc.attributes[index].format      = MTLVertexFormatFloat2;//UV
              vertexdesc.attributes[index].offset      = offset;
              vertexdesc.attributes[index].bufferIndex = 0;
              offset += 8;
              break;
        }

        vertexdesc.layouts[0].stride = offset;
        vertexdesc.layouts[0].stepRate = 1;
        vertexdesc.layouts[0].stepFunction = MTLVertexStepFunctionPerVertex;
    }

 }


static void LoadShader(int shader)
{
    id<MTLDevice> device = [[GachanMetalBase sharedInstance] getDevice];
    
    NSError *error = NULL;
    id<MTLLibrary> library = [device newDefaultLibraryWithBundle:MetalShaderBundle error:&error];
    
    NSString* vs = [NSString stringWithUTF8String:(char*)Gachan3DShader::ShaderList[shader].VSBuffer];
    NSString* ps = [NSString stringWithUTF8String:(char*)Gachan3DShader::ShaderList[shader].PSBuffer];
    
    VertexShader[shader] = [library newFunctionWithName:vs];
    PixelShader [shader] = [library newFunctionWithName:ps];
#ifdef DEBUG
    NSLog(@"vs %@ %@", (VertexShader[shader])? @"OK" : @"FAILED", vs);
    NSLog(@"ps %@ %@", (PixelShader[shader])?  @"OK" : @"FAILED", ps);
#endif
    VertexDesc[shader] = [[MTLVertexDescriptor alloc] init];
    VertexDescVertType(Gachan3DShader::ShaderList[shader].VertType, VertexDesc[shader]);
    
    //--------------------------------
    //PIPELINE STATE
    //--------------------------------
    MTLRenderPipelineDescriptor* pipelineDesc;
    pipelineDesc = [[MTLRenderPipelineDescriptor alloc] init];
    pipelineDesc.label = @"MyPipeline";
    pipelineDesc.vertexFunction                  = VertexShader[shader];
    pipelineDesc.fragmentFunction                = PixelShader[shader];
    pipelineDesc.vertexDescriptor                = VertexDesc[shader];
    pipelineDesc.sampleCount                     = 1;
    pipelineDesc.depthAttachmentPixelFormat      = MTLPixelFormatDepth32Float;
    pipelineDesc.stencilAttachmentPixelFormat    = MTLPixelFormatInvalid;//MTLPixelFormatStencil8;
    pipelineDesc.colorAttachments[0].pixelFormat = MTLPixelFormatBGRA8Unorm;
    //pipelineDesc.colorAttachments[0].blendingEnabled             = TRUE;
    pipelineDesc.colorAttachments[0].alphaBlendOperation         = MTLBlendOperationAdd;
    pipelineDesc.colorAttachments[0].rgbBlendOperation           = MTLBlendOperationAdd;
    pipelineDesc.colorAttachments[0].sourceAlphaBlendFactor      = MTLBlendFactorSourceAlpha;
    pipelineDesc.colorAttachments[0].sourceRGBBlendFactor        = MTLBlendFactorSourceAlpha;
    pipelineDesc.colorAttachments[0].destinationAlphaBlendFactor = MTLBlendFactorOneMinusSourceAlpha;
    pipelineDesc.colorAttachments[0].destinationRGBBlendFactor   = MTLBlendFactorOneMinusSourceAlpha;
    //ALPHA BLEND OFF
    pipelineDesc.colorAttachments[0].blendingEnabled = FALSE;
    PipelineState[shader][0] = [device newRenderPipelineStateWithDescriptor:pipelineDesc error:&error];
    if (!PipelineState[shader][0]) {
        NSLog(@"Failed to created pipeline state, error %@", error);
    }
    
    //ALPHA BLEND ON
    pipelineDesc.colorAttachments[0].blendingEnabled = TRUE;
    PipelineState[shader][1] = [device newRenderPipelineStateWithDescriptor:pipelineDesc error:&error];
    if (!PipelineState[shader][1]) {
        NSLog(@"Failed to created pipeline state, error %@", error);
    }
}

    static bool LoadShaderShadowMap(int shader)//shader == VertexType
    {
        id<MTLDevice> device = [[GachanMetalBase sharedInstance] getDevice];

        NSError *error = NULL;
        id<MTLLibrary> library = [device newDefaultLibraryWithBundle:MetalShaderBundle error:&error];

        NSString* vs = [NSString stringWithUTF8String:(char*)Gachan3DShader::ShaderListShadowMap[shader].VSBuffer];

        VertexShaderShadowMap[shader] = [library newFunctionWithName:vs];
#ifdef DEBUG
        NSLog(@"vs %@ %@", (VertexShaderShadowMap[shader])? @"OK" : @"FAILED", vs);
#endif
        VertexDescShadowMap[shader] = [[MTLVertexDescriptor alloc] init];
        VertexDescVertType(Gachan3DShader::ShaderListShadowMap[shader].VertType, VertexDescShadowMap[shader]);
        
        MTLRenderPipelineDescriptor* pipelineDesc;
        pipelineDesc = [[MTLRenderPipelineDescriptor alloc] init];
        pipelineDesc.label = @"MyPipelineShadowMap";
        pipelineDesc.vertexFunction                  = VertexShaderShadowMap[shader];
        pipelineDesc.fragmentFunction                = nil;
        pipelineDesc.vertexDescriptor                = VertexDescShadowMap[shader];
        pipelineDesc.sampleCount                     = 1;
        pipelineDesc.depthAttachmentPixelFormat      = MTLPixelFormatDepth32Float;
        pipelineDesc.stencilAttachmentPixelFormat    = MTLPixelFormatInvalid;
        pipelineDesc.colorAttachments[0].pixelFormat = MTLPixelFormatInvalid;

        PipelineStateShadowMap[shader] = [device newRenderPipelineStateWithDescriptor:pipelineDesc error:&error];
        if (!PipelineStateShadowMap[shader]) {
            NSLog(@"Failed to created pipeline state ShadowMap, error %@", error);
        }
        return true;
            
    }


    

extern void* CreateTextureColored(int width, int height, unsigned int abgr);

void MergeDrawInit();

bool Gachan3DShader::Create()
{
    if (VertexShader[0] != NULL) {
        return false;
    }
    MetalShaderBundle = [NSBundle mainBundle];
    
    id<MTLDevice> device = [[GachanMetalBase sharedInstance] getDevice];
#if MERGEDRAW
    for (int i = 0; i < MergeSemaphoreNum; i++) {
        for (int j = 0; j < MergeDrawMax; j++) {
            UniformBufferVertex[i][j] = [device newBufferWithLength:sizeof(UniformVertex) options:MTLResourceStorageModeShared];
        }
    }
    MergeSemaphore = dispatch_semaphore_create(MergeSemaphoreNum);
    MergeDrawInit();
#else
    UniformBufferVertex = [device newBufferWithLength:sizeof(UniformVertex) options:MTLResourceStorageModeShared];
    UniformBufferVertexPtr = (UniformVertex*) UniformBufferVertex.contents;
#endif
    for (int i = 0; i < Gachan3DShader::SHADER_NUM; i++) {
        LoadShader(i);
    }
    for (Int i = 0; i < SHADER_SHADOWMAP_NUM; i++) {
        LoadShaderShadowMap(i);
    }
    
    TextureObject         = CreateTextureColored(64,64,0xFF900000);
    TextureStaticShadow   = CreateTextureColored(64,64,0xFFFFFFFF);
    TextureDynamicShadow  = CreateTextureColored(64,64,0xFFFFFFFF);
    
    //Shader::SetTexture()と同じことをする
    Texture[DX3DTEX0_OBJECT]        = (__bridge id<MTLTexture>)TextureObject;
    Texture[DX3DTEX6_STATICSHADOW]  = (__bridge id<MTLTexture>)TextureStaticShadow;
    Texture[DX3DTEX7_DYNAMICSHADOW] = (__bridge id<MTLTexture>)TextureDynamicShadow;

    CurShader = -1;
    
    
            
            MTLSamplerDescriptor* samplerDesc = [MTLSamplerDescriptor new];
            samplerDesc.magFilter = MTLSamplerMinMagFilterLinear;
            samplerDesc.minFilter = MTLSamplerMinMagFilterLinear;
            samplerDesc.mipFilter = MTLSamplerMipFilterLinear;
            
            for (int wrapu = 0; wrapu < GachanMaterialTex::WRAP_NUM; wrapu++) {
                for (int wrapv = 0; wrapv < GachanMaterialTex::WRAP_NUM; wrapv++) {
                    MTLSamplerAddressMode wrap[GachanMaterialTex::WRAP_NUM] = {
                        MTLSamplerAddressModeRepeat,//GL_REPEAT,
                        MTLSamplerAddressModeMirrorRepeat,//GL_MIRRORED_REPEAT,
                        MTLSamplerAddressModeClampToEdge,//GL_CLAMP_TO_EDGE,
                    };
                    samplerDesc.sAddressMode = wrap[wrapu];
                    samplerDesc.tAddressMode = wrap[wrapv];
                    samplerDesc.rAddressMode = MTLSamplerAddressModeRepeat;
                    SamplerStateWRAP[wrapu][wrapv] = [device newSamplerStateWithDescriptor:samplerDesc];
                }
            }
            for (int i = 0; i < DX3DTEX_NUM; i++) {
                SamplerState[i] = SamplerStateWRAP[0][0];
            }

            //DRAW_WITH_SHADOWMAP SAMPLER
            int clamp_to_edge = GachanMaterialTex::wrapToIndex(GachanMaterialTex::WRAP_CLAMP_TO_EDGE);
            SamplerState[DX3DTEX7_DYNAMICSHADOW] = SamplerStateWRAP[clamp_to_edge][clamp_to_edge];

    
    
    
    Gachan3DShader::MatP.Clear();
    Gachan3DShader::MatV.Clear();
    Gachan3DShader::MatW.Clear();
    Gachan3DShader::MatVP.Clear();
    Gachan3DShader::MatWV.Clear();
    Gachan3DShader::MatWVP.Clear();

    CullMode = MTLCullModeBack;
    Gachan3DShader::SetFlipFace(true);
    Gachan3DShader::SetDoubleSideFace(false);

    return true;
}

bool Gachan3DShader::Release()
{
    for (int i = 0; i < Gachan3DShader::SHADER_NUM; i++) {
        VertexShader[i] = nil;
        PixelShader [i] = nil;
        PipelineState[i][0] = nil;
        PipelineState[i][1] = nil;
        VertexDesc[i] = nil;
    }
    for (Int i = 0; i < SHADER_SHADOWMAP_NUM; i++) {
        VertexShaderShadowMap[i] = nil;
        PipelineStateShadowMap[i] = nil;
        VertexDescShadowMap[i] = nil;
    }

#if MERGEDRAW
    MergeCommandBuffer = nil;
    MergeRenderEncoder = nil;
    for (int i = 0; i < MergeSemaphoreNum; i++) {
        for (int j = 0; j < MergeDrawMax; j++) {
            UniformBufferVertex[i][j] = nil;
        }
    }
#else
    UniformBufferVertex = nil;
#endif
    
    //Texture::Release()と同じことをする
    id<MTLTexture> texobj      = (__bridge_transfer id<MTLTexture>) TextureObject;
    texobj = NULL;
    
    id<MTLTexture> texexshadow = (__bridge_transfer id<MTLTexture>) TextureStaticShadow;
    texexshadow = NULL;

    id<MTLTexture> texdyshadow = (__bridge_transfer id<MTLTexture>) TextureDynamicShadow;
    texdyshadow = NULL;


    return true;
}





//===============================================
//from light
//===============================================

void Gachan3DShader::SetLightAmbient(const Vec& col)
{
    Vec4 colvec;
    colvec.r = col.r;
    colvec.g = col.g;
    colvec.b = col.b;
    colvec.a = 1.0f;

    UniformBufferVertexPtr->LightAmb = colvec;
}


void Gachan3DShader::SetLightDirection(const Vec& dir, const Vec& col)
{
    Vec4 dirvec;
    dirvec.x = dir.x;
    dirvec.y = dir.y;
    dirvec.z = dir.z;
    dirvec.w = 1.0f;
    
    Vec4 colvec;
    colvec.r = col.r;
    colvec.g = col.g;
    colvec.b = col.b;
    colvec.a = 1.0f;

    UniformBufferVertexPtr->LightDir[0]  = dirvec;
    UniformBufferVertexPtr->LightDCol[0] = colvec;
    
    if (Gachan3DPass::GetPass() == Gachan3DPass::DRAW_SHADOWMAP) {
        Gachan3DCamera::SetLightCamera();
    }

}

Vec Gachan3DShader::GetLightDirection()
{
    Vec4 vec4 = UniformBufferVertexPtr->LightDir[0];
    Vec ret;
    ret.Set(vec4.x, vec4.y, vec4.z);
    return ret;
}


//===============================================
//from camera
//===============================================
void Gachan3DShader::SetEye(const Vec& eye)
{
    Vec4 eyevec4;
    eyevec4.x = eye.x;
    eyevec4.y = eye.y;
    eyevec4.z = eye.z;
    eyevec4.w = 1.0f;

    UniformBufferVertexPtr->Eye = eyevec4;
}


//===============================================
//from material
//===============================================
void Gachan3DShader::SetAlpha(bool b)
{
    AlphaBlend = (b)? 1 : 0;
}

void Gachan3DShader::SetTexture(int stage, const GachanMaterialTex* tex)
{
    if (tex) {
        if (tex->tex) {//this must be 1 tex
            if (tex->tex->tif) {
                Texture[stage] = (__bridge id<MTLTexture>) tex->tex->tif;//(__bridge_transferを使うと解放されてしまう)
                
                int wrapu = GachanMaterialTex::wrapToIndex(tex->wrapu);
                int wrapv = GachanMaterialTex::wrapToIndex(tex->wrapv);

                SamplerState[stage] = SamplerStateWRAP[wrapu][wrapv];
            }
        }
    }
}

void Gachan3DShader::SetDiffuse(const Vec4& col)
{
    UniformBufferVertexPtr->Diffuse = col;
}

void Gachan3DShader::SetSpecular(const Vec4& col)
{
    UniformBufferVertexPtr->Specular = col;
}

void Gachan3DShader::SetShader(int shader)
{
    CurShader = shader;
}

void Gachan3DShader::SetZTest(bool b)
{
    DepthTest = (b)? 1 : 0;
}

void Gachan3DShader::SetFlipFace(bool b)
{
    FlipFace = b;//Gachan3DShader.cpp内でShader::ChangeFlipFace()で使われているので、無視できない。
    
    CullMode = (b)? MTLCullModeFront : MTLCullModeBack;
}

void Gachan3DShader::SetDoubleSideFace(bool b)
{
    DoubleSide = b;
}

void Gachan3DShader::SetWVPConst()
{
    UniformBufferVertexPtr->LPMatrix = MatLP.GetTranspose();
    UniformBufferVertexPtr-> WMatrix = MatW. GetTranspose();
    UniformBufferVertexPtr->VPMatrix = MatVP.GetTranspose();
}


#if MERGEDRAW
int MergeDrawEmptyConstantIndex()
{
    for (int i = 0; i < MergeSemaphoreNum; i++) {
        if (UniformBufferUse[i] == 0) {
            return i;
        }
    }
#ifdef DEBUG
    printf("metalshader.mm MergeDrawEmptyConstantIndex ERROR\n");
    while (1) {}
#endif
    return -1;
}


void MergeDrawInit()
{
    MergeIdx = 0;
    UniformBufferVertexPtr = (UniformVertex*) UniformBufferVertex[MergeIdx][0].contents;
}
void MergeDrawCopyUniform(int mergeidx, int drawidx)
{
    UniformVertex* vsc = UniformBufferVertexPtr;
    UniformBufferVertexPtr = (UniformVertex*) UniformBufferVertex[mergeidx][drawidx].contents;
    memcpy(UniformBufferVertexPtr, vsc, sizeof(UniformVertex));
}
void MergeDrawStart(bool firstdraw)
{
    dispatch_semaphore_wait(MergeSemaphore, DISPATCH_TIME_FOREVER);
    MergeIdx = MergeDrawEmptyConstantIndex();
    
    UniformBufferUse[MergeIdx] = 1;
    MergeDrawCopyUniform(MergeIdx, 0);
    
    id<MTLCommandQueue> commandQueue = GachanMetalPass::GetCommandQueue();
    MergeCommandBuffer = [commandQueue commandBuffer];
    MergeRenderEncoder = [MergeCommandBuffer renderCommandEncoderWithDescriptor:GachanMetalPass::GetPassDesc()];
    MergeDrawCount = 0;
    
    if (firstdraw) {
        GachanMetalPass::SetRenderPassDesc_LoadRenderTarget();
    }
}

//static int TestCount = 0;
void MergeDrawEnd()
{
    //使わなくてもリリース前にendEncodingしておかないと、
    //failed assertion `Command encoder released without endEncoding'が出てハングする。
    [MergeRenderEncoder endEncoding];
    
    
    if (MergeDrawCount == 0) {
#if 1//USE_MAC
        //macではこれがないと、数ループ後に停止する
        [MergeCommandBuffer commit];
#endif
        UniformBufferUse[MergeIdx] = 0;
        dispatch_semaphore_signal(MergeSemaphore);
        return;
    }
    
    __block dispatch_semaphore_t block_sema = MergeSemaphore;
    int useidx = MergeIdx;
    [MergeCommandBuffer addCompletedHandler:^(id<MTLCommandBuffer> buffer)
     {
         UniformBufferUse[useidx] = 0;
         dispatch_semaphore_signal(block_sema);
     }];
    [MergeCommandBuffer commit];
}

void Gachan3DShader::DrawIndex(const void* vbuff, int vnum, const void* ibuff, int primnum)
{
    SetWVPConst();
    
    [MergeRenderEncoder pushDebugGroup:@"Gachan3DShader::DrawIndex"];
    
    [MergeRenderEncoder setFrontFacingWinding:MTLWindingClockwise];
    [MergeRenderEncoder setCullMode:(DoubleSide)? MTLCullModeNone : CullMode];
    
    if (Gachan3DPass::GetPass() == Gachan3DPass::DRAW_SHADOWMAP) {
        int verttype = Gachan3DShader::ShaderList[CurShader].VertType;
        [MergeRenderEncoder setRenderPipelineState:PipelineStateShadowMap[verttype]];
    }
    else {
        [MergeRenderEncoder setRenderPipelineState:PipelineState[CurShader][AlphaBlend]];
    }
    [MergeRenderEncoder setDepthStencilState:GachanMetalPass::GetDepthStencilState(DepthTest)];
    
    id<MTLBuffer> vb = (__bridge id<MTLBuffer>)vbuff;//(__bridge_transferを使うと解放されてしまう)
    id<MTLBuffer> ib = (__bridge id<MTLBuffer>)ibuff;//(__bridge_transferを使うと解放されてしまう)
    
    [MergeRenderEncoder setVertexBuffer:vb                                offset:0 atIndex:0];
    [MergeRenderEncoder setVertexBuffer:UniformBufferVertex[MergeIdx][MergeDrawCount] offset:0 atIndex:1];
    
    //[MergeRenderEncoder setFragmentBuffer:UniformBufferPixel[ConstantIdx][MergeDrawCount] offset:0 atIndex:0];

    for (int i = 0; i < DX3DTEX_NUM; i++) {
        if (Texture[i]) {
            [MergeRenderEncoder setFragmentTexture:Texture[i]           atIndex:i];
            [MergeRenderEncoder setFragmentSamplerState:SamplerState[i] atIndex:i];
        }
    }
    
    [MergeRenderEncoder drawIndexedPrimitives:MTLPrimitiveTypeTriangle
                                   indexCount:primnum*3
                                    indexType:MTLIndexTypeUInt16
                                  indexBuffer:ib
                            indexBufferOffset:0];
    
    
    [MergeRenderEncoder popDebugGroup];
    
    
    
    MergeDrawCount++;
    if (MergeDrawCount == MergeDrawMax) {
        MergeDrawEnd();
        MergeDrawStart(false);
    }
    else {
        MergeDrawCopyUniform(MergeIdx, MergeDrawCount);
    }
}



#else

//コンパイル通すだけのもの
void MergeDrawStart(bool firstdraw)
{
}
//コンパイル通すだけのもの
void MergeDrawEnd()
{
}

void Gachan3DShader::DrawIndex(const void* vbuff, int vnum, const void* ibuff, int primnum)
{
    SetWVPConst();
    
    //-------
    id<MTLCommandQueue>  commandQueue  = GachanMetalPass::GetCommandQueue();
    id<MTLCommandBuffer> commandBuffer = [commandQueue commandBuffer];
    id<MTLRenderCommandEncoder> renderEncoder = [commandBuffer renderCommandEncoderWithDescriptor:GachanMetalPass::GetPassDesc()];
    
    GachanMetalPass::SetRenderPassDesc_LoadRenderTarget();
    //-------
    
    [renderEncoder pushDebugGroup:@"Shader::DrawIndex"];
    
    [renderEncoder setFrontFacingWinding:MTLWindingClockwise];
    [renderEncoder setCullMode:(DoubleSide)? MTLCullModeNone : CullMode];
    [renderEncoder setRenderPipelineState:PipelineState[CurShader][AlphaBlend]];
    [renderEncoder setDepthStencilState:GachanMetalPass::GetDepthStencilState(DepthTest)];
    
    id<MTLBuffer> vb = (__bridge id<MTLBuffer>)vbuff;//(__bridge_transferを使うと解放されてしまう)
    id<MTLBuffer> ib = (__bridge id<MTLBuffer>)ibuff;//(__bridge_transferを使うと解放されてしまう)
    
    [renderEncoder setVertexBuffer:vb                                offset:0 atIndex:0];
    [renderEncoder setVertexBuffer:UniformBufferVertex offset:0 atIndex:1];
    
    [renderEncoder drawIndexedPrimitives:MTLPrimitiveTypeTriangle
                                   indexCount:primnum*3
                                    indexType:MTLIndexTypeUInt16
                                  indexBuffer:ib
                            indexBufferOffset:0];
    
    
    [renderEncoder popDebugGroup];
    
    //-------
    [renderEncoder endEncoding];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];//block
    //-------
}
#endif

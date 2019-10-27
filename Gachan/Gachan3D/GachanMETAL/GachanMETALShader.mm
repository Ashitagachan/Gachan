//
// GachanMETALShader.mm
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#import <Metal/Metal.h>
#include "Gachan3DObject.h"
#include "Gachan3DShader.h"
#include "GachanMETALShaderTypes.h"

#import "GachanMETALBase.h"
#include "GachanMETALPass.h"

static NSBundle* MetalShaderBundle   = NULL;

Gachan3DShader::Table Gachan3DShader::ShaderList[Gachan3DShader::SHADER_NUM] = {
    { Gachan3DVertex::TYPE_VN,   (const unsigned int*) "vs_default",   (const unsigned int*) "ps_default"      },
    { Gachan3DVertex::TYPE_VN,   (const unsigned int*) "vs_defaultNL", (const unsigned int*) "ps_defaultNL"    },
};

MTLVertexDescriptor* VertexDesc[Gachan3DVertex::TYPES_NUM];

//SHADER
id <MTLFunction>    VertexShader[Gachan3DShader::SHADER_NUM];
id <MTLFunction>    PixelShader [Gachan3DShader::SHADER_NUM];

//PIPELINESTATE and RENDERSTATE
static MTLCullMode CullMode;
static bool DoubleSide = false;
static int  AlphaBlend = 1;//0:Off 1:ON
static int  DepthTest  = 1;//0:Off 1:ON

id <MTLRenderPipelineState> PipelineState[Gachan3DShader::SHADER_NUM][2];//0:AlphaBlend OFF  1:AlphaBlend ON



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
    
        {//VN
            int offset = 0;
            int index  = 0;
            VertexDesc[shader].attributes[index].format      = MTLVertexFormatFloat3;//V POS
            VertexDesc[shader].attributes[index].offset      = offset;
            VertexDesc[shader].attributes[index].bufferIndex = 0;
            offset += 12;
            index++;
            VertexDesc[shader].attributes[index].format      = MTLVertexFormatFloat3;//N NORMAL
            VertexDesc[shader].attributes[index].offset      = offset;
            VertexDesc[shader].attributes[index].bufferIndex = 0;
            offset += 12;
            index++;

            
            VertexDesc[shader].layouts[0].stride = offset;
            VertexDesc[shader].layouts[0].stepRate = 1;
            VertexDesc[shader].layouts[0].stepFunction = MTLVertexStepFunctionPerVertex;
        }
    
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
    
    CurShader = -1;
    
    
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
    }
    for (int i = 0; i < Gachan3DVertex::TYPES_NUM; i++) {
        VertexDesc[i] = nil;
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
    [MergeRenderEncoder setRenderPipelineState:PipelineState[CurShader][AlphaBlend]];
    [MergeRenderEncoder setDepthStencilState:GachanMetalPass::GetDepthStencilState(DepthTest)];
    
    id<MTLBuffer> vb = (__bridge id<MTLBuffer>)vbuff;//(__bridge_transferを使うと解放されてしまう)
    id<MTLBuffer> ib = (__bridge id<MTLBuffer>)ibuff;//(__bridge_transferを使うと解放されてしまう)
    
    [MergeRenderEncoder setVertexBuffer:vb                                offset:0 atIndex:0];
    [MergeRenderEncoder setVertexBuffer:UniformBufferVertex[MergeIdx][MergeDrawCount] offset:0 atIndex:1];
    
    
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

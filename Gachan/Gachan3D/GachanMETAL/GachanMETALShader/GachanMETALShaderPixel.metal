//
// GachanMETALShaderPixel.metal
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include <metal_stdlib>
using namespace metal;

#include "GachanMETALShaderTypes.h"


#define SHADOW_BIAS          (0.0001)
#define SHADOW_COLOR         (0.1f)

//射影変換後のwは線形深度になる
//in
//    x,y coord
//    w depth

bool Sub_IsInsideShadow_(float4 shadowtex, depth2d<float> TexShadowMap, sampler TexShadowMapsmp)
{
    float2 ShadowTexC = 0.5 * shadowtex.xy / shadowtex.w + float2( 0.5, 0.5 );
    ShadowTexC.y = 1.0f - ShadowTexC.y;
    float shadowmap = tex2DDepth(TexShadowMap, ShadowTexC);

    float depth = shadowtex.z / shadowtex.w - SHADOW_BIAS;
    if (depth > shadowmap) {
        return true;
    }
    return false;
}
#define Sub_IsInsideShadow(coord, tex)  Sub_IsInsideShadow_(coord, tex, tex##smp)



fragment PS_OUTPUT ps_default(VS_OUTPUT in [[stage_in]],
                              TextureDepth(TexShadowMap, DX3DTEX7_DYNAMICSHADOW)
                              )
{
    PS_OUTPUT Out;
    
    Out.col = in.col;
    
    if (Sub_IsInsideShadow(in.shadowtex, TexShadowMap)) {//compare with depth texture and
        Out.col.rgb -= SHADOW_COLOR;
    }
    
    return Out;
}




fragment PS_OUTPUT  ps_texa(VS_OUTPUT in [[stage_in]],
                            constant UniformPixel & uniforms [[buffer(0)]],
                            Texture(Tex0, DX3DTEX0_OBJECT),//ColorMap
                            TextureDepth(TexShadowMap, DX3DTEX7_DYNAMICSHADOW)
                            )
{
    PS_OUTPUT Out;
    
    Out.col = tex2D(Tex0, in.tex) * in.col;
    if (Out.col.a < 0.01) {
        discard;
    }
    
    if (Sub_IsInsideShadow(in.shadowtex, TexShadowMap)) {
        Out.col.rgb -= SHADOW_COLOR;
    }
    return Out;
}






fragment PS_OUTPUT ps_defaultNL(VS_OUTPUT in [[stage_in]],
                                TextureDepth(TexShadowMap, DX3DTEX7_DYNAMICSHADOW)
                                )
{
    PS_OUTPUT Out;
    
    Out.col = in.col;

    if (Sub_IsInsideShadow(in.shadowtex, TexShadowMap)) {//compare with depth texture and
        Out.col.rgb -= SHADOW_COLOR;
    }

    return Out;
}


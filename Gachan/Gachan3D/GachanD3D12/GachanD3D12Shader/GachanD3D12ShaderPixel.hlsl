//
// GachanD3D12ShaderPixel.hlsl
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//



#include "GachanD3D12ShaderTypes.h"



#define SHADOW_BIAS          (0.0001)
#define SHADOW_COLOR         (0.1f)



//射影変換後のwは線形深度になる
//in
//    x,y coord
//    w depth
bool Sub_IsInsideShadow(float4 shadowtex)
{
	float2 ShadowTexC = 0.5 * shadowtex.xy / shadowtex.w + float2(0.5, 0.5);
	ShadowTexC.y = 1.0f - ShadowTexC.y;
	float shadowmap = tex2D(TexShadowMap, ShadowTexC);

	float depth = shadowtex.z / shadowtex.w - SHADOW_BIAS;
	if (depth > shadowmap) {
		return true;
	}
	return false;
}


PS_OUTPUT ps_default(VS_OUTPUT In)
{
    PS_OUTPUT Out;
    
    Out.col = In.col;

	if (Sub_IsInsideShadow(In.shadowtex)) {//compare with depth texture and
		Out.col.rgb -= SHADOW_COLOR;
	}

    return Out;
}

PS_OUTPUT ps_defaultNL(VS_OUTPUT In)
{
	PS_OUTPUT Out;

	Out.col = In.col;

	if (Sub_IsInsideShadow(In.shadowtex)) {//compare with depth texture and
		Out.col.rgb -= SHADOW_COLOR;
	}

	return Out;
}


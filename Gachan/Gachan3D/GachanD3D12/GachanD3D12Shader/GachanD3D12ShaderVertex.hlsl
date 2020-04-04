//
// GachanD3D12ShaderVertex.hlsl
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "GachanD3D12ShaderTypes.h"


float4 mul(float4 a, float4 mat[4])
{
    float4 ret;
    ret.x = dot(a, mat[0]);
    ret.y = dot(a, mat[1]);
    ret.z = dot(a, mat[2]);
    ret.w = dot(a, mat[3]);
    return ret;
}
float3 mul(float4 a, float4 mat[3])
{
    float3 ret;
    ret.x = dot(a, mat[0]);
    ret.y = dot(a, mat[1]);
    ret.z = dot(a, mat[2]);
    return ret;
}

float3 mul(float3 a, float4 mat[3])
{
    float3 ret;
    ret.x = dot(vec4(a, 0.0), mat[0]);
    ret.y = dot(vec4(a, 0.0), mat[1]);
    ret.z = dot(vec4(a, 0.0), mat[2]);
    return ret;
}

//newly added 2011.10.15
float3 mul(float3 a, float4 mat[4])
{
    float3 ret;
    ret.x = dot(vec4(a, 0.0), mat[0]);
    ret.y = dot(vec4(a, 0.0), mat[1]);
    ret.z = dot(vec4(a, 0.0), mat[2]);
    return ret;
}





struct VS_POSCOL
{
    float4 pos;
    float4 col;
    float2 texr;
    float3 texc;
    float2 depth;
};

VS_POSCOL Sub_GetPosCol(float4 wpos, float3 wnorm)
{
#if 1 
	//diffuse lighting
	float lightAmt = saturate(dot(LightDir[0].xyz, wnorm));
	float4 lightColor = lightAmt * LightDCol[0] + LightAmb;

	// Calculate specular power
	float3 viewDir = normalize(Eye.xyz - wpos.xyz);
	float3 halfAngle = normalize(viewDir + LightDir[0].xyz);
	float4 spec = pow(saturate(dot(halfAngle, wnorm)), 64);

	// Return combined lighting
	VS_POSCOL vsout;
	vsout.col = lightColor * Diffuse + spec * Specular * Diffuse.a;


	vsout.pos = mul(wpos, VPMatrix);
	vsout.depth.xy = vsout.pos.ww;//w buffer float depth

	//texr/texcとりあえず仮 Gachanに持ってくとき整理する
	float3 eyevec, eyervec;
	eyevec = viewDir;//normalize(Eye.xyz - wpos.xyz);
	eyervec = 2.0 * dot(eyevec, wnorm) * wnorm - eyevec;
	vsout.texr = (-eyervec.zy + 1.0) * 0.5;//テクスチャの右側が手前の環境
	vsout.texc = eyervec;
#else
    //===================================================
    //Lighting Model
    //I = ka*Ia + kd*dot(N,L)*Id + ks*pow(dot(E,L),K)*Is
    //===================================================
    
    //===================================
    //ambient ka*Ia
    //===================================
    float3 amb = LightAmb.rgb * Diffuse.rgb;
    
    //===================================
    //diffuse kd*dot(N,L)*Id
    //===================================
    float dotnl = max(0.0, dot(wnorm, LightDir[0].xyz));
    float3 diff = LightDCol[0].rgb * dotnl * Diffuse.rgb;
    
    //===================================
    //specular ks*pow(dot(E,L),K)*Is
    //===================================
    float3 eyevec, eyervec;
    eyevec = normalize(Eye.xyz - wpos.xyz);
    eyervec = 2.0 * dot(eyevec, wnorm) * wnorm - eyevec;
    
    float dotes = max(0.0, dot(eyervec, LightDir[0].xyz));
    float3 spec = LightDCol[0].rgb * (dotes * dotes) * Specular.rgb;
    
    VS_POSCOL vsout;
    //===================================
    //I = ambient + diffuse + specular
    //===================================
    vsout.col.rgb = amb + diff + spec;
    vsout.col.rgb = min(float3(1.0, 1.0, 1.0), vsout.col.rgb);
    vsout.col.a = Diffuse.a;
    
    vsout.pos = mul(wpos, VPMatrix);
    vsout.texr = (-eyervec.zy + 1.0) * 0.5;//テクスチャの右側が手前の環境
    vsout.texc = eyervec;
    vsout.depth.xy = vsout.pos.ww;//w buffer float depth
#endif
    return vsout;
}

//use no light
VS_POSCOL Sub_GetPosColNL(float4 wpos, float3 wnorm)
{
	VS_POSCOL vsout;
	vsout.pos = mul(wpos, VPMatrix);
	vsout.col.rgba = Diffuse.rgba;
	vsout.depth.xy = vsout.pos.ww;//w buffer float depth

	return vsout;
}


//===================================================================
// Shadow Map function
//===================================================================

#define DX3DSHADERSUB_SHADOW_VERTEXDIV    (0)

//射影変換後のwは線形深度になる
//out
//    x,y coord
//    w depth
float4 Sub_GetShadowMapTexcoord(float4 wpos)
{
	float4 tex;
	tex = mul(wpos, LPMatrix);
#if DX3DSHADERSUB_SHADOW_VERTEXDIV
	tex.xy = 0.5 * tex.xy / tex.w + float2(0.5, 0.5);
	tex.y = 1.0 - tex.y;
#endif
	return tex;
}



float4 vs_shadow_vn(const VS_INPUT_VN input) : SV_POSITION
{
	float4 wpos = mul(inPos, WMatrix);
	wpos = mul(wpos, VPMatrix);
	return wpos;
}

//ピクセルシェーダps_shadowは存在しない。


//===================================================================
// vertex shader main
//===================================================================


VS_OUTPUT vs_default(const VS_INPUT_VN input)
{
    float4 wpos  = mul(inPos, WMatrix);
    float3 wnorm = normalize(mul(inNormal, WMatrix));
    
    VS_POSCOL PosCol;
    PosCol = Sub_GetPosCol(wpos, wnorm);
    
    VS_OUTPUT Out;
    Out.pos = PosCol.pos;
    Out.col = PosCol.col;
	Out.shadowtex = Sub_GetShadowMapTexcoord(wpos);

    return Out;
}

VS_OUTPUT  vs_defaultNL(const VS_INPUT_VN input)
{
	float4 wpos = mul(inPos, WMatrix);
	float3 wnorm = normalize(mul(inNormal, WMatrix));

	VS_POSCOL PosCol;
	PosCol = Sub_GetPosColNL(wpos, wnorm);

	VS_OUTPUT Out;
	Out.pos = PosCol.pos;
	Out.col = PosCol.col;
	Out.shadowtex = Sub_GetShadowMapTexcoord(wpos);

	return Out;
}



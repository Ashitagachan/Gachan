//
// GachanD3D12ShaderTypes.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#ifndef __GACHAND3D12SHADERTYPES_H__
#define __GACHAND3D12SHADERTYPES_H__


#ifdef __GACHAN3DSHADER_H__

#include "GachanMathVector.h"
#include "GachanMathMatrix.h"

class UniformVertex 
{
public:
	float4x4 WMatrix;
	float4x4 VPMatrix;
	float4   Diffuse;
	float4   Specular;
	float4   Eye;
	float4   LightDir[1];//注意：ここではLightDirは光源からの方向ベクトル
	float4   LightDCol[1];
	float4   LightAmb;
};

#else
//for hlsl shaders

cbuffer UniformVertex : register(b0)
{
    float4x4 WMatrix         : packoffset(c0);
    float4x4 VPMatrix        : packoffset(c4);
    float4   Diffuse         : packoffset(c8);
    float4   Specular        : packoffset(c9);
    float4   Eye             : packoffset(c10);
    float4   LightDir[1]     : packoffset(c11);//注意：ここではLightDirは光源からの方向ベクトル
    float4   LightDCol[1]    : packoffset(c12);    
    float4   LightAmb        : packoffset(c13);
};



struct VS_INPUT_VN
{
    float3 _inPos     : POSITION;
    float3 _inNormal  : NORMAL;
};

struct VS_INPUT_VNW
{
    float3 _inPos          : POSITION;
    float3 _inNormal       : NORMAL;
    float4 _inBlendWeights : BLENDWEIGHT;
    int4   _inBlendIndices : BLENDINDICES;//metalではchar4
};

struct VS_INPUT_VNUV
{
    float3 _inPos    : POSITION;
    float3 _inNormal : NORMAL;
    float2 _inTex    : TEXCOORD;
};

struct VS_INPUT_VNUVW
{
    float3 _inPos          : POSITION;
    float3 _inNormal       : NORMAL;
    float2 _inTex          : TEXCOORD;
    float4 _inBlendWeights : BLENDWEIGHT;
    int4   _inBlendIndices : BLENDINDICES;//metalではchar4
};

#define inPos          float4(input._inPos, 1)
#define inNormal       input._inNormal
#define inTex          input._inTex
#define inBlendWeights input._inBlendWeights
#define inBlendIndices input._inBlendIndices





struct VS_OUTPUT
{
    float4 pos         : SV_POSITION;   // vertex position
    float4 col         : VTX_COLOR;     // vertex diffuse color (note that COLOR0 is clamped from 0..1)
};

struct PS_OUTPUT
{
    float4 col    : SV_TARGET0;   //: COLOR0; // Pixel color
};

//#define Texture(tex, no) texture2d<half> tex [[texture(no)]], sampler tex##smp [[sampler(no)]]

#define tex2D(tex, texcoord)  (float4)tex.Sample(tex##smp, texcoord)


#define vec2 float2
#define vec3 float3
#define vec4 float4
//#define discard discard_fragment()

#endif
#endif






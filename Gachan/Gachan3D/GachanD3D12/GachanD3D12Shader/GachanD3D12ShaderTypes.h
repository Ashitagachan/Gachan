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
	float4x4 LPMatrix;
	float4x4 WMatrix;
	float4x4 VPMatrix;
	float4   Diffuse;
	float4   Specular;
	float4   Eye;
	float4   LightDir[1];
	float4   LightDCol[1];
	float4   LightAmb;
};

class UniformPixel
{
public:
	float4 PSGeneral;
	float4 PSGeneral2;
	float4 LightAmbPS;//metalでは"LightAmb" d3d9/12ではLightAmbPS

	//for NORMALMAP 2020/3/10
	float4 LightDirPS[2];
	float4 LightDColPS[2];
	float4 EyePS;
	float4 DiffusePS;
	float4 SpecularPS;
};

#else
//for hlsl shaders

cbuffer UniformVertex : register(b0)
{
	float4x4 LPMatrix        : packoffset(c0);
	float4x4 WMatrix         : packoffset(c4);
    float4x4 VPMatrix        : packoffset(c8);
    float4   Diffuse         : packoffset(c12);
    float4   Specular        : packoffset(c13);
    float4   Eye             : packoffset(c14);
    float4   LightDir[1]     : packoffset(c15);
    float4   LightDCol[1]    : packoffset(c16);    
    float4   LightAmb        : packoffset(c17);
};

cbuffer UniformPixel : register(b1)
{
	float4 PSGeneral         : packoffset(c0);
	float4 PSGeneral2        : packoffset(c1);
	float4 LightAmbPS        : packoffset(c2);//metalでは"LightAmb" d3d9/12ではLightAmbPS

	//for NORMALMAP 2020/3/10
	float4 LightDirPS[2]      : packoffset(c3);
	float4 LightDColPS[2]     : packoffset(c5);
	float4 EyePS              : packoffset(c7);
	float4 DiffusePS          : packoffset(c8);
	float4 SpecularPS         : packoffset(c9);
};


struct VS_INPUT_VN
{
    float3 _inPos     : POSITION;
    float3 _inNormal  : NORMAL;
};

struct VS_INPUT_VNUV
{
    float3 _inPos    : POSITION;
    float3 _inNormal : NORMAL;
    float2 _inTex    : TEXCOORD;
};

struct VS_INPUT_VNBTUV
{
	float3 _inPos      : POSITION;
	float3 _inNormal   : NORMAL;
	float3 _inBinormal : BINORMAL;
	float3 _inTangent  : TANGENT;
	float2 _inTex      : TEXCOORD;
};


#define inPos          float4(input._inPos, 1)
#define inNormal       input._inNormal
#define inBinormal     input._inBinormal
#define inTangent      input._inTangent
#define inTex          input._inTex
#define inBlendWeights input._inBlendWeights
#define inBlendIndices input._inBlendIndices





struct VS_OUTPUT
{
    float4 pos         : SV_POSITION;   // vertex position
    float4 col         : VTX_COLOR;     // vertex diffuse color (note that COLOR0 is clamped from 0..1)

	float3 diff        : VTX_COLOR1;//added for ps_texa
	float3 spec        : VTX_COLOR2;//added for ps_texa

	float2 tex         : TEXCOORD0;
	float4 shadowtex   : TEXCOORD3;
};

struct VS_OUTPUT_NM
{
	float4 pos         : SV_POSITION;   // vertex position
	float2 tex         : TEXCOORD0;

	//for NORMAL MAP
	float3 vpos        : POSITION;
	float3 normal      : NORMAL;          // NormalMap Tangent Space Coord
	float3 binormal    : BINORMAL;        // NormalMap Tangent Space Coord
	float3 tangent     : TANGENT;         // NormalMap Tangent Space Coord

	float4 shadowtex   : TEXCOORD3;
};

struct PS_OUTPUT
{
    float4 col    : SV_TARGET0;   //: COLOR0; // Pixel color
};

Texture2D       Tex0 : register(t0);
Texture2D       Tex1 : register(t1);
Texture2D       Tex2 : register(t2);
Texture2D       Tex3 : register(t3);
Texture2D       Tex4 : register(t4);
Texture2D       Tex5 : register(t5);
Texture2D       Tex6 : register(t6);
Texture2D       Tex7 : register(t7);
Texture2D       TexShadowMap : register(t7);

SamplerState    Tex0smp : register(s0);
SamplerState    Tex1smp : register(s1);
SamplerState    Tex2smp : register(s2);
SamplerState    Tex3smp : register(s3);
SamplerState    Tex4smp : register(s4);
SamplerState    Tex5smp : register(s5);
SamplerState    Tex6smp : register(s6);
SamplerState    Tex7smp : register(s7);
SamplerState    TexShadowMapsmp : register(s7);

//#define Texture(tex, no) texture2d<half> tex [[texture(no)]], sampler tex##smp [[sampler(no)]]

#define tex2D(tex, texcoord)  (float4)tex.Sample(tex##smp, texcoord)


#define vec2 float2
#define vec3 float3
#define vec4 float4
//#define discard discard_fragment()

#define ROUGHNESSPOW(roughness)  (1.005f * 1.02f * 0.96f * -128.0f * (roughness) + 128.0f)
#define ROUGHNESSLIMIT           (0.001f)

#endif
#endif






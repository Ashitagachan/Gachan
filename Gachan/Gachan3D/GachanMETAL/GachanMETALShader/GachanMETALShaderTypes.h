//
// GachanMETALShaderTypes.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANMETALSHADERTYPES_H__
#define __GACHANMETALSHADERTYPES_H__

#if 0
#ifdef __METAL_VERSION__
#else
#include "GachanMathMatrix.h"
#include "GachanMathVector.h"
#endif
#endif

#include "../../Gachan3DShaderConst.h"

typedef struct
{
    float4x4 LPMatrix;
    float4x4 WMatrix;
    float4x4 VPMatrix;
    float4   Diffuse;
    float4   Specular;
    float4   Eye;
    float4   LightDir [1];
    float4   LightDCol[1];
    float4   LightAmb;
} UniformVertex;


typedef struct
{
    float4 PSGeneral;//        : register(c0);
    float4 PSGeneral2;//       : register(c1);
    float4 LightAmb;//         : register(c2);
    float4 LightDir[2];//      : register(c3);
    float4 LightDCol[2];//     : register(c5);
    float4 Eye;//              : register(c7);
    float4 Diffuse;//          : register(c8);
    float4 Specular;//         : register(c9);
} UniformPixel;


#ifdef __METAL_VERSION__

#define LPMatrix     uniforms.LPMatrix
#define WMatrix      uniforms.WMatrix
#define VPMatrix     uniforms.VPMatrix
#define Diffuse      uniforms.Diffuse
#define Specular     uniforms.Specular
#define Eye          uniforms.Eye
#define LightDir     uniforms.LightDir
#define LightDCol    uniforms.LightDCol
#define LightAmb     uniforms.LightAmb


struct VS_INPUT_VN
{
    float3 inPos     [[attribute(0)]];
    float3 inNormal  [[attribute(1)]];
};

struct VS_INPUT_VNUV
{
    float3 inPos     [[attribute(0)]];
    float3 inNormal  [[attribute(1)]];
    float2 inTex     [[attribute(2)]];
};

struct VS_INPUT_VNBTUV
{
    float3 inPos      [[attribute(0)]];
    float3 inNormal   [[attribute(1)]];
    float3 inBinormal [[attribute(2)]];
    float3 inTangent  [[attribute(3)]];
    float2 inTex      [[attribute(4)]];
};

#define inPos          float4(in.inPos, 1)
#define inNormal       in.inNormal
#define inBinormal     in.inBinormal
#define inTangent      in.inTangent
#define inTex          in.inTex
#define inBlendWeights in.inBlendWeights
#define inBlendIndices in.inBlendIndices


struct VS_OUTPUT
{
    float4 pos [[position]];
    float4 col;
    float3 diff;//added for ps_texa
    float3 spec;//added for ps_texa
    float2 tex;
    float4 shadowtex;
};

struct VS_OUTPUT_NM
{
    float4 pos [[position]];
    float2 tex;
    
    //for NORMAL MAP
    float3 vpos;
    float3 normal;
    float3 binormal;
    float3 tangent;
    
    float4 shadowtex;
};

struct PS_OUTPUT
{
    float4 col   [[color(0)]];
};

#define Texture(tex, no) texture2d<half> tex [[texture(no)]], sampler tex##smp [[sampler(no)]]
#define tex2D(tex, texcoord)  (float4)tex.sample(tex##smp, texcoord)

#define TextureDepth(tex, no) depth2d<float> tex [[texture(no)]], sampler tex##smp [[sampler(no)]]
#define tex2DDepth(tex, texcoord)  (float)tex.sample(tex##smp, texcoord)


#define vec2 float2
#define vec3 float3
#define vec4 float4
#define discard discard_fragment()

#define ROUGHNESSPOW(roughness)  (1.005f * 1.02f * 0.96f * -128.0f * (roughness) + 128.0f)
#define ROUGHNESSLIMIT           (0.001f)

#endif
#endif

//
// GachanMETALShaderTypes.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANMETALSHADERTYPES_H__
#define __GACHANMETALSHADERTYPES_H__

#ifdef __METAL_VERSION__
#else
#include "GachanMathMatrix.h"
#include "GachanMathVector.h"
#endif

typedef struct
{
    float4x4 WMatrix;
    float4x4 VPMatrix;
    float4   Diffuse;
    float4   Specular;
    float4   Eye;
    float4   LightDir [1];//注意：ここではLightDirは光源からの方向ベクトル
    float4   LightDCol[1];
    float4   LightAmb;
} UniformVertex;

#ifdef __METAL_VERSION__

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

struct VS_INPUT_VNW
{
    float3 inPos            [[attribute(0)]];
    float3 inNormal         [[attribute(1)]];
    float4 inBlendWeights   [[attribute(2)]];
    char4  inBlendIndices   [[attribute(3)]];
};

struct VS_INPUT_VNUV
{
    float3 inPos     [[attribute(0)]];
    float3 inNormal  [[attribute(1)]];
    float2 inTex     [[attribute(2)]];
};

struct VS_INPUT_VNUVW
{
    float3 inPos          [[attribute(0)]];
    float3 inNormal       [[attribute(1)]];
    float2 inTex          [[attribute(2)]];
    float4 inBlendWeights [[attribute(3)]];
    char4  inBlendIndices [[attribute(4)]];
};

#define inPos          float4(in.inPos, 1)
#define inNormal       in.inNormal
#define inTex          in.inTex
#define inBlendWeights in.inBlendWeights
#define inBlendIndices in.inBlendIndices


struct VS_OUTPUT
{
    float4 pos [[position]];
    float4 col;
};

struct PS_OUTPUT
{
    float4 col   [[color(0)]];
};

#define Texture(tex, no) texture2d<half> tex [[texture(no)]], sampler tex##smp [[sampler(no)]]

#define tex2D(tex, texcoord)  (float4)tex.sample(tex##smp, texcoord)


#define vec2 float2
#define vec3 float3
#define vec4 float4
#define discard discard_fragment()


#endif
#endif

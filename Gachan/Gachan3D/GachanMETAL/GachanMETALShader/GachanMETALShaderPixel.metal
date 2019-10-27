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





fragment PS_OUTPUT ps_default(VS_OUTPUT in [[stage_in]])
{
    PS_OUTPUT Out;
    
    Out.col = in.col;
    
    return Out;
}

fragment PS_OUTPUT ps_defaultNL(VS_OUTPUT in [[stage_in]])
{
    PS_OUTPUT Out;
    
    Out.col = in.col;
    
    return Out;
}


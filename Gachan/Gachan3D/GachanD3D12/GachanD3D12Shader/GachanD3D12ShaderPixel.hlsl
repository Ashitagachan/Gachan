//
// GachanD3D12ShaderPixel.hlsl
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//



#include "GachanD3D12ShaderTypes.h"






PS_OUTPUT ps_default(VS_OUTPUT In)
{
    PS_OUTPUT Out;
    
    Out.col = In.col;
    
    return Out;
}

PS_OUTPUT ps_defaultNL(VS_OUTPUT In)
{
	PS_OUTPUT Out;

	Out.col = In.col;

	return Out;
}


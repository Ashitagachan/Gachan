//
// GachanD3D12ShaderPixel.hlsl
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//



#include "GachanD3D12ShaderTypes.h"






//newly added 2020.3.10
float3 mulps(float3 a, float3x3 mat)
{
	float3 ret;
	ret.x = dot(a, mat[0]);
	ret.y = dot(a, mat[1]);
	ret.z = dot(a, mat[2]);
	return ret;
}






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


PS_OUTPUT  ps_texa(VS_OUTPUT In)
{
	PS_OUTPUT Out;

	float4 diffuse = tex2D(Tex0, In.tex);

	diffuse.rgb *= DiffusePS.rgb;


	float3 amb = LightAmbPS.rgb * diffuse.rgb;
	float3 diff = In.diff * diffuse.rgb;
	float3 spec = In.spec;

	Out.col.rgb = amb + diff + spec;
	Out.col.rgb = min(float3(1.0, 1.0, 1.0), Out.col.rgb);
	Out.col.a = diffuse.a * DiffusePS.a;

	if (Out.col.a < 0.01) {
		discard;
	}

	if (Sub_IsInsideShadow(In.shadowtex)) {
		Out.col.rgb -= SHADOW_COLOR;
	}
	return Out;
}




PS_OUTPUT  ps_texn(VS_OUTPUT_NM In)
{
	PS_OUTPUT Out;

	float4 diffuse = tex2D(Tex0, In.tex);
	float4 specular = SpecularPS;
	float4 normal = tex2D(Tex1, In.tex);
	float roughnesspow = ROUGHNESSPOW(specular.a);
	specular.a = 1;

	diffuse.rgb *= DiffusePS.rgb;

	//NORMAL MAP
	float3 normalvec = normal.xyz * 2.0f - 1.0f;
	normalvec = normalize(normalvec);

	float3x3 BTNMatrix = float3x3(In.tangent, In.binormal, In.normal);
	BTNMatrix = transpose(BTNMatrix);
	float3 Norm = normalize(mulps(normalvec, BTNMatrix)); //world space normal

	//===================================================
	//Lighting Model
	//I = ka*Ia + kd*dot(N,L)*Id + ks*pow(dot(E,L),K)*Is
	//===================================================

	//===================================
	//ambient ka*Ia
	//===================================
	float3 amb = LightAmbPS.rgb * diffuse.rgb;

	//===================================
	//diffuse kd*dot(N,L)*Id
	//===================================
	float dotnl = max(0.0, dot(Norm, LightDirPS[0].xyz));
	float3 diff = LightDColPS[0].rgb * dotnl * diffuse.rgb;

	//===================================
	//specular ks*pow(dot(E,L),K)*Is
	//===================================
	float3 eyevec, eyervec;
	eyevec = normalize(EyePS.xyz - In.vpos.xyz);
	eyervec = 2.0 * dot(eyevec, Norm) * Norm - eyevec;

	float dotes = dot(eyervec, LightDirPS[0].xyz);
	float3 spec = float3(0, 0, 0);
	if (dotes > ROUGHNESSLIMIT) {
		spec = LightDColPS[0].rgb * saturate(pow(dotes, roughnesspow)) * specular.rgb;
	}

	//===================================
	//I = ambient + diffuse + specular
	//===================================
	Out.col.rgb = amb + diff + spec;
	Out.col.rgb = min(float3(1.0, 1.0, 1.0), Out.col.rgb);
	Out.col.a = diffuse.a * DiffusePS.a;


	if (Out.col.a < 0.01) {
		discard;
	}

	if (Sub_IsInsideShadow(In.shadowtex)) {
		Out.col.rgb -= 0.2;
	}

	return Out;
}



PS_OUTPUT  ps_texsn(VS_OUTPUT_NM In)
{
	PS_OUTPUT Out;

	float4 diffuse = tex2D(Tex0, In.tex);
	float4 specular = tex2D(Tex1, In.tex);
	float4 normal = tex2D(Tex2, In.tex);
	float roughnesspow = ROUGHNESSPOW(specular.a * SpecularPS.a);//-45 * (Specular.a) + (150 * 0.3);
	specular.a = 1;

	diffuse.rgb *= DiffusePS.rgb;
	specular.rgb *= SpecularPS.rgb;

	//NORMAL MAP
	float3 normalvec = normal.xyz * 2.0f - 1.0f;
	normalvec = normalize(normalvec);

	float3x3 BTNMatrix = float3x3(In.tangent, In.binormal, In.normal);
	BTNMatrix = transpose(BTNMatrix);
	float3 Norm = normalize(mulps(normalvec, BTNMatrix)); //world space normal

	//===================================================
	//Lighting Model
	//I = ka*Ia + kd*dot(N,L)*Id + ks*pow(dot(E,L),K)*Is
	//===================================================

	//===================================
	//ambient ka*Ia
	//===================================
	float3 amb = LightAmbPS.rgb * diffuse.rgb;

	//===================================
	//diffuse kd*dot(N,L)*Id
	//===================================
	float dotnl = max(0.0, dot(Norm, LightDirPS[0].xyz));
	float3 diff = LightDColPS[0].rgb * dotnl * diffuse.rgb;

	//===================================
	//specular ks*pow(dot(E,L),K)*Is
	//===================================
	float3 eyevec, eyervec;
	eyevec = normalize(EyePS.xyz - In.vpos.xyz);
	eyervec = 2.0 * dot(eyevec, Norm) * Norm - eyevec;

	float dotes = dot(eyervec, LightDirPS[0].xyz);
	float3 spec = float3(0, 0, 0);
	if (dotes > ROUGHNESSLIMIT) {
		spec = LightDColPS[0].rgb * saturate(pow(dotes, roughnesspow)) * specular.rgb;
	}

	//===================================
	//I = ambient + diffuse + specular
	//===================================
	Out.col.rgb = amb + diff + spec;
	Out.col.rgb = min(float3(1.0, 1.0, 1.0), Out.col.rgb);
	Out.col.a = diffuse.a * DiffusePS.a;


	if (Out.col.a < 0.01) {
		discard;
	}

	if (Sub_IsInsideShadow(In.shadowtex)) {
		Out.col.rgb -= 0.2;
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


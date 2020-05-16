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
    
        float4 diffuse = tex2D(Tex0, in.tex);
        
        diffuse.rgb *= Diffuse.rgb;

        
        float3 amb = LightAmb.rgb * diffuse.rgb;
        float3 diff = in.diff * diffuse.rgb;
        float3 spec = in.spec;
    
        Out.col.rgb = amb + diff + spec;
        Out.col.rgb = min(float3(1.0, 1.0, 1.0), Out.col.rgb);
        Out.col.a = diffuse.a * Diffuse.a;

    
    
    if (Out.col.a < 0.01) {
        discard;
    }
    
    if (Sub_IsInsideShadow(in.shadowtex, TexShadowMap)) {
        Out.col.rgb -= SHADOW_COLOR;
    }
    return Out;
}




//DIFFUSE NORMALMAP
fragment PS_OUTPUT  ps_texn(VS_OUTPUT_NM in [[stage_in]],
                            constant UniformPixel & uniforms [[buffer(0)]],
                            Texture(Tex0, DX3DTEX0_OBJECT),//DIFFUSE MAP
                            Texture(Tex1, DX3DTEX1_NORMAL),//NORMAL MAP
                            TextureDepth(TexShadowMap, DX3DTEX7_DYNAMICSHADOW)
                            )
{
    PS_OUTPUT Out;
    
        
        float4 diffuse  = tex2D(Tex0, in.tex);
        float4 specular = Specular;//tex2D(Tex1, in.tex);
        float4 normal   = tex2D(Tex1, in.tex);
        float roughnesspow = ROUGHNESSPOW(specular.a);
        specular.a = 1;

        diffuse.rgb *= Diffuse.rgb;

        //NORMAL MAP
        float3 normalvec = normal.xyz * 2.0f - 1.0f;
        normalvec = normalize(normalvec);
        
        
        
        float3x3 BTNMatrix = float3x3( in.tangent, in.binormal, in.normal );
        BTNMatrix = transpose(BTNMatrix);
        float3 Norm = normalize( mulps( normalvec, BTNMatrix ) ); //world space normal
        
        //===================================================
        //Lighting Model
        //I = ka*Ia + kd*dot(N,L)*Id + ks*pow(dot(E,L),K)*Is
        //===================================================
            
        //===================================
        //ambient ka*Ia
        //===================================
        float3 amb = LightAmb.rgb * diffuse.rgb;
             
        //===================================
        //diffuse kd*dot(N,L)*Id
        //===================================
        float dotnl = max(0.0, dot(Norm, LightDir[0].xyz));
        float3 diff = LightDCol[0].rgb * dotnl * diffuse.rgb;
             
        //===================================
        //specular ks*pow(dot(E,L),K)*Is
        //===================================
        float3 eyevec, eyervec;
        eyevec = normalize(Eye.xyz - in.vpos.xyz);
        eyervec = 2.0 * dot(eyevec, Norm) * Norm - eyevec;
             
        float dotes = dot(eyervec, LightDir[0].xyz);
        float3 spec = float3(0,0,0);
        if (dotes > ROUGHNESSLIMIT) {
            spec = LightDCol[0].rgb * saturate(pow(dotes, roughnesspow)) * specular.rgb;
        }

        //===================================
        //I = ambient + diffuse + specular
        //===================================
        Out.col.rgb = amb + diff + spec;
        Out.col.rgb = min(float3(1.0, 1.0, 1.0), Out.col.rgb);
        Out.col.a = diffuse.a * Diffuse.a;


    if (Out.col.a < 0.01) {
        discard;
    }
    
    if (Sub_IsInsideShadow(in.shadowtex, TexShadowMap)) {
        Out.col.rgb -= SHADOW_COLOR;
    }
    
    return Out;
}

//DIFFUSE SPECULAR NORMALMAP
fragment PS_OUTPUT  ps_texsn(VS_OUTPUT_NM in [[stage_in]],
                            constant UniformPixel & uniforms [[buffer(0)]],
                            Texture(Tex0, DX3DTEX0_OBJECT),  //DIFFUSE MAP
                            Texture(Tex1, DX3DTEX1_SPECULAR),//SPECULAR MAP
                            Texture(Tex2, DX3DTEX2_NORMAL),  //NORMAL MAP
                            TextureDepth(TexShadowMap, DX3DTEX7_DYNAMICSHADOW)//DynamicShadowMap
                            )
{
    PS_OUTPUT Out;
    
        float4 diffuse  = tex2D(Tex0, in.tex);
        float4 specular = tex2D(Tex1, in.tex);
        float4 normal   = tex2D(Tex2, in.tex);
        float roughnesspow = ROUGHNESSPOW(specular.a * Specular.a);
        specular.a = 1.0f;
        
        diffuse.rgb  *= Diffuse.rgb;
        specular.rgb *= Specular.rgb;

        //NORMAL MAP
        float3 normalvec = normal.xyz * 2.0f - 1.0f;
        normalvec = normalize(normalvec);
        
        
        float3x3 BTNMatrix = float3x3( in.tangent, in.binormal, in.normal );
        BTNMatrix = transpose(BTNMatrix);
        float3 Norm = normalize( mulps( normalvec, BTNMatrix ) ); //world space normal

        //===================================================
        //Lighting Model
        //I = ka*Ia + kd*dot(N,L)*Id + ks*pow(dot(E,L),K)*Is
        //===================================================
        
        //===================================
        //ambient ka*Ia
        //===================================
        float3 amb = LightAmb.rgb * diffuse.rgb;
         
         //===================================
         //diffuse kd*dot(N,L)*Id
         //===================================
         float dotnl = max(0.0, dot(Norm, LightDir[0].xyz));
         float3 diff = LightDCol[0].rgb * dotnl * diffuse.rgb;
         
         //===================================
         //specular ks*pow(dot(E,L),K)*Is
         //===================================
         float3 eyevec, eyervec;
         eyevec = normalize(Eye.xyz - in.vpos.xyz);
         eyervec = 2.0 * dot(eyevec, Norm) * Norm - eyevec;
         
         float dotes = dot(eyervec, LightDir[0].xyz);
         float3 spec = float3(0,0,0);
         if (dotes > ROUGHNESSLIMIT) {
            spec = LightDCol[0].rgb * saturate(pow(dotes, roughnesspow)) * specular.rgb;
         }
         
         //===================================
         //I = ambient + diffuse + specular
         //===================================
         Out.col.rgb = amb + diff + spec;
         Out.col.rgb = min(float3(1.0, 1.0, 1.0), Out.col.rgb);
         Out.col.a = diffuse.a * Diffuse.a;


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


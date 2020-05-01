//
// Gachan3DShader.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHAN3DSHADER_H__
#define __GACHAN3DSHADER_H__

#include "GachanMathMatrix.h"
#include "Gachan3DObject.h"




class Gachan3DShader
{
public:
    enum {
        SHADER_DEFAULT,
        SHADER_TEXA,
        SHADER_DEFAULTNL,
        SHADER_NUM,
        
        SHADER_SHADOWMAP_NUM = Gachan3DVertex::TYPES_NUM,
    };
    struct Table {
        int           VertType;
        const unsigned int*   VSBuffer;
#if D3D12
        unsigned int          VSSize;
#endif
        const unsigned int*   PSBuffer;
#if D3D12
        unsigned int          PSSize;
#endif
    };
    static Table    ShaderList[SHADER_NUM];
    static Table    ShaderListShadowMap[SHADER_SHADOWMAP_NUM];

    



    static bool Create();
    static bool Release();
    
    static int   CurShader;
    static Mat44 MatW, MatV, MatP, MatVP, MatWV, MatWVP, MatLP;
    static bool  FlipFace;
    
    //from camera
    static void SetProj(const Mat44& mat);
    static void SetView(const Mat44& mat);
    static void SetEye(const Vec& eye);
    static void SetLightProj();
    //from object
    static void SetWorld(const Mat44& mat);
    //from light
    static void SetLightAmbient(const Vec& col);
    static void SetLightDirection(const Vec& dir, const Vec& col);
    static Vec GetLightDirection();
    //from material
    static void SetDiffuse(const Vec4& col);
    static void SetSpecular(const Vec4& col);
    static void SetShader(int shader);
    static void SetMaterial(const GachanMaterial* mat);
    static void SetTexture(const GachanMaterialTex* tex);
    static void SetTexture(int stage, const GachanMaterialTex* tex);

    static void SetZTest(bool b);
    static void SetAlpha(bool b);
    static void SetFlipFace(bool b);
    static void ChangeFlipFace();
    static void SetDoubleSideFace(bool b);

    static void SetWVPConst();
    static void DrawIndex(const void* vbuff, int vnum, const void* ibuff, int primnum);

};



#endif

//
// Gachan3DShader.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "Gachan3DShader.h"



int   Gachan3DShader::CurShader = -1;

Mat44 Gachan3DShader::MatW;
Mat44 Gachan3DShader::MatP;
Mat44 Gachan3DShader::MatV;
Mat44 Gachan3DShader::MatVP;
Mat44 Gachan3DShader::MatWV;
Mat44 Gachan3DShader::MatWVP;
Mat44 Gachan3DShader::MatLP;




//===============================================
//from camera
//===============================================
void Gachan3DShader::SetProj(const Mat44& mat)
{
    MatP    = mat;
    MatVP   = MatV * MatP;
    MatWVP  = MatW * MatVP;
}

void Gachan3DShader::SetView(const Mat44& mat)
{
    MatV    = mat;// * MatVTrans;
    MatVP   = MatV * MatP;
    MatWV   = MatW * MatV;
    MatWVP  = MatW * MatVP;
}



void Gachan3DShader::SetLightProj()
{
    MatLP = MatVP;
}

bool Gachan3DShader::FlipFace;

void Gachan3DShader::ChangeFlipFace()
{
    SetFlipFace(!FlipFace);
}




//===============================================
//from object
//===============================================
void Gachan3DShader::SetMaterial(const GachanMaterial* mat)
{
    SetDiffuse(mat->diffuse);
    SetSpecular(mat->specular);
    SetTexture( mat->texture);
    SetDoubleSideFace(mat->flag & GachanMaterial::FLG_DOUBLESIDE);
    SetShader(mat->shader);
}




void Gachan3DShader::SetWorld(const Mat44& mat)
{
    MatW    = mat;
    MatWV   = MatW * MatV;
    MatWVP  = MatW * MatVP;
}





void Gachan3DShader::SetTexture(const GachanMaterialTex* tex)
{
    //if (ShaderPP::isPreProcess) {
    //    return;
    //}
    
    if (tex) {
        Int texstage = 0;
        while (tex->tex) {
            if (tex->tex->tif) {
                SetTexture(texstage, tex);
            }
            texstage++;
            tex++;
        }
    }
    
}


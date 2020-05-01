//
// Gachan3DObject.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "Gachan3DShader.h"
#include "Gachan3DObject.h"
#include "Gachan3DMatrixStack.h"
#include "Gachan3DTex.h"

unsigned int Gachan3DVertex::Stride[TYPES_NUM] = {
    sizeof(VertexVN),
    sizeof(VertexVNUV),
};




void Gachan3DVertex::Freeze()
{
    {
        Mat44* mat = MatStack::Get();
        UInt stride = GetStride();
        
        //unsigned long is 64bit on 64bit iPhone
        //UChar* v = (UChar*) (Tsb::IsObj())? Tsb::Ptr(vertexoffset) : (UChar*)vertex;
        UChar* v = (UChar*)vertex;
        for (UInt i = 0; i < vertexnum; i++) {
            VertexVN* vert = (VertexVN*)v;
            vert->v = (vert->v) * (*mat);
            vert->n = (vert->n) * (*mat);
            v += stride;
        }
    }
}




bool GachanTex::Create()
{
    if (tif == (void*)0) {
        return Gachan3DTexture::CreateFromFile(&tif, name);
    }
    return true;
}

bool GachanTex::Release()
{
    if (tif) {
        Gachan3DTexture::Release(tif);
        tif = (void*)0;
    }
    return true;
}

void GachanMaterial::Create()
{
    GachanMaterialTex* tex = texture;
    if (tex) {
        while (tex->tex) {
            tex->tex->Create();
            tex++;
        }
    }
}
void GachanMaterial::Release()
{
    GachanMaterialTex* tex = texture;
    if (tex) {
        while (tex->tex) {
            tex->tex->Release();
            tex++;
        }
    }
}

void Gachan3DModel::Freeze()
{
    if (vertex) {
        vertex->Freeze();
    }
}
void Gachan3DModel::Create()
{
    if (vertex) {
        vertex->Create();
    }
    if (iif == (void*) 0) {
        if (index) {//index is not zero even when use as offset
            iif = Gachan3DIndex::Create(index, indexnum);
        }
    }
    if (material) {
        material->Create();
    }
}


void Gachan3DModel::Release()
{
    if (vertex) {
        vertex->Release();
    }
    if (iif) {
        Gachan3DIndex::Release(iif);
        iif = NULL;
    }
    if (material) {
        material->Release();
    }
}

void Gachan3DModel::Draw()
{
    if (material) {
        if (material->flag & GachanMaterial::FLG_HIDE) {
            return;
        }
        Gachan3DShader::SetAlpha(material->flag & GachanMaterial::FLG_ALPHABLEND);
        Gachan3DShader::SetMaterial(material);
    }
    if (vertex && index && iif) {
        Gachan3DShader::DrawIndex(vertex->vif, vertex->vertexnum, iif, indexnum/3);
    }
}


void Gachan3DObject::CreateSub()
{
    Gachan3DObject* obj = this;
    
    while (obj) {        
        if (obj->model) {
            Gachan3DModel* m = obj->model;
            
            while(!m->isTerminator()) {
                m->Create();
                m++;
            }
        }
        if (obj->child) {
            obj->child->CreateSub();
        }
        obj = obj->sibling;
    }
}

bool Gachan3DObject::CalcMatrixPoseAbsSub()
{
    Gachan3DObject* obj = this;

    while (obj) {
        MatStack::Push();
        
        obj->matrixpose = obj->trspose.Transform();
        
        MatStack::Mul(obj->matrixpose);

        if (obj->child) {
            obj->child->CalcMatrixPoseAbsSub();//recursive call
        }
        MatStack::Pop();
        obj = obj->sibling;
    }
    return true;
}


void Gachan3DObject::Create()
{
    Gachan3DObject* sib = sibling;
    sibling = NULL;

    CalcMatrixPoseAbsSub();

    CreateSub();
    
    sibling = sib;
}



void Gachan3DObject::ReleaseSub()
{
    Gachan3DObject* obj = this;
    
    while (obj) {
        if (obj->model) {
            Gachan3DModel* m = obj->model;
            
            while(!m->isTerminator()) {
                m->Release();
                m++;
            }
        }
        if (obj->child) {
            obj->child->ReleaseSub();
        }
        obj = obj->sibling;
    }
}

void Gachan3DObject::Release()
{
    Gachan3DObject* sib = sibling;
    sibling = NULL;
    
    ReleaseSub();
    
    sibling = sib;
}


void Gachan3DObject::FreezeSub()
{
    Gachan3DObject* obj = this;

    while (obj) {
        
        MatStack::Push();
        MatStack::Mul(obj->matrixpose);
    
        if (obj->model) {
            Gachan3DModel* m = obj->model;
            while(!m->isTerminator()) {
                m->Freeze();
                m++;
            }
        }

        if (obj->child) {
            obj->child->FreezeSub();
        }
        MatStack::Pop();

        obj->matrixpose.Clear();
        obj->trspose.Clear();

        obj = obj->sibling;
    }
}

void Gachan3DObject::Freeze()
{
    Gachan3DObject* sib = sibling;
    sibling = NULL;//warning! not Create sibling
    
    CalcMatrixPoseAbsSub();
    
    FreezeSub();
    
    sibling = sib;
}



static inline bool IsFlipFace(Mat44& mat)
{
    int minus = 0;
    if (mat.xx < 0.0f) {
        minus++;
    }
    if (mat.yy < 0.0f) {
        minus++;
    }
    if (mat.zz < 0.0f) {
        minus++;
    }
    return (minus & 1);
}
void Gachan3DObject::DrawSub()
{
    Gachan3DObject* obj = this;
    
    while (obj) {
        
        MatStack::Push();
        MatStack::Mul(obj->matrixpose);
        
        if (IsFlipFace(obj->matrixpose)) {
            Gachan3DShader::ChangeFlipFace();
        }
        
        MatStack::SetWorld();
        if (obj->model) {
            Gachan3DModel* m = obj->model;
            
            while(!m->isTerminator()) {
                m->Draw();
                m++;
            }
        }

        if (obj->child) {
            obj->child->DrawSub();
        }

        if (IsFlipFace(obj->matrixpose)) {
            Gachan3DShader::ChangeFlipFace();
        }

        MatStack::Pop();

        obj = obj->sibling;
    }
}

void Gachan3DObject::Draw()
{
    //ルートオブジェクトはsiblingを描画しない
    Gachan3DObject* sib = sibling;
    sibling = NULL;
    
    DrawSub();
    
    sibling = sib;
}

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

unsigned int Gachan3DVertex::Stride[TYPES_NUM] = {
    sizeof(VertexVN),
};

void Gachan3DVertex::ConvXYiZ()//maya座標系からGachan座標系へ変換
{
    if (flag & FLG_XYiZ) {
        return;
    }
    flag |= FLG_XYiZ;
    
    {
        unsigned int stride = Stride[vertextype];
        
        unsigned char* v = (unsigned char*) vertex;
        for (unsigned int i = 0; i < vertexnum; i++) {
            VertexVN* vert = (VertexVN*)v;
            vert->v.z = -(vert->v.z);
            vert->n.z = -(vert->n.z);
            v += stride;
        }
    }
}

void Gachan3DVertex::ConvUV()
{
}


void Gachan3DMaterial::Create()
{
}
void Gachan3DMaterial::Release()
{
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
        if (material->flag & Gachan3DMaterial::FLG_HIDE) {
            return;
        }
        Gachan3DShader::SetAlpha(material->flag & Gachan3DMaterial::FLG_ALPHABLEND);
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


void Gachan3DObject::Create()
{
    Gachan3DObject* sib = sibling;
    sibling = NULL;

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

void Gachan3DObject::DrawSub()
{
    Gachan3DObject* obj = this;
    
    while (obj) {
        
        MatStack::Push();
        //MatStack::Mul(obj->matrixpose);
        
        MatStack::SetWorld();
        if (obj->model) {
            Gachan3DModel* m = obj->model;
            
            while(!m->isTerminator()) {
                m->Draw();
                m++;
            }
            
            if (obj->child) {
                obj->child->DrawSub();
            }
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

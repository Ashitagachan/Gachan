//
// Gachan3DPrimitive.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan3DObject.h"
#include "Gachan3DObjectDefine.h"
#include "Gachan3DShader.h"
#include "Gachan3DPrimitive.h"
#include "Gachan3DMatrixStack.h"


namespace line {
#include "./Gachan3DPrimitive/line.tst"
}
namespace sphere {
#include "./Gachan3DPrimitive/sphere.tst"
}



bool isCreated = false;
void Gachan3DPrimitive::Create()
{
	if (!isCreated) {
        ((Gachan3DObject*)line::object_line__)->Create();
        ((Gachan3DObject*)sphere::object_pSphere1__)->Create();
		isCreated = true;
	}

}

void Gachan3DPrimitive::Release()
{
	if (isCreated) {
        ((Gachan3DObject*)line::object_line__)->Release();
        ((Gachan3DObject*)sphere::object_pSphere1__)->Release();
		isCreated = false;
	}
}


void Gachan3DPrimitive::DrawLine(const Vec* pos, const Vec* pos2, float scale, float r, float g, float b)
{
    Vec vec;
    vec = *pos2 - *pos;
    float length = vec.GetLength();
    if (length < 0.001f) {
        return;
    }
    vec.SetUnit();
    
    Mat44 rotxtrs;
    rotxtrs.Clear();
    rotxtrs.Translate(pos->x, pos->y, pos->z);
    
    Mat44 trszrot;
    trszrot.Clear();
    trszrot.ez = vec;
    trszrot.ey.Set(0.0f, 1.0f, 0.0f);
    trszrot.ex = trszrot.ey * trszrot.ez;
    if (trszrot.ex.GetLength2() < ValZERO) {
        trszrot.ey.Set(0.0f, 0.0f, -1.0f);
        trszrot.ex = trszrot.ey * trszrot.ez;
    }
    trszrot.ex.SetUnit();
    trszrot.ey = trszrot.ez * trszrot.ex;
    trszrot.ey.SetUnit();

    Mat44 scl;
    scl.Clear();
    scl.Scale(scale, scale, length);
    
    Mat44 world = scl * trszrot * rotxtrs;
    
    MatStack::Push(world);
    
    line::material_linecolor->diffuse.r = r;
    line::material_linecolor->diffuse.g = g;
    line::material_linecolor->diffuse.b = b;

    Gachan3DObject* obj = (Gachan3DObject*)line::object_line__;
    obj->Draw();
        
    MatStack::Pop();
}

void Gachan3DPrimitive::DrawSphere(const Vec* pos, Val rad, float r, float g, float b)
{

    sphere::material_spherecolor->diffuse.r = r;
    sphere::material_spherecolor->diffuse.g = g;
    sphere::material_spherecolor->diffuse.b = b;

    Mat44 world;
    world.Clear();
    world.et = *pos;
    world.Scale(rad*2.0f,rad*2.0f,rad*2.0f);
            
    MatStack::Push(world);
            
    sphere::object_pSphere1__->Draw();
            
    MatStack::Pop();
}


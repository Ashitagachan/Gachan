//
// GachanGameObject.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include <stdio.h>
#include <string.h>
#include <stdarg.h>

#include "GachanMathMatrix.h"
#include "GachanGameObject.h"
#include "Gachan3DObjectDefine.h"
#include "Gachan3DObject.h"
#include "Gachan3DShader.h"
#include "Gachan3DMatrixStack.h"
#include "Gachan3DText.h"


namespace grid {
#include "GachanGameObject/GachanGameObjectGrid.tst"
}
namespace basic00 {
#include "GachanGameObject/GachanGameObjectBasic00.tst"
}
namespace face00 {
#include "GachanGameObject/GachanGameObjectFace00.tst"
}
namespace shape00 {
#include "GachanGameObject/GachanGameObjectShape00.tst"
}
namespace block00 {
#include "GachanGameObject/GachanGameObjectBlock00.tst"
}
namespace arm {
#include "GachanGameObject/GachanGameObjectArm.tst"
}


static Gachan3DObject* objecttable[GachanGameObject::OBJECT::NUM] = {
    NULL,//NONE
    NULL,
    NULL,
    
    grid   ::object_Grid10x10__,
    grid   ::object_Grid20x20__,
    
    basic00::object_pCube1__,
    basic00::object_pSphere1__,
    basic00::object_pCone1__,
    basic00::object_pCylinder1__,
    basic00::object_pPlane1__,
    basic00::object_pPyramid1__,
    basic00::object_pTorus1__,
    basic00::object_pSolid1__,
    basic00::object_pHelix1__,
    
    face00 ::object_MaruChan__,
    face00 ::object_UnChan__,
    face00 ::object_TogeChan__,
    face00 ::object_StarChan__,
    face00 ::object_SlimeChan__,
    
    shape00 ::object_Rocket__,
    shape00 ::object_Arrow__,
    shape00 ::object_Cursor__,
    shape00 ::object_Balloon__,
    shape00 ::object_Missile__,

    block00 ::object_BrickA__,
    
    arm::object_ArmUpper_R___,
    arm::object_ArmLower_R___,
    arm::object_ArmHand_R___,

};
static Gachan3DMaterial* materialtable[GachanGameObject::OBJECT::NUM] = {
    NULL,//NONE
    NULL,
    NULL,
    
    grid   ::material_mGrid,
    grid   ::material_mGrid,
    
    basic00::material_mCube,
    basic00::material_mSphere,
    basic00::material_mCone,
    basic00::material_mCylinder,
    basic00::material_mPlane,
    basic00::material_mPyramid,
    basic00::material_mTorus,
    basic00::material_mSolid,
    basic00::material_mHelix,
    
    face00 ::material_mMaruChan,
    face00 ::material_mUnChan,
    face00 ::material_mTogeChan,
    face00 ::material_mStarChan,
    face00 ::material_mSlimeChan,
    
    shape00::material_mRocket,
    shape00::material_mArrow,
    shape00::material_mCursor,
    shape00::material_mBalloon,
    shape00::material_mMissile,

    block00::material_mBrick,//A

    arm::material_mArm,
    arm::material_mArm,
    arm::material_mArm,
};
void GachanGameObjectCreate()
{
    for (int i = 0; i < GachanGameObject::OBJECT::NUM; i++ ) {
        if (objecttable[i]) {
            objecttable[i]->Create();
        }
    }
    
    Gachan3DMaterial* gridmate;
    gridmate = materialtable[GachanGameObject::OBJECT::GRID10x10];
    if (gridmate) {
        gridmate->flag |= Gachan3DMaterial::FLG_DOUBLESIDE;
    }
    gridmate = materialtable[GachanGameObject::OBJECT::GRID20x20];
    if (gridmate) {
        gridmate->flag |= Gachan3DMaterial::FLG_DOUBLESIDE;
    }
}
void GachanGameObjectRelease()
{
    for (int i = 0; i < GachanGameObject::OBJECT::NUM; i++ ) {
        if (objecttable[i]) {
            objecttable[i]->Release();
        }
    }
}




void GachanGameObject::Clear()
{
    flag = 0;
    
    position.x = 0.0f;
    position.y = 0.0f;
    position.z = 0.0f;
    rotation.x = 0.0f;
    rotation.y = 0.0f;
    rotation.z = 0.0f;
    scale.x    = 1.0f;
    scale.y    = 1.0f;
    scale.z    = 1.0f;

    color.Set(1.0f, 1.0f, 1.0f, 1.0f);

    textsize         = 1.0f;
    textinterval     = 1.0f;
    textlineinterval = 1.0f;
}


void GachanGameObject::SetObject(OBJECT obj)
{
    object = obj;
}


void GachanGameObject::SetPosition(Vec pos)
{
    ResetFlag(FLAG_SETMATRIX);
    position = pos;
}
void GachanGameObject::SetPosition(Val posx, Val posy, Val posz)
{
    ResetFlag(FLAG_SETMATRIX);
    position.x = posx;
    position.y = posy;
    position.z = posz;
}
Vec  GachanGameObject::GetPosition()
{
    return position;
}



void GachanGameObject::SetRotation(ROTATIONORDER rotorder, Vec rot)
{
    ResetFlag(FLAG_SETMATRIX);
    rotationorder = rotorder;
    rotation = rot;
}
void GachanGameObject::SetRotation(ROTATIONORDER rotorder, Val rotx, Val roty, Val rotz)
{
    ResetFlag(FLAG_SETMATRIX);
    rotationorder = rotorder;
    rotation.x = rotx;
    rotation.y = roty;
    rotation.z = rotz;
}
Vec  GachanGameObject::GetRotation()
{
    return rotation;
}


void GachanGameObject::SetScale(Vec scl)
{
    ResetFlag(FLAG_SETMATRIX);
    scale = scl;
}
void GachanGameObject::SetScale(Val sclx, Val scly, Val sclz)
{
    ResetFlag(FLAG_SETMATRIX);
    scale.x = sclx;
    scale.y = scly;
    scale.z = sclz;
}
Vec  GachanGameObject::GetScale()
{
    return scale;
}


Mat44 GachanGameObject::GetMatrix()
{
    if (IsFlag(FLAG_SETMATRIX)) {
        return matrix;
    }
    
    matrix.Clear();
    matrix.Rotate(rotationorder, rotation.x, rotation.y, rotation.z);
    matrix.et = position;
    matrix.ex.SetLength(scale.x);
    matrix.ey.SetLength(scale.y);
    matrix.ez.SetLength(scale.z);
    return matrix;
}
void GachanGameObject::SetMatrix(Mat mat)
{
    SetFlag(FLAG_SETMATRIX);    
    matrix = mat;
}


void GachanGameObject::SetColor(GachanGame::COLOR col, Val a)
{
    Vec c = GachanGame::GetColor(col);
    color.r = c.r;
    color.g = c.g;
    color.b = c.b;
    color.a = a;
}
void GachanGameObject::SetColor(Vec4 col)
{
    color = col;
}
void GachanGameObject::SetColor(Val r, Val g, Val b, Val a)
{
    color.r = r;
    color.g = g;
    color.b = b;
    color.a = a;
}
Vec4  GachanGameObject::GetColor()
{
    return color;
}


//for TEXT
void GachanGameObject::SetTextParameter(Val tsize, Val tinterval, Val tlineinterval)
{
    textsize         = tsize;
    textinterval     = tinterval;
    textlineinterval = tlineinterval;
}







void GachanGameObject::DrawSub(const char* utf8char)
{
    Gachan3DMaterial* mate = materialtable[object];
    if (mate) {
        mate->diffuse.r = color.r;
        mate->diffuse.g = color.g;
        mate->diffuse.b = color.b;
    }
    
    
    MatStack::Push();
    
    Mat m = GetMatrix();
    MatStack::Mul(m);
    
    if (object == OBJECT::TEXT && utf8char) {
        Gachan3DText::SetParameter(textsize, textinterval, textlineinterval);
        Gachan3DText::SetColor(color.r, color.g, color.b, color.a);
        Gachan3DText::Draw(utf8char);
    }
    if (object != OBJECT::TEXT) {
        Gachan3DObject* obj = objecttable[object];
        if (obj) {
            obj->Draw();
        }
    }
    MatStack::Pop();
}

void GachanGameObject::Draw(const char* utf8char, ...)
{
    if (utf8char == NULL) {
        DrawSub(NULL);
        return;
    }
    //引数が0個の場合、単純にポインタを引き渡す(文字数制限が一応なくなる)。引数がある場合だけ文字列を作り直す。
    //しかし、直接引数個数は取れないので、utf8charの中の%を調べる(%%(%表示)も含めるので%があれば)。
    //vsprintf()も内部では%がくるたびにフォーマット処理をする、という動作のよう(たぶん)。
    //ASCIIコードはASCII以外の多バイトutf8コード中には含まれないので問題ない。
    //将来的に、vsprintfを使わず自前のフォーマット処理をTEXT描画ループの中に仕込んでしまいたい。
#if 1
    const char* p = utf8char;
    const char* percent = u8"%";//1byte code
    bool found = false;
    while (*p) {
        if (*p == *percent) {
            found = true;
            break;
        }
        p++;
    }
#else
    bool found = true;
#endif
    if (found) {
        const static int charmax = 1024*2;//フォーマット付きを使う場合には結果が2048バイト以内
        static char buffer[charmax];
        
        va_list ap;
        va_start(ap, utf8char);
        vsprintf(buffer, utf8char, ap);
        va_end(ap);
        
        if (strlen(buffer) >= charmax) {
            //error
            GachanGame::Log("Error GachanGameObject::Draw(const char* utf8char, ...) OVER TEXT LENGTH\n");
            GACHANGAMESTOP;
        }
        DrawSub(buffer);
    }
    else {
        DrawSub(utf8char);
    }
}

void GachanGameObject::Draw()
{
    DrawSub(NULL);
}




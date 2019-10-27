//
// Gachan3DMatrixStack.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan3DMatrixStack.h"
#include "Gachan3DShader.h"


const static int    MaxStack = 128;
static Mat44        Stack[MaxStack];
static int          CurMat = 0;

void Gachan3DMatrixStack::SetWorld()
{
    Gachan3DShader::SetWorld(Stack[CurMat]);
}


void Gachan3DMatrixStack::Push()
{
    CurMat++;
    Stack[CurMat] = Stack[CurMat-1];
    
#if MATSTACK_DEBUG
    if (mt::isnaninf(Stack[CurMat].xx)) {
        Stack[CurMat].xx = Stack[CurMat].xx;
    }
#endif
}
void Gachan3DMatrixStack::Push(const Mat44& mat)
{
    CurMat++;
    Stack[CurMat] = mat;
    
#if MATSTACK_DEBUG
    if (mt::isnaninf(Stack[CurMat].xx)) {
        Stack[CurMat].xx = Stack[CurMat].xx;
    }
#endif
}
void Gachan3DMatrixStack::Pop()
{
    CurMat--;
}
void Gachan3DMatrixStack::Mul(const Mat44& mat)
{
    Stack[CurMat] = mat * Stack[CurMat];
    
#if MATSTACK_DEBUG
    if (mt::isnaninf(Stack[CurMat].xx)) {
        Stack[CurMat].xx = Stack[CurMat].xx;
    }
#endif
}
Mat44* Gachan3DMatrixStack::Get()
{
#if MATSTACK_DEBUG
    if (mt::isnaninf(Stack[CurMat].xx)) {
        Stack[CurMat].xx = Stack[CurMat].xx;
    }
#endif
    return &Stack[CurMat];
}


void Gachan3DMatrixStack::Set(const Mat44& mat)
{
#if MATSTACK_DEBUG
    if (mt::isnaninf(Stack[CurMat].xx)) {
        Stack[CurMat].xx = Stack[CurMat].xx;
    }
#endif
    Stack[CurMat] = mat;
}


void Gachan3DMatrixStack::Create()
{
    CurMat = 0;
    Stack[0].Clear();
}



//
// Gachan3DCamera.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan3DCamera.h"
#include "GachanMathMatrix.h"
#include "Gachan3DShader.h"

static int width;
static int height;

void Gachan3DCamera::SetScreen(int w, int h)//will be called from GachanMetalBase or GachanD3D12Base
{
    width = w;
    height = h;
}


static Val aspectRatio = 1.0f;
void Gachan3DCamera::SetAspectRatio(Val tate, Val yoko)
{
    aspectRatio = tate / yoko;
}


Vec Gachan3DCamera::position = {0.0f, 0.0f, 0.0f};
Vec Gachan3DCamera::up    = {0.0f, 1.0f, 0.0f};
Vec Gachan3DCamera::front = {0.0f, 0.0f, 1.0f};

static void SetView(Vec p, Vec t)
{
    Vec x, y, z;
    z = t - p;
    y.Clear();
    y.y = 1.0f;
    x = y * z;
    y = z * x;
    x.Unit();
    y.Unit();
    z.Unit();
    
    Gachan3DCamera::position = p;
    Gachan3DCamera::front    = z;
    Gachan3DCamera::up       = y;

    Mat44 mat;
    mat.Clear();
    mat.xx = x.x;
    mat.yx = x.y;
    mat.zx = x.z;
    mat.xy = y.x;
    mat.yy = y.y;
    mat.zy = y.z;
    mat.xz = z.x;
    mat.yz = z.y;
    mat.zz = z.z;
    mat.wx = -p ^ x;
    mat.wy = -p ^ y;
    mat.wz = -p ^ z;
    Gachan3DShader::SetEye(p);
    Gachan3DShader::SetView(mat);
}

static void SetProjFovY(Val nearz, Val farz, Val fov, Val aspect, Val tateRatio)
{
    Val vh = 1.0f / tanf(fov * 0.5f);
    vh /= tateRatio;
    Val vw = vh / aspect;
    Val Q = farz / (farz - nearz);
    
    Mat44 mat;
    mat.Clear();
    mat.val[0][0] = vw;
    mat.val[1][1] = vh;
    mat.val[2][2] = Q;
    mat.val[3][2] = -Q * nearz;
    mat.val[2][3] = (Val)1.0;
    mat.val[3][3] = 0.0f;
    Gachan3DShader::SetProj(mat);
}

void Gachan3DCamera::SetCamera(Vec p, Vec t, Val n, Val f, Val a)
{
    //アスペクトレシオを包含するように調整する
    Val tateRatio = 1.0f;
    if (aspectRatio > 0.01f) {
        Val screenRatio = (Val)height / (Val)width;
        if (height > width) {
            //タテ画面
            if (screenRatio > aspectRatio) {
                tateRatio = screenRatio / aspectRatio;
            }
        }
        else {
            //ヨコ画面
            Val aspectRatioInv = (1.0f/aspectRatio);
            if (screenRatio > aspectRatioInv) {
                tateRatio = screenRatio / aspectRatioInv;
            }
        }
    }

    SetView(p, t);
    SetProjFovY(n, f, a, (Val)width / (Val)height, tateRatio);
}



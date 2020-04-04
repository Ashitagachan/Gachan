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
#include "Gachan3DPass.h"

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


Vec Gachan3DCamera::position = {0.0f, 0.0f, -5.0f};
Vec Gachan3DCamera::target   = {0.0f, 0.0f, 0.0f};
Vec Gachan3DCamera::up       = {0.0f, 1.0f, 0.0f};
Vec Gachan3DCamera::front    = {0.0f, 0.0f, 1.0f};

static void SetView(Vec p, Vec t)
{
    
    Vec x, y, z;
    z = t - p;
    y.Clear();
    y.y = 1.0f;
    x = y * z;
    y = z * x;
    x.SetUnit();
    y.SetUnit();
    z.SetUnit();
    
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

//平行投影
static void SetProjOrthographic(Val nearz, Val farz, Val width, Val height)
{
    Mat44 mat;
    mat.Clear();
    mat.val[0][0] = 2.0f / width;
    mat.val[1][1] = 2.0f / height;
    mat.val[2][2] = 1.0f / (farz - nearz);
    mat.val[3][2] = nearz / (farz - nearz);
    Gachan3DShader::SetProj(mat);
}

void Gachan3DCamera::SetCamera(Vec p, Vec t, Val n, Val f, Val a)
{
    Gachan3DCamera::target = t;

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
    
    //ライトカメラをチェックするには、ここを!=に変更してパス（metalbase.cpp)をノーマルだけにすれば普通に画面に表示される
    if (Gachan3DPass::GetPass() == Gachan3DPass::DRAW_SHADOWMAP) {
        //カメラの更新があればカメラターゲットが影響を受けるのでライトカメラを作り直す。
        //ここ以外にShader::SetLightDirの中でライトが更新されても呼ばれる
        SetLightCamera();
    }
    else {
        SetView(p, t);
        SetProjFovY(n, f, a, (Val)width / (Val)height, tateRatio);
    }
}


//ライトからのカメラを作る for　DRAW_SHADOWMAPのパス
void Gachan3DCamera::SetLightCamera()
{
    bool orthographic = true;//平行投影を使うか？
    
    Vec t = target;
    Vec p;
    Val orthosize = 40.0f;
    Val persfov   = 90.0f;
    Val nearz     = 5.0f;
    Val farz      = 1000.0f;
    if (orthographic) {
        //平行光源用のライトカメラ
        //ターゲットの方を向いてそこから光源の向きに合わせてカメラの位置をセットすることでカメラに追従させる
        Vec dir = Gachan3DShader::GetLightDirection();
        Val distance = 20.0f;//動的に調整できるといいね！
        p = t + dir * distance;
        
        orthosize = 40.0f;//動的に調整できるといいね！
    }
    else {
        //点光源用のライトカメラは位置を固定しないと影が動いちゃう
        //点光源の位置にライトカメラをおいて、向きをカメラ手前(ターゲットあたり？)くらいにすればカメラに追従して良い。
        //が、まだdx::Shader側が点光源に対応してないので、まだ使われない。
        p.Set(10.0f, 10.0f, -10.0f);//とりあえずの固定位置

        persfov = 90.0f;//動的に調整できるといいね！
    }
    
    SetView(p,t);
    if (orthographic) {
        SetProjOrthographic(nearz, farz, orthosize, orthosize);
    }
    else {
        SetProjFovY(nearz, farz, persfov / 180.0f * 3.141592f, 1.0f, 1.0f);
    }
}
    

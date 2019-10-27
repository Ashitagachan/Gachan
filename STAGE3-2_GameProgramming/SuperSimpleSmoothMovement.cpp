//
// SuperSimpleSmoothMovement.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"

//----------------------------
//超簡単スムーズ移動
//Super Simple Smooth Movement
//
//解説はこちら。 Explanation is here.
// https://youtu.be/ncpIfvq3I98
//----------------------------

namespace SuperSimpleSmoothMovement
{
    
    class Gachan
    {
    public:
        GachanGame game;
        GachanGameKeyboard keyboard;
        GachanGameController controller;
        GachanGameCamera camera;
        GachanGameLightAmbient lightambient;
        GachanGameLightDirection lightdirection;
        
        GachanGameObject object;
        GachanGameObject objectcoord;//TEXT
        GachanGameObject target;
        GachanGameObject targetcoord;//TEXT

        GachanGameObject grid;
    };
    static Gachan* gachan;
    
    void Initialize()
    {
        
    }
    
    void Create()
    {
        gachan = new Gachan;
        
        gachan->game.SetBackgroundColor(0, 0.1f, 0.1f);
        
        gachan->camera.SetPosition(0, 5, -10);
        gachan->camera.SetTarget(0, 0, 0);
        gachan->camera.SetAngle(RADIAN(45));
        
        gachan->lightambient.SetColor(0.4, 0.4, 0.4);
        
        gachan->lightdirection.SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetDirection(-0.5, -0.6, 0.7);
        
        gachan->object.Clear();
        gachan->object.SetObject(GachanGameObject::OBJECT::MARUCHAN);
        gachan->object.SetColor(GachanGame::COLOR::WHITE);
        
        gachan->objectcoord.Clear();
        gachan->objectcoord.SetObject(GachanGameObject::OBJECT::TEXT);
        gachan->objectcoord.SetColor(GachanGame::COLOR::WHITE);
        gachan->objectcoord.SetTextParameter(0.2, 1, 1);

        gachan->target.Clear();
        gachan->target.SetObject(GachanGameObject::OBJECT::MARUCHAN);
        gachan->target.SetScale(0.5, 0.5, 0.5);
        gachan->target.SetColor(GachanGame::COLOR::YELLOW);
        
        gachan->targetcoord.Clear();
        gachan->targetcoord.SetObject(GachanGameObject::OBJECT::TEXT);
        gachan->targetcoord.SetColor(GachanGame::COLOR::YELLOW);
        gachan->targetcoord.SetTextParameter(0.2, 1, 1);

        gachan->grid.Clear();
        gachan->grid.SetObject(GachanGameObject::OBJECT::GRID10x10);
        //gachan->grid.SetPosition(0, -0.5, 0);
        gachan->grid.SetColor(GachanGame::COLOR::WHITE);
    }
    
    void Update()
    {
        //--------------------------------
        // ターゲットの移動
        // UPDATE TARGET POSITION
        //--------------------------------
        Vec targetpos = gachan->target.GetPosition();
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
            targetpos.z += 1;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
            targetpos.z -= 1;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
            targetpos.x -= 1;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
            targetpos.x += 1;
        }
        if (gachan->controller.GetAvailable(0)) {
            Val x = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LX);
            Val y = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LY);
            static float stickK = 0.15;
            targetpos.x += x * stickK;
            targetpos.z += y * stickK;
        }
        gachan->target.SetPosition(targetpos);

        Vec objectpos = gachan->object.GetPosition();//オブジェクトの位置をゲット。Get object position.
        
        //---------------------------------------------------------------
        // 「超簡単スムース移動」を使ったオブジェクトの移動
        // UPDATE OBJECT POSITION USING "SUPER SIMPLE SMOOTH MOVEMENT"
        //
        //解説はこちら。 Explanation is here.
        // https://youtu.be/ncpIfvq3I98
        //---------------------------------------------------------------
        Vec vector = targetpos - objectpos; //オブジェクトからターゲットへのベクトルを求める。Vector from object to target.
        static Val smooth = 10;             //一定の割合をsmoothとする。'smooth' is fixed value.
        vector /= smooth;                   //ベクトルを一定の割合smoothで割る。Divide the vector by a fixed value 'smooth'.
        objectpos += vector;                //ベクトルを足してオブジェクトの位置を更新。Update object position.
        //---------------------------------------------------------------
        gachan->object.SetPosition(objectpos);//新しいオブジェクトの位置をセット。Set new object position.
    }
    
    void Render()
    {
        gachan->camera.SetCamera();
        
        gachan->lightambient  .SetLight();
        gachan->lightdirection.SetLight();
        
        gachan->object.Draw();
        gachan->target.Draw();
        
        Vec objectpos = gachan->object.GetPosition();
        Vec textpos = objectpos;
        textpos.x += 0.5f;
        textpos.y += 0.5f;
        gachan->objectcoord.SetPosition(textpos);
        gachan->objectcoord.Draw(u8"オブジェクト座標\n Object Coordinate\n (x,y,z) = (%.2f, %.2f, %.2f)", objectpos.x, objectpos.y, objectpos.z);

        Vec targetpos = gachan->target.GetPosition();
        textpos = targetpos;
        textpos.x -= 3.6f;
        textpos.y += 0.5f;
        gachan->targetcoord.SetPosition(textpos);
        gachan->targetcoord.Draw(u8"                 ターゲット座標\n             Target Coordinate\n (x,y,z) = (%.2f, %.2f, %.2f)", targetpos.x, targetpos.y, targetpos.z);

        gachan->grid.Draw();
    }
    
    void Release()
    {
        delete gachan;
    }
    
    void Finalize()
    {
    }
}











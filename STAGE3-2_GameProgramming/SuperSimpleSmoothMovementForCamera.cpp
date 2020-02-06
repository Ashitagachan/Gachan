//
// SuperSimpleSmoothMovementForCamera.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"

//----------------------------
//超簡単スムーズ移動をカメラに使う
//Super Simple Smooth Movement For Camera
//
//解説はこちら。 Explanation is here.
// https://youtu.be/b6mkaiKVkec
//----------------------------

namespace SuperSimpleSmoothMovementForCamera
{
    
    class Gachan
    {
    public:
        GachanGame               game;
        GachanGameKeyboard       keyboard;
        GachanGameController     controller;
        GachanGameCamera         camera;
        GachanGameLightAmbient   lightambient;
        GachanGameLightDirection lightdirection;
        GachanGameObject         object;
        GachanGameObject         grid;
    };
    static Gachan* gachan;
    
    void Initialize()
    {
        
    }
    
    void Create()
    {
        gachan = new Gachan;
        
        gachan->game.SetBackgroundColor(0, 0.1f, 0.1f);
        
		gachan->camera.SetPosition(0, 5.5, 5);
		gachan->camera.SetTarget(0, 0.5, 0);
		gachan->camera.SetAngle(RADIAN(45));
        
        gachan->lightambient.SetColor(0.4, 0.4, 0.4);
        
        gachan->lightdirection.SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetDirection(-0.5, -0.6, 0.7);
        
        gachan->object.Clear();
        gachan->object.SetPosition(0, 0.5, 0);
        gachan->object.SetObject(GachanGameObject::OBJECT::ARROW);
        gachan->object.SetColor(GachanGame::COLOR::RED);
        
        gachan->grid.Clear();
        gachan->grid.SetObject(GachanGameObject::OBJECT::GRID10x10);
        gachan->grid.SetColor(GachanGame::COLOR::WHITE);
    }
    
    void Update()
    {
        Vec objectpos = gachan->object.GetPosition();
        Vec objectrot = gachan->object.GetRotation();
        Vec camerapos = gachan->camera.GetPosition();
        
        Vec camerafront = objectpos - camerapos;
        camerafront.y = 0.0f;
        camerafront.SetUnit();
        
        
        Val frontK    = 0.15;
        Val rotationK = 0.1;
        
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
            objectpos += camerafront * frontK;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
            objectpos -= camerafront * frontK;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
            objectrot.y -= rotationK;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
            objectrot.y += rotationK;
        }
        if (gachan->controller.GetAvailable(0)) {
            Val x = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LX);
            Val y = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LY);
            objectpos   += camerafront * y * frontK;
            objectrot.y +=               x * rotationK;
        }
        
        gachan->object.SetPosition(objectpos);
        gachan->object.SetRotation(ROTATIONORDER::XYZ, objectrot);


        Mat matrix = gachan->object.GetMatrix();
        
        //カメラターゲットのオブジェクトからの相対位置
        //Relative camera target position from object.
        Vec targetvec;
        targetvec.Set(0, 5, 5);
        
        //カメラターゲットの絶対位置
        //Absolute camera target position
        Vec targetpos = targetvec * matrix;
        
        //---------------------------------
        //超簡単スムーズ移動をカメラに使う
        //Super Simple Smooth Movement For Camera
        //
        //解説はこちら。 Explanation is here.
        // https://youtu.be/b6mkaiKVkec
        //---------------------------------
        Vec vector = targetpos - camerapos;
        static Val smooth = 10;
        vector /= smooth;
        camerapos += vector;
        //-----------------------------------------

        gachan->camera.SetPosition(camerapos);
        gachan->camera.SetTarget(objectpos);

    }
    
    void Render()
    {
        gachan->camera.SetCamera();
        
        gachan->lightambient  .SetLight();
        gachan->lightdirection.SetLight();
        
        gachan->object.Draw();
        
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











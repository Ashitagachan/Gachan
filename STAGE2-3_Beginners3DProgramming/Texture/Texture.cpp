//
// Sample000.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"


namespace object {
#include "TextureFiles/Texture.tst"
}

namespace Texture
{
    class Gachan
    {
    public:
        GachanGame game;
        GachanGameKeyboard keyboard;
        GachanGameCamera camera;
        GachanGameLightAmbient lightambient;
        GachanGameLightDirection lightdirection;
        
        GachanGameObject obj;
    };
    static Gachan* gachan;

    void Initialize()
    {
        
    }

    void Create()
    {
        gachan = new Gachan;
        
        gachan->game.SetBackgroundColor(0.1, 0.1, 0.1);
        
        gachan->camera.SetPosition(0, 3, -10);
        gachan->camera.SetTarget(0, 3, 0);
        gachan->camera.SetAngle(RADIAN(45));
        
        gachan->lightambient.SetColor(0.5, 0.5, 0.5);
        
        gachan->lightdirection.SetColor(0.5, 0.5, 0.5);
        gachan->lightdirection.SetDirection(-1, -1, 1);
                    
        object::object_root__->Create();

        gachan->obj.Clear();
        gachan->obj.SetObject(object::object_root__);
        
    }

    void Update()
    {
        //カメラをキーボードで動かしてみる Move the camera with the keyboard
        Vec positionc = gachan->camera.GetPosition();
        Vec positiont = gachan->camera.GetTarget();
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
            positionc.z += 1;
            positiont.z += 1;
            gachan->camera.SetPosition(positionc);
            gachan->camera.SetTarget(positiont);
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
            positionc.z -= 1;
            positiont.z -= 1;
            gachan->camera.SetPosition(positionc);
            gachan->camera.SetTarget(positiont);
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
            positionc.x -= 1;
            positiont.x -= 1;
            gachan->camera.SetPosition(positionc);
            gachan->camera.SetTarget(positiont);
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
            positionc.x += 1;
            positiont.x += 1;
            gachan->camera.SetPosition(positionc);
            gachan->camera.SetTarget(positiont);
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::W))  {
            positionc.y += 1;
            positiont.y += 1;
            gachan->camera.SetPosition(positionc);
            gachan->camera.SetTarget(positiont);
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::S))  {
            positionc.y -= 1;
            positiont.y -= 1;
            gachan->camera.SetPosition(positionc);
            gachan->camera.SetTarget(positiont);
        }
    }

    void Render()
    {
        gachan->camera.SetCamera();

        gachan->lightambient  .SetLight();
        gachan->lightdirection.SetLight();
        
        gachan->obj.Draw();
    }

    void Release()
    {
        object::object_root__->Release();
        delete gachan;
    }

    void Finalize()
    {
    }
}





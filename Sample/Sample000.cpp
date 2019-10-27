//
// Sample000.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"

//SAMPLE000.cppをビルドするにはGachanNameSpace.hのNAMESPACE定義をSAMPLE000に置き換えてください。
//To build SAMPLE000.cpp, Replace NAMESPACE definition at GachanNameSpace.h with SAMPLE000.

//Gachanサンプル紹介000-003 Introduction to Sample000-003
//https://youtu.be/TByp95BtHJA

namespace Sample000
{
    class Gachan
    {
    public:
        GachanGame game;
        GachanGameKeyboard keyboard;
        GachanGameCamera camera;
        GachanGameLightAmbient lightambient;
        GachanGameLightDirection lightdirection;
        
        GachanGameObject cube;
        GachanGameObject sphere;
        GachanGameObject cone;
        GachanGameObject cylinder;
        GachanGameObject plane;
        GachanGameObject pyramid;
        GachanGameObject torus;
        GachanGameObject solid;
        GachanGameObject spring;
        GachanGameObject rocket;
        GachanGameObject arrow;
        GachanGameObject cursor;
        GachanGameObject balloon;
        GachanGameObject missile;

        GachanGameObject maruchan;
        GachanGameObject unkochan;
        GachanGameObject togechan;
        GachanGameObject starchan;
        GachanGameObject slimechan;
        
        GachanGameObject armupper;
        GachanGameObject armlower;
        GachanGameObject armhand;

        
        GachanGameObject brickA;
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
        
        gachan->camera.SetPosition(2, 5, -10);
        gachan->camera.SetTarget(0, 0, 0);
        gachan->camera.SetAngle(RADIAN(45));
        
        gachan->lightambient.SetColor(0.4, 0.4, 0.4);
        
        gachan->lightdirection.SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetDirection(-0.5, -0.6, 0.7);
        
        gachan->cube      .Clear();
        gachan->cube      .SetObject(GachanGameObject::OBJECT::CUBE);
        gachan->cube      .SetPosition(-4, 0.5, 1);
        gachan->cube      .SetColor(GachanGame::COLOR::WHITE);

        gachan->sphere    .Clear();
        gachan->sphere    .SetObject(GachanGameObject::OBJECT::SPHERE);
        gachan->sphere    .SetPosition(-3, 0.5, 1);
        gachan->sphere    .SetColor(GachanGame::COLOR::RED);

        gachan->cone      .Clear();
        gachan->cone      .SetObject(GachanGameObject::OBJECT::CONE);
        gachan->cone      .SetPosition(-2, 0.5, 1);
        gachan->cone      .SetColor(GachanGame::COLOR::BLUE);

        gachan->cylinder  .Clear();
        gachan->cylinder  .SetObject(GachanGameObject::OBJECT::CYLINDER);
        gachan->cylinder  .SetPosition(-1, 0.5, 1);
        gachan->cylinder  .SetColor(GachanGame::COLOR::MAGENTA);

        gachan->plane     .Clear();
        gachan->plane     .SetObject(GachanGameObject::OBJECT::PLANE);
        gachan->plane     .SetPosition(0, 0.01, 1);
        gachan->plane     .SetColor(GachanGame::COLOR::GLAY);

        gachan->pyramid   .Clear();
        gachan->pyramid   .SetObject(GachanGameObject::OBJECT::PYRAMID);
        gachan->pyramid   .SetPosition(1, 0.3, 1);
        gachan->pyramid   .SetColor(GachanGame::COLOR::ORANGE);
        
        gachan->torus     .Clear();
        gachan->torus     .SetObject(GachanGameObject::OBJECT::TORUS);
        gachan->torus     .SetPosition(2, 0.1, 1);
        gachan->torus     .SetColor(GachanGame::COLOR::DARKGLAY);

        gachan->solid     .Clear();
        gachan->solid     .SetObject(GachanGameObject::OBJECT::SOLID);
        gachan->solid     .SetPosition(3, 0.5, 1);
        gachan->solid     .SetColor(GachanGame::COLOR::BLUE);

        gachan->spring    .Clear();
        gachan->spring    .SetObject(GachanGameObject::OBJECT::SPRING);
        gachan->spring    .SetPosition(4, 0.5, 1);
        gachan->spring    .SetColor(GachanGame::COLOR::DARKGLAY);

        gachan->maruchan  .Clear();
        gachan->maruchan  .SetObject(GachanGameObject::OBJECT::MARUCHAN);
        gachan->maruchan  .SetPosition(-4, 0.5, -1);
        gachan->maruchan  .SetColor(GachanGame::COLOR::WHITE);

        gachan->unkochan  .Clear();
        gachan->unkochan  .SetObject(GachanGameObject::OBJECT::UNKOCHAN);
        gachan->unkochan  .SetPosition(-3, 0.5, -1);
        gachan->unkochan  .SetColor(GachanGame::COLOR::PINK);

        gachan->togechan  .Clear();
        gachan->togechan  .SetObject(GachanGameObject::OBJECT::TOGECHAN);
        gachan->togechan  .SetPosition(-2, 0.5, -1);
        gachan->togechan  .SetColor(GachanGame::COLOR::LIGHTGLAY);

        gachan->starchan  .Clear();
        gachan->starchan  .SetObject(GachanGameObject::OBJECT::STARCHAN);
        gachan->starchan  .SetPosition(-1, 0.5, -1);
        gachan->starchan  .SetColor(GachanGame::COLOR::YELLOW);

        gachan->slimechan .Clear();
        gachan->slimechan .SetObject(GachanGameObject::OBJECT::SLIMECHAN);
        gachan->slimechan .SetPosition(0, 0.5, -1);
        gachan->slimechan .SetColor(GachanGame::COLOR::CYAN);

        gachan->rocket    .Clear();
        gachan->rocket    .SetObject(GachanGameObject::OBJECT::ROCKET);
        gachan->rocket    .SetPosition(1, 0.5, -1);
        gachan->rocket    .SetColor(GachanGame::COLOR::LIGHTGLAY);

        gachan->arrow     .Clear();
        gachan->arrow     .SetObject(GachanGameObject::OBJECT::ARROW);
        gachan->arrow     .SetPosition(2, 0.5, -1);
        gachan->arrow     .SetColor(GachanGame::COLOR::RED);

        gachan->cursor    .Clear();
        gachan->cursor    .SetObject(GachanGameObject::OBJECT::CURSOR);
        gachan->cursor    .SetPosition(3, 0.5, -1);
        gachan->cursor    .SetColor(GachanGame::COLOR::GREEN);

        gachan->balloon   .Clear();
        gachan->balloon   .SetObject(GachanGameObject::OBJECT::BALLOON);
        gachan->balloon   .SetPosition(4, 0.5, -1);
        gachan->balloon   .SetColor(GachanGame::COLOR::RED);

        gachan->missile   .Clear();
        gachan->missile   .SetObject(GachanGameObject::OBJECT::MISSILE);
        gachan->missile   .SetPosition(4, 0.5, -2);
        gachan->missile   .SetColor(GachanGame::COLOR::WHITE);


        gachan->armhand   .Clear();
        gachan->armhand   .SetObject(GachanGameObject::OBJECT::ARM_HAND_R);
        gachan->armhand   .SetPosition(-2, 0.5, 4);
        gachan->armhand   .SetColor(GachanGame::COLOR::WHITE);

        gachan->armlower   .Clear();
        gachan->armlower   .SetObject(GachanGameObject::OBJECT::ARM_LOWER_R);
        gachan->armlower   .SetPosition(-2+2, 0.5, 4);
        gachan->armlower   .SetColor(GachanGame::COLOR::WHITE);

        gachan->armupper   .Clear();
        gachan->armupper   .SetObject(GachanGameObject::OBJECT::ARM_UPPER_R);
        gachan->armupper   .SetPosition(-2+4.5, 0.5, 4);
        gachan->armupper   .SetColor(GachanGame::COLOR::WHITE);

        
        gachan->brickA    .Clear();
        gachan->brickA    .SetObject(GachanGameObject::OBJECT::BRICKA);
        gachan->brickA    .SetPosition(-4, 0.5, 5);
        gachan->brickA    .SetColor(GachanGame::COLOR::RED);

        gachan->grid     .Clear();
        gachan->grid     .SetObject(GachanGameObject::OBJECT::GRID10x10);
        gachan->grid     .SetPosition(0, 0, 0);
        gachan->grid     .SetColor(GachanGame::COLOR::WHITE);
    }

    void Update()
    {
        {
            //カーソルをキーボードで動かしてみる Move the cursor with the keyboard
            Vec position = gachan->cursor.GetPosition();
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
                position.z += 1;
                gachan->cursor.SetPosition(position);
                GachanGame::Log("KEYUP\n");
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
                position.z -= 1;
                gachan->cursor.SetPosition(position);
                GachanGame::Log("KEYDOWN\n");
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
                position.x -= 1;
                gachan->cursor.SetPosition(position);
                GachanGame::Log("KEYLEFT\n");
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
                position.x += 1;
                gachan->cursor.SetPosition(position);
                GachanGame::Log("KEYRIGHT\n");
            }
        }
        
        {
            //矢印を回してみる Turning the arrow
            Vec rotation = gachan->arrow.GetRotation();
            rotation.y += RADIAN(1);
            if (rotation.y > RADIAN(360)) {
                rotation.y -= RADIAN(360);
            }
            gachan->arrow.SetRotation(ROTATIONORDER::XYZ, rotation.x, rotation.y, rotation.z);
        }
        
        {
            //星を大きくしてみる Make the stars bigger
            Vec scale = gachan->starchan.GetScale();
            scale.x += 0.01;
            if (scale.x > 2) {
                scale.x = 1.0;
            }
            gachan->starchan.SetScale(scale.x, scale.x, scale.x);
        }
    }

    void Render()
    {
        gachan->camera.SetCamera();

        gachan->lightambient  .SetLight();
        gachan->lightdirection.SetLight();
        
        gachan->cube     .Draw();
        gachan->sphere   .Draw();
        gachan->cone     .Draw();
        gachan->cylinder .Draw();
        gachan->plane    .Draw();
        gachan->pyramid  .Draw();
        gachan->torus    .Draw();
        gachan->solid    .Draw();
        gachan->spring   .Draw();
        gachan->maruchan .Draw();
        gachan->unkochan .Draw();
        gachan->togechan .Draw();
        gachan->starchan .Draw();
        gachan->slimechan.Draw();
        gachan->rocket   .Draw();
        gachan->arrow    .Draw();
        gachan->cursor   .Draw();
        gachan->balloon  .Draw();
        gachan->missile  .Draw();

        gachan->armhand  .Draw();
        gachan->armlower .Draw();
        gachan->armupper .Draw();

        gachan->brickA   .Draw();
        
        gachan->grid     .Draw();
    }

    void Release()
    {
        delete gachan;
    }

    void Finalize()
    {
    }
}





//
// Sample002.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"

//SAMPLE002.cppをビルドするにはGachanNameSpace.hのNAMESPACE定義をSAMPLE002に置き換えてください。
//To build SAMPLE002.cpp, Replace NAMESPACE definition at GachanNameSpace.h with SAMPLE002.

//Gachanサンプル紹介000-003 Introduction to Sample000-003
//https://youtu.be/TByp95BtHJA

namespace Sample002
{
    class MyMissile
    {
    public:
        GachanGameObject object;
        int state;
        
        void Clear()
        {
            object.Clear();
            object.SetObject(GachanGameObject::OBJECT::MISSILE);
            object.SetRotation(ROTATIONORDER::XYZ, 0, RADIAN(180), 0);
            object.SetScale(2, 2, 2);
            object.SetColor(GachanGame::COLOR::WHITE);
            state = 0;
        }
        bool Shot(Vec shippos)
        {
            if (state == 0)  {
                object.SetPosition(shippos);
                state = 1;
                return true;
            }
            return false;
        }
        void Exec()
        {
            if (state) {
                Vec pos = object.GetPosition();
                pos.z += 1;
                object.SetPosition(pos);
                
                if (pos.z > 40) {
                    state = 0;
                }
            }
        }
        void Draw()
        {
            if (state) {
                object.Draw();
            }
        }
    };
    
    class Gachan
    {
    public:
        GachanGame game;
        GachanGameKeyboard keyboard;
        GachanGameCamera camera;
        Vec              cameraposition;

        GachanGameLightAmbient lightambient;
        GachanGameLightDirection lightdirection;
        
        GachanGameObject ship;
        Vec              shiptarget;
        
        MyMissile        missile[8];
        
        GachanGameObject enemy[16];
        GachanGameObject unkochan;
    };
    static Gachan* gachan;

    void Initialize()
    {
    }
    
    static void ResetEnemy(GachanGameObject* obj)
    {
        obj->Clear();
        GachanGameObject::OBJECT object = (GachanGameObject::OBJECT)
        GachanMath::RandomInt(GachanGameObject::OBJECT::GRID10x10,
                              GachanGameObject::OBJECT::BRICKA);
        obj->SetObject(object);
        Vec randompos;
        randompos.x = GachanMath::RandomVal(-10, 10);
        randompos.y = GachanMath::RandomVal(-10, 10);
        randompos.z = GachanMath::RandomVal(20, 80);
        obj->SetPosition(randompos);
        GachanGame::COLOR color = (GachanGame::COLOR)
        GachanMath::RandomInt(GachanGame::COLOR::WHITE,
                              GachanGame::COLOR::MAGENTA);
        obj->SetColor(color);
    }

    void Create()
    {
        gachan = new Gachan;
        
        gachan->game.SetBackgroundColor(0, 0, 0);

        gachan->camera.SetTarget(0, 0, 0);
        gachan->camera.SetAngle(RADIAN(45));
        
        gachan->lightambient.SetColor(0.4, 0.4, 0.4);
        
        gachan->lightdirection.SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetDirection(-0.5, -0.6, 0.7);
        
        gachan->ship.Clear();
        gachan->ship.SetObject(GachanGameObject::OBJECT::ROCKET);
        gachan->ship.SetPosition(0, 0, -5);
        gachan->ship.SetRotation(ROTATIONORDER::XYZ, 0, RADIAN(180), 0);
        gachan->ship.SetScale(2, 2, 2);
        gachan->ship.SetColor(GachanGame::COLOR::WHITE);
        gachan->shiptarget = gachan->ship.GetPosition();

        gachan->cameraposition.Set(0, 3, -8);
        gachan->camera.SetPosition(gachan->ship.GetPosition() + gachan->cameraposition);

        for (int i = 0; i < 8; i++) {
            gachan->missile[i].Clear();
        }
        
        for (int i = 0; i < 16; i++) {
            ResetEnemy(&gachan->enemy[i]);
        }
        
        gachan->unkochan.Clear();
        gachan->unkochan.SetObject(GachanGameObject::OBJECT::UNKOCHAN);
        gachan->unkochan.SetPosition(0, -20, 200);
        gachan->unkochan.SetRotation(ROTATIONORDER::XYZ, 0, RADIAN(180), 0);
        gachan->unkochan.SetScale(120, 120, 120);
        gachan->unkochan.SetColor(0.1, 0.1, 0.1);

    }
    
    static void Missile()
    {
        for (int i = 0; i < 8; i++) {
            if (gachan->missile[i].Shot(gachan->ship.GetPosition())) {
                break;
            }
        }
    }

    void Update()
    {
        {
            //--------------------------
            //キーボードの入力処理 Keyboard Input
            //--------------------------
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
                gachan->shiptarget.y += 1;
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
                gachan->shiptarget.y -= 1;
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
                gachan->shiptarget.x -= 1;
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
                gachan->shiptarget.x += 1;
            }
            
            Vec shippos = gachan->ship.GetPosition();
            //-----------------------------------------------
            //超簡単スムース移動 Super Simple Smooth Movement
            //解説はこちら。 Explanation is here.
            // https://youtu.be/ncpIfvq3I98
            //-----------------------------------------------
            shippos += (gachan->shiptarget - shippos) * 0.1;
            gachan->ship.SetPosition(shippos);
            
            Vec campos = gachan->camera.GetPosition();
            //-----------------------------------------------
            //超簡単スムース移動 Super Simple Smooth Movement
            //解説はこちら。 Explanation is here.
            // https://youtu.be/ncpIfvq3I98
            //-----------------------------------------------
            campos += (shippos + gachan->cameraposition - campos) * 0.05;
            gachan->camera.SetPosition(campos);
            
            shippos.z += 10;
            gachan->camera.SetTarget(shippos);
            
            //スペースキーを押すとミサイル発射 Press the space bar to launch a missile
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::SPACE))  {
                Missile();
            }

            for (int i = 0; i < 8; i++) {
                gachan->missile[i].Exec();
            }
            
            for (int i = 0; i < 16; i++) {
                Vec enemypos = gachan->enemy[i].GetPosition();
                enemypos.z -= 0.1;
                gachan->enemy[i].SetPosition(enemypos);
                
                if (enemypos.z < -20) {
                    ResetEnemy(&gachan->enemy[i]);
                }
            }

        }
    }

    void Render()
    {
        gachan->camera.SetCamera();

        gachan->lightambient.SetLight();
        gachan->lightdirection.SetLight();
        
        gachan->ship.Draw();
        
        for (int i = 0; i < 8; i++) {
            gachan->missile[i].Draw();
        }
        
        for (int i = 0; i < 16; i++) {
            gachan->enemy[i].Draw();
        }
        
        gachan->unkochan.Draw();
    }

    void Release()
    {
        delete gachan;
    }

    void Finalize()
    {
    }
}





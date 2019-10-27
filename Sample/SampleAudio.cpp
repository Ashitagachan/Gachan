//
// SampleAudio.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"

//SampleAudio.cppをビルドするにはGachanNameSpace.hのNAMESPACE定義をSampleAudioに置き換えてください。
//To build SampleAudio.cpp, Replace NAMESPACE definition at GachanNameSpace.h with SampleAudio.



namespace SampleAudio
{
    
    
    class SoundObject
    {
    public:
        GachanGameObject object;
        GachanGameAudio3D sound3D;
        Vec velocity;
        
        void Clear()
        {
            Vec startpos;
            startpos.x = GachanMath::RandomVal(-20, 20);
            startpos.y = GachanMath::RandomVal(-20, 20);
            startpos.z = GachanMath::RandomVal(-30, 10);
            
            velocity.x = GachanMath::RandomVal(-0.1, 0.1);
            velocity.y = GachanMath::RandomVal(-0.1, 0.1);
            velocity.z = GachanMath::RandomVal(-0.1, 0.1);

            object.Clear();
            object.SetObject(GachanGameObject::OBJECT::STARCHAN);
            object.SetColor(GachanGame::COLOR::YELLOW);
            object.SetPosition(startpos);
            
            sound3D.Clear();
        }
        void Exec()
        {
            Vec pos = object.GetPosition();

            //サウンドプレーヤの動的取得のサンプル
            bool region = false;
            if (-15    < pos.x && pos.x < 15 &&
                -15    < pos.y && pos.y < 15 &&
                -15-10 < pos.z && pos.z < 15-10) {
                //サウンド領域
                if (sound3D.GetPlayer()) {
                    sound3D.SetBuffer(GachanGameAudio3D::BUFFER::MOVE00, true);
                    sound3D.SetVolume(0.1);
                    sound3D.SetPosition(pos);
                    sound3D.Play();
                }
                region = true;
            }
            else {
                //サウンド領域外
                sound3D.FreePlayer();
            }
            
            if (sound3D.HavePlayer() && region) {
                object.SetColor(GachanGame::COLOR::RED);//サウンド領域内でプレーヤを持っている
            }
            else if (region) {
                object.SetColor(GachanGame::COLOR::CYAN);//サウンド領域内なのにプレーヤをもらえてない
            }
            else {
                object.SetColor(GachanGame::COLOR::YELLOW);//サウンド領域外
            }
            
            //はねかえり
            if (pos.x < -20) {
                velocity.x *= -1;
            }
            if (pos.x > 20) {
                velocity.x *= -1;
            }
            if (pos.y < -20) {
                velocity.y *= -1;
            }
            if (pos.y > 20) {
                velocity.y *= -1;
            }
            if (pos.z < -30) {
                velocity.z *= -1;
            }
            if (pos.z > 10) {
                velocity.z *= -1;
            }

            
            pos += velocity;
            object.SetPosition(pos);
            sound3D.SetPosition(pos);
        }
        void Draw()
        {
            object.Draw();
        }
    };
    
    class Gachan
    {
    public:
        GachanGame game;
        GachanGameKeyboard keyboard;
        GachanGameCamera camera;
        GachanGameLightAmbient lightambient;
        GachanGameLightDirection lightdirection;
        
        GachanGameAudio   music;
        
        const static int soundobjectnum = 30;
        SoundObject soundobject[soundobjectnum];
        
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
        
        gachan->camera.SetPosition(0, 0, -10);
        gachan->camera.SetTarget(0, 1, 0);
        gachan->camera.SetAngle(RADIAN(45));
        
        gachan->lightambient.SetColor(0.4, 0.4, 0.4);
        
        gachan->lightdirection.SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetDirection(-0.5, -0.6, 0.7);
        
        gachan->music.Clear();
        gachan->music.GetPlayer();
        gachan->music.SetBuffer(GachanGameAudio::BUFFER::MUSIC00, true);
        gachan->music.SetVolume(0.2);
        gachan->music.Play();
        
        GachanGameAudio3D::SetPlayerNum(Gachan::soundobjectnum/3);//デモのために強制的に少なく設定している
        
        for (int i = 0; i < Gachan::soundobjectnum; i++) {
            gachan->soundobject[i].Clear();
        }
        
        gachan->grid.Clear();
        gachan->grid.SetObject(GachanGameObject::OBJECT::GRID20x20);
        gachan->grid.SetPosition(0, -2, 0);
        gachan->grid.SetColor(GachanGame::COLOR::WHITE);
    }
    
    void Update()
    {
        {
            Vec camerapos = gachan->camera.GetPosition();
            Vec cameratgt = gachan->camera.GetTarget();
            
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
                camerapos.z += 1;
                cameratgt.z += 1;
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
                camerapos.z -= 1;
                cameratgt.z -= 1;
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
                camerapos.x -= 1;
                cameratgt.x -= 1;
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
                camerapos.x += 1;
                cameratgt.x += 1;
            }
            gachan->camera.SetPosition(camerapos);
            gachan->camera.SetTarget(cameratgt);
        }
        
        for (int i = 0; i < Gachan::soundobjectnum; i++) {
            gachan->soundobject[i].Exec();
        }
    }
    
    void Render()
    {
        gachan->camera.SetCamera();
        
        gachan->lightambient  .SetLight();
        gachan->lightdirection.SetLight();
        
        for (int i = 0; i < Gachan::soundobjectnum; i++) {
            gachan->soundobject[i].Draw();
        }

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











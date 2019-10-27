//
// Sample001.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"

//SAMPLE001.cppをビルドするにはGachanNameSpace.hのNAMESPACE定義をSAMPLE001に置き換えてください。
//To build SAMPLE001.cpp, Replace NAMESPACE definition at GachanNameSpace.h with SAMPLE001.

//Gachanサンプル紹介000-003 Introduction to Sample000-003
//https://youtu.be/TByp95BtHJA

namespace Sample001
{
    class Gachan
    {
    public:
        int score;
        GachanGame game;
        GachanGameKeyboard keyboard;
        GachanGameCamera camera;
        GachanGameLightAmbient lightambient;
        GachanGameLightDirection lightdirection;
        
        GachanGameObject bar;
        GachanGameObject ball;
        Vec              ballspeed;
        GachanGameObject wall;
        GachanGameObject balloon[24];
        int              balloonstate[24];//最初1,破裂(はれつ)したら0  First 1, if it bursts 0
    };
    static Gachan* gachan;

    void Initialize()
    {
    }

    void Create()
    {
        gachan = new Gachan;

        gachan->score = 0;
        gachan->game.SetBackgroundColor(0, 0.1f, 0.1f);
        
        gachan->camera.SetPosition(0, 6, -10);
        gachan->camera.SetTarget(0, 0, 0);
        gachan->camera.SetAngle(RADIAN(45));
        
        gachan->lightambient.SetColor(0.4, 0.4, 0.4);
        
        gachan->lightdirection.SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetDirection(-0.5, -0.6, 0.7);
        
        gachan->bar.Clear();
        gachan->bar.SetObject(GachanGameObject::OBJECT::CUBE);
        gachan->bar.SetPosition(0, 0, -5);
        gachan->bar.SetScale(3, 0.2, 1);
        gachan->bar.SetColor(GachanGame::COLOR::WHITE);

        gachan->ball.Clear();
        gachan->ball.SetObject(GachanGameObject::OBJECT::SPHERE);
        gachan->ball.SetPosition(0, 0, -4);
        gachan->ball.SetScale(0.2, 0.2, 0.2);
        gachan->ball.SetColor(GachanGame::COLOR::WHITE);
        gachan->ballspeed.Clear();

        gachan->wall.Clear();
        gachan->wall.SetObject(GachanGameObject::OBJECT::BRICKA);
        gachan->wall.SetPosition(5, 0, 1);
        gachan->wall.SetColor(GachanGame::COLOR::GLAY);
        
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 8; j++) {
                gachan->balloon[i*8 + j].Clear();
                gachan->balloon[i*8 + j].SetObject(GachanGameObject::OBJECT::BALLOON);
                gachan->balloon[i*8 + j].SetPosition(-1.0*(j-4)-0.5, 0, 2+i*1.0);
                gachan->balloon[i*8 + j].SetScale(1, 1, 1);
                gachan->balloon[i*8 + j].SetColor(GachanGame::COLOR::RED);
                
                gachan->balloonstate[i*8 + j] = 1;
            }
        }
    }
    
    static void Start()
    {
        //ボールの位置を戻す Initialize ball position.
        gachan->ball.SetPosition(0, 0, -4);
        //速度の方向をランダムで生成する Generate random velocity.
        gachan->ballspeed.x = GachanMath::RandomVal(-0.5, 0.5);
        gachan->ballspeed.z = GachanMath::RandomVal(0.5, 1);
        //速度の大きさを揃える Align the size of the speed.
        gachan->ballspeed.SetLength(0.1);
    }

    void Update()
    {
        {
            //--------------------------
            //キーボードの入力処理 Keyboard Input
            //--------------------------

            //カメラを上下キーで動かす  Move the camera with the up and down keys.
            Vec camerapos = gachan->camera.GetPosition();
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
                camerapos.y += 1;
                gachan->camera.SetPosition(camerapos);
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
                camerapos.y -= 1;
                gachan->camera.SetPosition(camerapos);
            }
            
            //バーを左右キーで動かす Move the bar with the left and right keys.
            Vec barpos = gachan->bar.GetPosition();
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
                barpos.x -= 1;
                gachan->bar.SetPosition(barpos);
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
                barpos.x += 1;
                gachan->bar.SetPosition(barpos);
            }
            
            //スペースキーを押すとスタート Press space key to start.
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::SPACE))  {
                Start();
            }
            //ENTERキーを押すと風船をセット Press the ENTER key to set the balloon.
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::ENTER))  {
                for (int i = 0; i < 24; i++) {
                    gachan->balloonstate[i] = 1;
                }
            }

            //--------------------------
            //ボールの処理 Ball processing
            //--------------------------

            //ボールの位置を更新 Update ball position
            Vec ballpos = gachan->ball.GetPosition();
            ballpos += gachan->ballspeed;
            gachan->ball.SetPosition(ballpos);
            
            //壁との当たり判定 Determine if it hit the wall
            const Val wallx = -4.5;//壁のx位置  X positoin of the wall
            //左の壁 Left wall
            if (ballpos.x < -wallx) {
                gachan->ballspeed.x *= -1;//x方向を逆にする Reverse x direction
            }
            //右の壁 Right wall
            if (ballpos.x > wallx) {
                gachan->ballspeed.x *= -1;//x方向を逆にする Reverse x direction
            }
            //奥の壁 Back wall
            const Val wallz = 6.5;//壁のz位置 Z positoin of the wall
            if (ballpos.z > wallz) {
                gachan->ballspeed.z *= -1;//z方向を逆にする Reverse z direction
            }
            //バーとの当たり判定 Determine if it hit the bar
            const Val barz = -4.5;//バーのz位置  Z position of the bar
            if (ballpos.z < barz) {
                const Val barlength = 3.0;//バーの横の長さ length of the bar
                if (barpos.x - barlength*0.5 < ballpos.x && ballpos.x < barpos.x + barlength*0.5) {
                    gachan->ballspeed.z *= -1;//z方向を逆にする Reverse the z direction
                }
            }
            //下に落ちたか判定 Determine if it fell down
            const Val fallz = -6;//下のz位置
            if (ballpos.z < fallz) {
                gachan->ballspeed.Clear();
            }
            
            //風船との当たり判定 Determine if it hit the balloon.
            for (int i = 0; i < 24; i++) {
                if (gachan->balloonstate[i]) {
                    Vec balloonpos = gachan->balloon[i].GetPosition();
                    
                    //ボールと風船の距離 Distance the ball and the baloon.
                    Val hit = 0.1 + 0.5;//当たり判定の距離（ボールの半径と風船の半径を足した距離）  Hit Distance(Distance of ball radius + balloon radius)
                    Vec distance = ballpos - balloonpos;
                    if (distance.Length2() < hit*hit) {
                        //ボールが風船に当たった！  The ball hit the baloon!
                        gachan->score += 10;
                        gachan->balloonstate[i] = 0;
                        
                        //ボールを跳ね返す Bounce the ball
                        distance.Unit();//風船からボールへの長さ１のベクトル Vector of length 1 from balloons to balls.
                        Val inner = distance ^ gachan->ballspeed;//ボール速度との内積をとって、跳ね返りの大きさを求める Find the size of the bounce by taking the inner product with the ball speed
                        gachan->ballspeed -= 2.0 * inner * distance;//跳ね返す Bounce back
                        
                        GachanGame::Log("スコア(SCORE) %d\n", gachan->score);
                    }
                }
            }
        }
    }

    void Render()
    {
        gachan->camera.SetCamera();

        gachan->lightambient.SetLight();
        gachan->lightdirection.SetLight();
        
        gachan->bar.Draw();
        gachan->ball.Draw();
        
        //render wall
        for (int i = -4; i <= 6; i++) {
            gachan->wall.SetPosition(5, 0, i);
            gachan->wall.Draw();
        }
        for (int i = -4; i <= 6; i++) {
            gachan->wall.SetPosition(-5, 0, i);
            gachan->wall.Draw();
        }
        for (int i = -5; i <= 5; i++) {
            gachan->wall.SetPosition(i, 0, 7);
            gachan->wall.Draw();
        }

        //render balloons
        for (int i = 0; i < 24; i++) {
            if (gachan->balloonstate[i]) {
                gachan->balloon[i].Draw();
            }
        }
    }

    void Release()
    {
        delete gachan;
    }

    void Finalize()
    {
    }
}





//
// Transform3D.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"

//----------------------------
//3D変換 Transform3D
//変換で関節の階層構造をつくる！ Creating a hierarchical structure of joints by transformation!
//----------------------------

//----------------------------
//解説はこちら。 Explanation is here.
// 3D変換 Transform3D
// https://youtu.be/yTgVhLlgPvs
// 変換で関節の階層構造をつくる！ Creating a hierarchical structure of joints by transformation!
// https://youtu.be/9rziCENfXWo
//----------------------------

namespace Transform3D
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
        
        GachanGameObject         pS;
        Val                      pSzangle;
        Val                      pSxangle;

        GachanGameObject         pE;
        Val                      pEzangle;
        Val                      pExangle;
        
        GachanGameObject         pH;
        Val                      pHzangle;
        Val                      pHxangle;

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
        
        gachan->camera.SetPosition(0, 0, -10);
        gachan->camera.SetTarget(0, 0, 0);
        gachan->camera.SetAngle(RADIAN(45));
        
        gachan->lightambient.SetColor(0.4, 0.4, 0.4);
        
        gachan->lightdirection.SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetDirection(-0.5, -0.6, 0.7);

        
        
        gachan->pS.Clear();
        gachan->pS.SetObject(GachanGameObject::OBJECT::ARM_UPPER_R);
        gachan->pS.SetColor(GachanGame::COLOR::WHITE);
        gachan->pSzangle = RADIAN(29);
        gachan->pSxangle = RADIAN(22);

        gachan->pE.Clear();
        gachan->pE.SetObject(GachanGameObject::OBJECT::ARM_LOWER_R);
        gachan->pE.SetColor(GachanGame::COLOR::WHITE);
        gachan->pEzangle = RADIAN(50);
        gachan->pExangle = RADIAN(35);

        gachan->pH.Clear();
        gachan->pH.SetObject(GachanGameObject::OBJECT::ARM_HAND_R);
        gachan->pH.SetColor(GachanGame::COLOR::WHITE);
        gachan->pHzangle = RADIAN(-15);
        gachan->pHxangle = RADIAN(-67);



        gachan->grid.Clear();
        gachan->grid.SetObject(GachanGameObject::OBJECT::GRID10x10);
        gachan->grid.SetRotation(RO_XYZ, RADIAN(-90), 0, 0);
        gachan->grid.SetColor(GachanGame::COLOR::GLAY);
    }
    
    void Update()
    {
        static float keyrot = 0.1;
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
            gachan->pSzangle -= keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
            gachan->pSzangle += keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
            gachan->pSxangle += keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
            gachan->pSxangle -= keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::A))  {
            gachan->pEzangle -= keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::D))  {
            gachan->pEzangle += keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::W))  {
            gachan->pExangle -= keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::S))  {
            gachan->pExangle += keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::NUM1))  {
            gachan->pHzangle -= keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::NUM4))  {
            gachan->pHzangle += keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::NUM2))  {
            gachan->pHxangle -= keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::NUM3))  {
            gachan->pHxangle += keyrot;
        }
        if (gachan->controller.GetAvailable(0)) {
            Val x = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LX);
            Val y = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LY);

            static float k = 0.02;
            
            if (gachan->controller.GetOn(0, GachanGameControllerDevice::A)) {
                gachan->pEzangle += k * x;
                gachan->pExangle += k * y;
            }
            else if (gachan->controller.GetOn(0, GachanGameControllerDevice::B)) {
                gachan->pHzangle += k * x;
                gachan->pHxangle += k * y;
            }
            else {
                gachan->pSzangle += k * x;
                gachan->pSxangle += k * y;
            }
        }
        GachanGame::Log("pS %.1f %.1f pE %.1f %.1f pH %.1f %.1f\n",
                        DEGREE(gachan->pSzangle),
                        DEGREE(gachan->pSxangle),
                        DEGREE(gachan->pEzangle),
                        DEGREE(gachan->pExangle),
                        DEGREE(gachan->pHzangle),
                        DEGREE(gachan->pHxangle)
                        );
    }
    
    void Render()
    {
        gachan->camera.SetCamera();
        
        gachan->lightambient  .SetLight();
        gachan->lightdirection.SetLight();
        
        
        //----------------------------
        //解説はこちら。 Explanation is here.
        // 3D変換 Transform3D
        // https://youtu.be/yTgVhLlgPvs
        // 変換で関節の階層構造をつくる！ Creating a hierarchical structure of joints by transformation!
        // https://youtu.be/9rziCENfXWo
        //----------------------------
        Mat m, S, R, T;

        const Val pSsize = 2.5;//上腕の長さ Size of upper arm
        const Val pEsize = 2;  //前腕の長さ Size of lower arm
        {
            //------------------
            //Shoulder
            //------------------
            S = Mat::GetScale( 1 );
            R = Mat::GetRotate(ROTATIONORDER::ZYX, gachan->pSxangle, 0, gachan->pSzangle);
            T = Mat::GetTranslate( 1, 2, 0);
        
            Mat LS = S * R * T;
            m = LS;
            
            gachan->pS.SetMatrix(m);
            gachan->pS.Draw();

            {
                //------------------
                //Elbow
                //------------------
                S = Mat::GetScale( 1 );
                R = Mat::GetRotate(ROTATIONORDER::ZYX, gachan->pExangle, 0, gachan->pEzangle);
                T = Mat::GetTranslate( -pSsize, 0, 0);
                
                Mat LE = S * R * T;
                m = LE * m;

                gachan->pE.SetMatrix(m);
                gachan->pE.Draw();
                
                {
                    //------------------
                    //Hand
                    //------------------
                    S = Mat::GetScale( 1 );
                    R = Mat::GetRotate(ROTATIONORDER::ZYX, gachan->pHxangle, 0, gachan->pHzangle);
                    T = Mat::GetTranslate( -pEsize, 0, 0);
                    
                    Mat LH = S * R * T;
                    m = LH * m;

                    gachan->pH.SetMatrix(m);
                    gachan->pH.Draw();
                }
            }
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











//
// Transform2D.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"

//----------------------------
//2D変換 Transform2D
//変換で関節の階層構造をつくる！ Creating a hierarchical structure of joints by transformation!
//----------------------------

//----------------------------
//解説はこちら。 Explanation is here.
// 2D変換 Transform2D
// https://www.youtube.com/watch?v=_crIwRmchKs
// 変換で関節の階層構造をつくる！ Creating a hierarchical structure of joints by transformation!
// https://youtu.be/9rziCENfXWo
//----------------------------

namespace Transform2D
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
        Val                      pSangle;
        
        GachanGameObject         pE;
        Val                      pEangle;
        
        GachanGameObject         pH;
        Val                      pHangle;

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
        gachan->pSangle = RADIAN(35);

        gachan->pE.Clear();
        gachan->pE.SetObject(GachanGameObject::OBJECT::ARM_LOWER_R);
        gachan->pE.SetColor(GachanGame::COLOR::WHITE);
        gachan->pEangle = RADIAN(25);

        gachan->pH.Clear();
        gachan->pH.SetObject(GachanGameObject::OBJECT::ARM_HAND_R);
        gachan->pH.SetColor(GachanGame::COLOR::WHITE);
        gachan->pHangle = RADIAN(-45);
        


        gachan->grid.Clear();
        gachan->grid.SetObject(GachanGameObject::OBJECT::GRID10x10);
        gachan->grid.SetRotation(RO_XYZ, RADIAN(-90), 0, 0);
        gachan->grid.SetColor(GachanGame::COLOR::GLAY);
    }
    
    void Update()
    {
        static float keyrot = 0.1;
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
            gachan->pSangle -= keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
            gachan->pSangle += keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
            gachan->pEangle += keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
            gachan->pEangle -= keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::A))  {
            gachan->pHangle -= keyrot;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::D))  {
            gachan->pHangle += keyrot;
        }
        if (gachan->controller.GetAvailable(0)) {
            Val x = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LX);
            
            static float k = 0.02;
            
            if (gachan->controller.GetOn(0, GachanGameControllerDevice::A)) {
                gachan->pEangle += k * x;
            }
            else if (gachan->controller.GetOn(0, GachanGameControllerDevice::B)) {
                gachan->pHangle += k * x;
            }
            else {
                gachan->pSangle += k * x;
            }
        }
        GachanGame::Log("pS %.1f pE %.1f pH %.1f\n",
                        DEGREE(gachan->pSangle),
                        DEGREE(gachan->pEangle),
                        DEGREE(gachan->pHangle)
                        );
    }
    
    void Render()
    {
        gachan->camera.SetCamera();
        
        gachan->lightambient  .SetLight();
        gachan->lightdirection.SetLight();
        
        //------------------------------------
        //解説はこちら。 Explanation is here.
        // 2D変換 Transform2D
        // https://www.youtube.com/watch?v=_crIwRmchKs
        // 変換で関節の階層構造をつくる！ Creating a hierarchical structure of joints by transformation!
        // https://youtu.be/9rziCENfXWo
        //------------------------------------
        Mat m, S, R, T;

        const Val pSsize = 2.5;//上腕の長さ Size of upper arm
        const Val pEsize = 2;  //前腕の長さ Size of lower arm
        {
            //------------------
            //Shoulder
            //------------------
            S = Mat::GetScale( 1 );
            R = Mat::GetRotateZ(gachan->pSangle);
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
                R = Mat::GetRotateZ(gachan->pEangle);
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
                    R = Mat::GetRotateZ(gachan->pHangle);
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











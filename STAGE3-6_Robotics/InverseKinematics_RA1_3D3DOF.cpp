//
// InverseKinematics_RA1_2D2DOF.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"

//----------------------------
//逆運動学3D3自由度 InverseKinematics_RA1_2D2DOF
//
//解説はこちら。 Explanation is here.
//----------------------------


namespace InverseKinematics_RA1_3D3DOF
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
        
        GachanGameIK_RA1_3D3DOF  ik3D3DOF;
        Val                      determinant;

        GachanGameObject         pS;
        Val                      pSangle;
        Val                      pSxangle;

        GachanGameObject         pE;
        Val                      pEangle;
        
        GachanGameObject         pH;
        Vec3                     pHpos;

        GachanGameObject         grid;
        GachanGameObject         gridhorizontal;
        GachanGameObject         text;
    };
    static Gachan* gachan;
    
    const Val pSsize = 2.5;//上腕の長さ Size of upper arm
    const Val pEsize = 2.5;  //前腕の長さ Size of lower arm
    

    void Initialize()
    {
        
    }
    
    void Create()
    {
        gachan = new Gachan;
        
        gachan->game.SetBackgroundColor(0, 0.1f, 0.1f);
        
        gachan->camera.SetPosition(0, -2, -10);
        gachan->camera.SetTarget(0, -2, 0);
        gachan->camera.SetAngle(RADIAN(45));
        
        gachan->lightambient.SetColor(0.4, 0.4, 0.4);
        
        gachan->lightdirection.SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetDirection(-0.5, -0.6, 0.7);

        
        
        gachan->pS.Clear();
        gachan->pS.SetObject(GachanGameObject::OBJECT::ARM_UPPER_R);
        gachan->pS.SetColor(GachanGame::COLOR::WHITE);
        gachan->pSxangle = RADIAN(45);
        gachan->pSangle = RADIAN(30);

        gachan->pE.Clear();
        gachan->pE.SetObject(GachanGameObject::OBJECT::ARM_LOWER_R);
        gachan->pE.SetColor(GachanGame::COLOR::WHITE);
        gachan->pEangle = RADIAN(70);

        gachan->pH.Clear();
        gachan->pH.SetObject(GachanGameObject::OBJECT::SPHERE);
        gachan->pH.SetColor(GachanGame::COLOR::WHITE);

        gachan->grid.Clear();
        gachan->grid.SetObject(GachanGameObject::OBJECT::GRID10x10);
        gachan->grid.SetRotation(RO_XYZ, RADIAN(-90), 0, 0);
        gachan->grid.SetColor(GachanGame::COLOR::GLAY);

        gachan->gridhorizontal.Clear();
        gachan->gridhorizontal.SetObject(GachanGameObject::OBJECT::GRID10x10);
        gachan->gridhorizontal.SetRotation(RO_XYZ, 0, 0, 0);
        gachan->gridhorizontal.SetColor(GachanGame::COLOR::GLAY);
        
        gachan->pHpos = gachan->ik3D3DOF.SetIK(-pEsize, gachan->pEangle, -pSsize, gachan->pSangle, gachan->pSxangle, 7);

        gachan->text.Clear();
        gachan->text.SetObject(GachanGameObject::OBJECT::TEXT);
        gachan->text.SetColor(GachanGame::COLOR::YELLOW);
        gachan->text.SetTextParameter(0.4, 1, 1);
        gachan->text.SetPosition(1, 0, 0);

    }
    
    void Update()
    {
        static float key = 0.1;
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
            gachan->pHpos.x -= key;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
            gachan->pHpos.x += key;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
            gachan->pHpos.y += key;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
            gachan->pHpos.y -= key;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::A))  {
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::D))  {
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::W))  {
            gachan->pHpos.z += key;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::S))  {
            gachan->pHpos.z -= key;
        }
        if (gachan->controller.GetAvailable(0)) {
            Val x = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LX);
            Val y = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LY);
            Val z = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_RY);

            static float k = 0.02;
            gachan->pHpos.x += k * x;
            gachan->pHpos.y += k * y;
            gachan->pHpos.z += k * z;
        }
        
        //----------------------------
        //逆運動学3D3自由度 InverseKinematics3D3DOF
        //
        //解説はこちら。 Explanation is here.
        //----------------------------

        GachanGameIK_RA1_Return ikret = gachan->ik3D3DOF.GetIK(gachan->pHpos);
        gachan->determinant = ikret.determinant;
        gachan->pSxangle    = ikret.pSxangle;
        gachan->pSangle     = ikret.pSangle;
        gachan->pEangle     = ikret.pEangle;
        gachan->pHpos       = ikret.position3D;
    }
    
    void Render()
    {
        gachan->camera.SetCamera();
        
        gachan->lightambient  .SetLight();
        gachan->lightdirection.SetLight();
        
        Mat m, S, R, T;

        {
            //------------------
            //Shoulder
            //------------------
            S = Mat::GetScale( 1 );
            R = Mat::GetRotate(ROTATIONORDER::ZYX, gachan->pSxangle, 0, gachan->pSangle);
            T = Mat::GetTranslate( 0, 0, 0);
        
            Mat LS = S * R * T;
            m = LS;
            
            gachan->pS.SetMatrix(m);
            gachan->pS.Draw();

            {
                //------------------
                //Elbow
                //------------------
                S = Mat::GetScale( 1 );
                R = Mat::GetRotate(ROTATIONORDER::ZYX, 0, 0, gachan->pEangle);
                T = Mat::GetTranslate( -pSsize, 0, 0);
                
                Mat LE = S * R * T;
                m = LE * m;

                gachan->pE.SetMatrix(m);
                gachan->pE.Draw();
                
                {
                    //------------------
                    //Hand
                    //------------------
                    S = Mat::GetScale( 0.3 );
                    T = Mat::GetTranslate( -pEsize, 0, 0);
                    
                    Mat LH = S * T;
                    m = LH * m;

                    gachan->pH.SetMatrix(m);
                    gachan->pH.Draw();
                    
                    //GachanGame::Log("draw %.2f %.2f %.2f\n", m.et.x, m.et.y, m.et.z);

                }
            }
        }
        gachan->text.Draw(u8"Determinant = %.2f", gachan->determinant);
        gachan->gridhorizontal.SetPosition(0, gachan->pHpos.y, 0);
        gachan->gridhorizontal.Draw();
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











//
// VectorDraw.cpp
// UTF-8 CRLF format/形式
//
#include "Gachan.h"

//----------------------------
//解説はこちら。 Explanation is here.
//----------------------------

namespace VectorDraw
{
    class Gachan
    {
    public:
        GachanGameKeyboard       keyboard;
        GachanGameController     controller;
        GachanGameCamera         camera;
        GachanGameLightAmbient   lightambient;
        GachanGameLightDirection lightdirection;
        Vec                      positionA, positionB;
        GachanGameObject         vector;
        Val                      diameter;

        GachanGameObject         textA;
        GachanGameObject         textB;

    };
    static Gachan* gachan;

    void Initialize()
    {
    }

    void Create()
    {
        gachan = new Gachan;
        
        gachan->camera.SetPosition(0, 0, -10);
        gachan->camera.SetTarget(0, 0, 0);
        gachan->camera.SetAngle(45);

        gachan->lightambient  .SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetDirection(-0.5, -0.6, 0.7);

        gachan->textA.Clear();
        gachan->textA.SetObject(GachanGameObject::OBJECT::TEXT);
        gachan->textA.SetColor(GachanGame::COLOR::YELLOW);
        gachan->textA.SetTextParameter(0.4, 1, 1);
        gachan->textA.SetPosition(1, 0, 0);
        
        gachan->textB.Clear();
        gachan->textB.SetObject(GachanGameObject::OBJECT::TEXT);
        gachan->textB.SetColor(GachanGame::COLOR::YELLOW);
        gachan->textB.SetTextParameter(0.4, 1, 1);
        gachan->textB.SetPosition(1, 0, 0);

        gachan->vector.Clear();
        gachan->vector.SetObject(GachanGameObject::OBJECT::VECTOR);
        gachan->vector.SetVectorParameter(0.5, true, false);
        gachan->vector.SetColor(GachanGame::COLOR::GREEN);
        
        gachan->diameter = 0.5;
        
        gachan->positionA.Set(2,2,2);
        gachan->positionB.Set(-2,-2,-2);

    }

    void Update()
    {
        static Int inputAB = 0;
        static float key = 0.1;
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::SPACE))  {
            inputAB++;
        }
        Vec add;
        add.Clear();
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
            add.x = -key;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
            add.x = key;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
            add.y = key;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
            add.y = -key;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::A))  {
            gachan->diameter -= 0.05;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::D))  {
            gachan->diameter += 0.05;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::W))  {
            add.z = key;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::S))  {
            add.z = -key;
        }
        if (inputAB & 1) {
            gachan->positionB += add;
        }
        else {
            gachan->positionA += add;
        }
        
        if (gachan->controller.GetAvailable(0)) {
            
            if (gachan->controller.GetPush(0, GachanGameControllerDevice::A)) {
                inputAB++;
            }
            
            Val x = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LX);
            Val y = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LY);
            Val z = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_RY);

            static float k = 0.05;
            if (inputAB & 1) {
                gachan->positionB.x += k * x;
                gachan->positionB.y += k * y;
                gachan->positionB.z += k * z;
            }
            else {
                gachan->positionA.x += k * x;
                gachan->positionA.y += k * y;
                gachan->positionA.z += k * z;
            }
        }

    }

    void Render()
    {
        gachan->camera.SetCamera();
        gachan->lightambient.SetLight();
        gachan->lightdirection.SetLight();
        
        Mat44 mat;
        mat.Clear();
#if 0
        static Val rot = 0.0f;
        rot += 0.01f;
        mat.Translate(10*Math::Sin(rot), 0.0f, 10*Math::Cos(rot) + 10);
        mat.RotateX(rot);
        mat.Scale(1.5, 1.5, 1.5);
#endif
        MatStack::Push();
        MatStack::Mul(mat);

        Vec add;
        add.Clear();
        
        add.x = 6;
        gachan->vector.SetColor(GachanGame::COLOR::RED);
        gachan->vector.SetVectorParameter(gachan->diameter, true, false);
        gachan->vector.SetPosition(gachan->positionA+add, gachan->positionB+add);
        gachan->vector.Draw();

        add.x = 2;
        gachan->vector.SetColor(GachanGame::COLOR::GREEN);
        gachan->vector.SetVectorParameter(gachan->diameter, true, true);
        gachan->vector.SetPosition(gachan->positionA+add, gachan->positionB+add);
        gachan->vector.Draw();

        add.x = -2;
        gachan->vector.SetColor(GachanGame::COLOR::BLUE);
        gachan->vector.SetVectorParameter(gachan->diameter, false, false);
        gachan->vector.SetPosition(gachan->positionA+add, gachan->positionB+add);
        gachan->vector.Draw();

        add.x = -6;
        gachan->vector.SetColor(GachanGame::COLOR::WHITE);
        gachan->vector.SetVectorParameter(gachan->diameter, false, true);
        gachan->vector.SetPosition(gachan->positionA+add, gachan->positionB+add);
        gachan->vector.Draw();

        add.x = 2;
        gachan->textA.SetPosition(gachan->positionA+add);
        gachan->textA.Draw(u8"(%.2f, %.2f, %.2f)", gachan->positionA.x+add.x, gachan->positionA.y, gachan->positionA.z);
        gachan->textB.SetPosition(gachan->positionB+add);
        gachan->textB.Draw(u8"(%.2f, %.2f, %.2f)", gachan->positionB.x+add.x, gachan->positionB.y, gachan->positionB.z);

        MatStack::Pop();
    }

    void Release()
    {
        delete gachan;
    }

    void Finalize()
    {
    
    }
}





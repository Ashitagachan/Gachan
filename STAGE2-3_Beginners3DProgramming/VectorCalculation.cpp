//
// VectorCalculation.cpp
// UTF-8 CRLF format/形式
//
#include "Gachan.h"

//----------------------------
//解説はこちら。 Explanation is here.
//----------------------------

namespace VectorCalculation
{
    class Gachan
    {
    public:
        GachanGameKeyboard       keyboard;
        GachanGameController     controller;
        GachanGameCamera         camera;
        GachanGameLightAmbient   lightambient;
        GachanGameLightDirection lightdirection;
        int                      calculation;
        
        Vec                      a, n, result;
        GachanGameObject         adraw;
        GachanGameObject         ndraw;
        GachanGameObject         resultdraw;
        GachanGameObject         guidedraw;

        GachanGameObject         text[2];

        GachanGameObject         grid;

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

        gachan->calculation = 0;
        
        for (int i = 0; i < 2; i++) {
            gachan->text[i].Clear();
            gachan->text[i].SetObject(GachanGameObject::OBJECT::TEXT);
            gachan->text[i].SetColor(GachanGame::COLOR::YELLOW);
            gachan->text[i].SetTextParameter(0.4, 1, 1);
        }

        gachan->adraw.Clear();
        gachan->adraw.SetObject(GachanGameObject::OBJECT::VECTOR);
        gachan->adraw.SetColor(GachanGame::COLOR::WHITE);
        gachan->adraw.SetVectorParameter(0.2, false, true);

        gachan->ndraw.Clear();
        gachan->ndraw.SetObject(GachanGameObject::OBJECT::VECTOR);
        gachan->ndraw.SetColor(GachanGame::COLOR::WHITE);
        gachan->ndraw.SetVectorParameter(0.2, false, true);

        gachan->resultdraw.Clear();
        gachan->resultdraw.SetObject(GachanGameObject::OBJECT::VECTOR);
        gachan->resultdraw.SetColor(GachanGame::COLOR::RED);
        gachan->resultdraw.SetVectorParameter(0.18, false, true);

        gachan->guidedraw.Clear();
        gachan->guidedraw.SetObject(GachanGameObject::OBJECT::VECTOR);
        gachan->guidedraw.SetColor(GachanGame::COLOR::LIGHTGLAY);
        gachan->guidedraw.SetVectorParameter(0.1, false, false);

        //初期値　zは0から始める（動かせる）
        gachan->a.Set(-2,  4, 0);
        gachan->n.Set(-1, -1, 0);
        gachan->result.Clear();
        
        gachan->grid.Clear();
        gachan->grid.SetObject(GachanGameObject::OBJECT::GRID10x10);
        gachan->grid.SetRotation(RO_XYZ, RADIAN(-90), 0, 0);
        gachan->grid.SetColor(GachanGame::COLOR::GLAY);

    }

    void Update()
    {
        static Int inputAN = 0;
        static float key = 0.1;
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::SPACE))  {
            inputAN++;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::ENTER))  {
            gachan->calculation++;
            gachan->calculation %= 6;
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
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::D))  {
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::W))  {
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::S))  {
        }
        if (inputAN & 1) {
            gachan->n += add;
        }
        else {
            gachan->a += add;
        }
        
        if (gachan->controller.GetAvailable(0)) {
            
            if (gachan->controller.GetPush(0, GachanGameControllerDevice::A)) {
                inputAN++;
            }
            if (gachan->controller.GetPush(0, GachanGameControllerDevice::B)) {
                gachan->calculation++;
                gachan->calculation %= 6;
            }

            
            Val x = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LX);
            Val y = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LY);

            static float k = 0.05;
            if (inputAN & 1) {
                gachan->n.x += k * x;
                gachan->n.y += k * y;
            }
            else {
                gachan->a.x += k * x;
                gachan->a.y += k * y;
            }
        }

    }

    void Render()
    {
        gachan->camera.SetCamera();
        gachan->lightambient.SetLight();
        gachan->lightdirection.SetLight();

        gachan->text[1].SetPosition(-4, 4, 0);
        gachan->text[1].Draw(u8"Push 'Space' or 'A' change control\nPush 'Enter' or 'B' to go next");

        switch (gachan->calculation) {
        case 0:
            {
                //内積 inner product
                Val inner = gachan->a ^ gachan->n;
        
                //描画
                gachan->adraw.SetPosition(VecZERO, gachan->a);
                gachan->adraw.Draw();
        
                gachan->ndraw.SetPosition(VecZERO, gachan->n);
                gachan->ndraw.Draw();

                gachan->text[0].SetPosition(VecZERO);
                gachan->text[0].Draw(u8" Inner Product = %.2f", inner);
                break;
            }
        case 1:
            {
                //射影ベクトル
                gachan->n.SetUnit();
                gachan->result = gachan->a.GetProject(gachan->n);

                //描画
                gachan->adraw.SetPosition(VecZERO, gachan->a);
                gachan->adraw.Draw();
                
                gachan->ndraw.SetPosition(VecZERO, gachan->n);
                gachan->ndraw.Draw();

                gachan->resultdraw.SetPosition(VecZERO, gachan->result);
                gachan->resultdraw.Draw();
                
                gachan->guidedraw.SetPosition(gachan->a, gachan->result);
                gachan->guidedraw.Draw();

                gachan->text[0].SetPosition(gachan->result);
                gachan->text[0].Draw(u8"Project Vector");

                break;
            }
            case 2:
                {
                    //反射ベクトル
                    gachan->n.SetUnit();
                    gachan->result = gachan->a.GetReflect(gachan->n);

                    //描画
                    gachan->adraw.SetPosition(VecZERO - gachan->a, gachan->a - gachan->a);
                    gachan->adraw.Draw();
                        
                    gachan->ndraw.SetPosition(VecZERO, gachan->n);
                    gachan->ndraw.Draw();

                    gachan->resultdraw.SetPosition(VecZERO, gachan->result);
                    gachan->resultdraw.Draw();

                    gachan->guidedraw.SetPosition(-gachan->a, gachan->result);
                    gachan->guidedraw.Draw();

                    gachan->text[0].SetPosition(gachan->result);
                    gachan->text[0].Draw(u8"Reflect Vector");

                    break;
                }
                case 3:
                {
                    //吸収ベクトル
                    gachan->n.SetUnit();
                    gachan->result = gachan->a.GetAbsorb(gachan->n);

                    //描画
                    gachan->adraw.SetPosition(VecZERO - gachan->a, gachan->a - gachan->a);
                    gachan->adraw.Draw();
                            
                    gachan->ndraw.SetPosition(VecZERO, gachan->n);
                    gachan->ndraw.Draw();

                    gachan->resultdraw.SetPosition(VecZERO - gachan->result, gachan->result - gachan->result);
                    gachan->resultdraw.Draw();

                    gachan->guidedraw.SetPosition(-gachan->a, -gachan->result);
                    gachan->guidedraw.Draw();

                    gachan->text[0].SetPosition(VecZERO);
                    gachan->text[0].Draw(u8"Absorb Vector");

                    break;
                }
                case 4:
                {
                    //外積
                    gachan->result = gachan->a * gachan->n;

                    //描画
                    gachan->adraw.SetPosition(VecZERO, gachan->a);
                    gachan->adraw.Draw();
                            
                    gachan->ndraw.SetPosition(VecZERO, gachan->n);
                    gachan->ndraw.Draw();

                    gachan->resultdraw.SetPosition(VecZERO, gachan->result);
                    gachan->resultdraw.Draw();

                    gachan->text[0].SetPosition(gachan->result);
                    gachan->text[0].Draw(u8" Outer Product (z = %.2f)", gachan->result.z);

                    break;
                }
                case 5:
                {
                    //三角形の中か外か
                    Vec3 ta, tb;
                    ta.Set( 2,  2, 0);
                    tb.Set(-2,  2, 0);

                    bool inside = Prim::PointInTraiangle(gachan->a, ta, tb, gachan->n);
                    
                    //描画
                    gachan->adraw.SetPosition(tb, ta);
                    gachan->adraw.Draw();
                    gachan->adraw.SetPosition(tb, gachan->n);
                    gachan->adraw.Draw();
                    gachan->adraw.SetPosition(gachan->n, ta);
                    gachan->adraw.Draw();

                    gachan->resultdraw.SetPosition(VecZERO, gachan->a);
                    gachan->resultdraw.Draw();

                    gachan->text[0].SetPosition(gachan->a);
                    gachan->text[0].Draw(u8"%s of Triangle", (inside)?u8"Inside" : u8"Outside");

                    break;
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





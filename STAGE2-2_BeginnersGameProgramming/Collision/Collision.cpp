//
// Sample000.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"


namespace data {
#include "Collision.tst"
}
 

namespace Collision
{
    class Gachan
    {
    public:
        GachanGame game;
        GachanGameKeyboard keyboard;
        GachanGameCamera camera;
        GachanGameLightAmbient lightambient;
        GachanGameLightDirection lightdirection;
        
        GachanGameObject stage;
        Gachan3DColliStatic colgrid;
        
        int xidx, yidx, zidx;
        Vec a, b;
        bool           AorB;

        GachanGameObject arrow;
        GachanGameObject grid;
    };
    static Gachan* gachan;

    void Initialize()
    {
		GachanInitialize::Disable(GachanInitialize::FLG_SHADOWMAP);
    }

    void Create()
    {
        gachan = new Gachan;
        
        gachan->game.SetBackgroundColor(0, 0.1f, 0.1f);
        
        gachan->camera.SetPosition(2, 5, -15);
        gachan->camera.SetTarget(0, 0, 0);
        gachan->camera.SetAngle(RADIAN(45));
        
        gachan->lightambient.SetColor(0.4, 0.4, 0.4);
        
        gachan->lightdirection.SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetDirection(-0.5, -0.6, 0.7);
                    
        data::object_Stage__->Create();
        gachan->colgrid.CreateFromObject(1.5f, 1.5f, 1.5f, 1024*128, data::object_Stage__);

        gachan->stage     .Clear();
        gachan->stage     .SetObject(data::object_Stage__);
        
		gachan->AorB = false;
        gachan->a.Set(0, 4, 0);
        gachan->b.Set(0, -1, 0);
        
        gachan->arrow     .Clear();
        gachan->arrow     .SetObject(GachanGameObject::OBJECT::ARROW);
        gachan->arrow     .SetPosition(2, 0.5, -1);
        gachan->arrow     .SetColor(GachanGame::COLOR::RED);

        gachan->grid     .Clear();
        gachan->grid     .SetObject(GachanGameObject::OBJECT::GRID10x10);
        gachan->grid     .SetPosition(0, 0, 0);
        gachan->grid     .SetColor(GachanGame::COLOR::WHITE);
    }

    void Add(Val& a, Val& b, Val v)
    {
        if (gachan->AorB) {
            a += v;
        }
        else {
            b += v;
        }
    }

    void Update()
    {
        {
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::SPACE))  {
                gachan->AorB = !gachan->AorB;
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
                Add(gachan->a.z, gachan->b.z, 1.0f);
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
                Add(gachan->a.z, gachan->b.z, -1.0f);
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
                Add(gachan->a.x, gachan->b.x, -1.0f);
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
                Add(gachan->a.x, gachan->b.x, 1.0f);
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::W))  {
                Add(gachan->a.y, gachan->b.y, 1.0f);
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::S))  {
                Add(gachan->a.y, gachan->b.y, -1.0f);
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
        
        //コリジョン Collision
        {
            Gachan3DColliStatic::Col* col;
            Vec op;
            Val distance2 = gachan->colgrid.Query(&col, op, gachan->a, gachan->b);
            if (distance2 < (gachan->a - gachan->b).GetLength2()) {
                //コリジョン処理 Process Collision
            }
            else {
            }
        }
    }

    void Render()
    {
        gachan->camera.SetCamera();

        gachan->lightambient  .SetLight();
        gachan->lightdirection.SetLight();
        
        gachan->stage    .Draw();
        gachan->arrow    .Draw();
        gachan->grid     .Draw();
        
        if (Gachan3DPass::GetPass() != Gachan3DPass::DRAW_SHADOWMAP) {
            Vec op;
            //コリジョンのテスト描画
            gachan->colgrid.DrawQuery(op, gachan->a, gachan->b);
        }
    }

    void Release()
    {
        gachan->colgrid.Release();
        data::object_Stage__->Release();
        
        delete gachan;
    }

    void Finalize()
    {
    }
}





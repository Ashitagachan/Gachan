//
// Lighting.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"


namespace lightingobj1 {
#include "LightingFiles/LightingTest1.tst"
}
namespace lightingobj2 {
#include "LightingFiles/LightingTest2.tst"
}
namespace lightingobj3 {
#include "LightingFiles/LightingTest3.tst"
}

namespace Lighting
{
    class Gachan
    {
    public:
        GachanGame game;
        GachanGameKeyboard keyboard;
        GachanGameCamera camera;
        GachanGameLightAmbient lightambient;
        GachanGameLightDirection lightdirection;

        GachanGameObject         obj[4];
        Val                    cameraangle[4];
        Val*                   roughness[4][4];

        GachanGameObject text;
        Val lightambcolor;
        Val lightdircolor;
        Int mode;
    };
    static Gachan* gachan;

    void Initialize()
    {
        GachanInitialize::Disable(GachanInitialize::FLG_SHADOWMAP);
    }

    void Create()
    {
        gachan = new Gachan;
        
        gachan->game.SetBackgroundColor(0.1, 0.1, 0.1);
        
        gachan->camera.SetPosition(0, 0, -14);
        gachan->camera.SetTarget(0, 0, 0);
        
        gachan->lightdirection.SetDirection(0, 0, 1);
                    
        lightingobj1::object_root__->Create();
        lightingobj2::object_root__->Create();
        lightingobj3::object_root__->Create();
        
        gachan->obj[0].Clear();
        gachan->obj[0].SetObject(GachanGameObject::ANCIENTCUBE);
        GachanMaterial* mat = gachan->obj[0].GetMaterial(GachanGameObject::ANCIENTCUBE);
        gachan->roughness[0][0] = &mat->specular.a;
        gachan->roughness[0][1] = NULL;
        gachan->roughness[0][2] = NULL;
        gachan->roughness[0][3] = NULL;
        gachan->cameraangle[0] = 6;
        

        
        gachan->obj[1].Clear();
        gachan->obj[1].SetObject(lightingobj1::object_root__);
        gachan->roughness[1][0] = &lightingobj1::material_texn_target->specular.a;
        gachan->roughness[1][1] = &lightingobj1::material_texsn_target->specular.a;
        gachan->roughness[1][2] = &lightingobj1::material_texa_source->specular.a;
        gachan->roughness[1][3] = &lightingobj1::material_default_mate->specular.a;
        gachan->cameraangle[1] = 35;

        gachan->obj[2].Clear();
        gachan->obj[2].SetObject(lightingobj2::object_root__);
        gachan->roughness[2][0] = &lightingobj2::material_texsn_target->specular.a;
        gachan->roughness[2][1] = NULL;
        gachan->roughness[2][2] = NULL;
        gachan->roughness[2][3] = NULL;
        gachan->cameraangle[2] = 35;

        gachan->obj[3].Clear();
        gachan->obj[3].SetObject(lightingobj3::object_root__);
        gachan->roughness[3][0] = &lightingobj3::material_default_roughness1000_->specular.a;
        gachan->roughness[3][1] = NULL;
        gachan->roughness[3][2] = NULL;
        gachan->roughness[3][3] = NULL;
        gachan->cameraangle[3] = 45;

        gachan->text.Clear();
        gachan->text.SetObject(GachanGameObject::OBJECT::TEXT);
        gachan->text.SetPosition(-5, 5, 0);
        gachan->text.SetTextParameter(0.5);
        gachan->text.SetColor(GachanGame::COLOR::WHITE);

        
        gachan->lightambcolor = 0;
        gachan->lightdircolor = 1;

        gachan->mode = 0;
    }

    void Update()
    {
        
        const Val add = 0.05f;
        
        Vec objrot = gachan->obj[gachan->mode].GetRotation();
        
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
            objrot.x += add;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
            objrot.x -= add;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
            objrot.y += add;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
            objrot.y -= add;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::W))  {
            gachan->lightambcolor += 0.1f;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::S))  {
            gachan->lightambcolor -= 0.1f;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::A))  {
            gachan->lightdircolor -= 0.1f;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::D))  {
            gachan->lightdircolor += 0.1f;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::R))  {
            if (gachan->roughness[gachan->mode][0]) {
                *gachan->roughness[gachan->mode][0] += 0.0025;
            
                for (int i = 1; i < 4; i++) {
                    if (gachan->roughness[gachan->mode][i]) {
                        *gachan->roughness[gachan->mode][i] = *gachan->roughness[gachan->mode][0];
                    }
                }
            }
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::F))  {
            if (gachan->roughness[gachan->mode][0]) {
                *gachan->roughness[gachan->mode][0] -= 0.0025;
                for (int i = 1; i < 4; i++) {
                    if (gachan->roughness[gachan->mode][i]) {
                        *gachan->roughness[gachan->mode][i] = *gachan->roughness[gachan->mode][0];
                    }
                }
            }
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::NUM1))  {
            gachan->cameraangle[gachan->mode] -= 1;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::NUM2))  {
            gachan->cameraangle[gachan->mode] += 1;
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::SPACE))  {
            gachan->mode++;
            gachan->mode %= 4;
        }
        gachan->obj[gachan->mode].SetRotation(RO::XYZ, objrot);

        gachan->camera.SetAngle(RADIAN(gachan->cameraangle[gachan->mode]));
        gachan->lightambient.SetColor(gachan->lightambcolor, gachan->lightambcolor, gachan->lightambcolor);
        gachan->lightdirection.SetColor(gachan->lightdircolor, gachan->lightdircolor, gachan->lightdircolor);

    }

    void Render()
    {
        gachan->camera.SetCamera();

        gachan->lightambient  .SetLight();
        gachan->lightdirection.SetLight();
        
        gachan->obj[gachan->mode].Draw();

        Val roughness = (gachan->roughness[gachan->mode][0])? *gachan->roughness[gachan->mode][0] : 0;
        gachan->text.Draw(u8"Amb:%.2f Dir %.2f Roughness %.4f",
                            gachan->lightambcolor,
                            gachan->lightdircolor,
                            roughness);

    }

    void Release()
    {
        lightingobj1::object_root__->Release();
        lightingobj2::object_root__->Release();
        lightingobj3::object_root__->Release();
        delete gachan;
    }

    void Finalize()
    {
    }
}





//
// SampleText.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"

//SampleText.cppをビルドするにはGachanNameSpace.hのNAMESPACE定義をSampleTextに置き換えてください。
//To build SampleText.cpp, Replace NAMESPACE definition at GachanNameSpace.h with SampleText.


namespace SampleText
{
    const char* TextExplanation =
    u8" テキストは、「GachanGameObject」を使い、\n"
      "SetObject(GachanGameObject::OBJECT::TEXT);\n"
      "でテキストオブジェクトを指定して、\n"
      "Draw(u8\"テキストの内容\");\n"
      "でテキストを描画します。\n"
      "描画する位置は、「GachanGameObject」を使って指示します。\n"
      "Text uses GachanGameObject.\n"
      "Specify text object as\n"
      "SetObject(GachanGameObject::OBJECT::TEXT);\n"
      "and draw with\n"
      "Draw(u8\"text contents\");\n"
      "The position to draw text is indicated using 'GachanGameObject'.";
    
    class Gachan
    {
    public:
        GachanGame game;
        GachanGameKeyboard keyboard;
        GachanGameCamera camera;
        GachanGameLightAmbient lightambient;
        GachanGameLightDirection lightdirection;
        
        GachanGameObject explanationtext;
        
        GachanGameObject starchan;
        Vec              startarget;
        GachanGameObject startext;
        
        GachanGameObject grid;
    };
    static Gachan* gachan;

    void Initialize()
    {
        GachanInitialize::Enable(GachanInitialize::FLG_TEXT_JP_HIRAKANA);
        GachanInitialize::Enable(GachanInitialize::FLG_TEXT_JP_KANJI1ST);
    }

    void Create()
    {
        gachan = new Gachan;
        
        gachan->game.SetBackgroundColor(0, 0.1f, 0.1f);
        
        gachan->camera.SetPosition(0, 3, -10);
        gachan->camera.SetTarget(0, 1, 0);
        gachan->camera.SetAngle(RADIAN(45));
        
        gachan->lightambient.SetColor(0.4, 0.4, 0.4);
        
        gachan->lightdirection.SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetDirection(-0.5, -0.6, 0.7);
        
        gachan->explanationtext.Clear();
        gachan->explanationtext.SetObject(GachanGameObject::OBJECT::TEXT);
        gachan->explanationtext.SetPosition(-5, 5, 5);
        gachan->explanationtext.SetColor(1, 0.5, 0.5);
        gachan->explanationtext.SetTextParameter(0.5, 1, 1);

        gachan->starchan.Clear();
        gachan->starchan.SetObject(GachanGameObject::OBJECT::STARCHAN);
        gachan->starchan.SetColor(GachanGame::COLOR::YELLOW);
        gachan->startarget.Clear();

        gachan->startext.Clear();
        gachan->startext.SetObject(GachanGameObject::OBJECT::TEXT);
        gachan->startext.SetColor(GachanGame::COLOR::WHITE);
        gachan->startext.SetTextParameter(0.2, 1, 1);

        gachan->grid.Clear();
        gachan->grid.SetObject(GachanGameObject::OBJECT::GRID10x10);
        gachan->grid.SetPosition(0, -0.5, 0);
        gachan->grid.SetColor(GachanGame::COLOR::WHITE);
    }

    void Update()
    {
        {
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
                gachan->startarget.z += 1;
                gachan->starchan.SetRotation(RO_XYZ, 0, RADIAN(180), 0);
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
                gachan->startarget.z -= 1;
                gachan->starchan.SetRotation(RO_XYZ, 0, RADIAN(0), 0);
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
                gachan->startarget.x -= 1;
                gachan->starchan.SetRotation(RO_XYZ, 0, RADIAN(90), 0);
            }
            if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
                gachan->startarget.x += 1;
                gachan->starchan.SetRotation(RO_XYZ, 0, RADIAN(-90), 0);
            }
        }
        Vec starpos = gachan->starchan.GetPosition();
        starpos += (gachan->startarget - starpos) * 0.01;
        gachan->starchan.SetPosition(starpos);
    }

    void Render()
    {
        gachan->camera.SetCamera();

        gachan->lightambient  .SetLight();
        gachan->lightdirection.SetLight();
        
        gachan->explanationtext.Draw(TextExplanation);
        
        gachan->starchan.Draw();
        Vec starpos = gachan->starchan.GetPosition();
        Vec startextpos = starpos;
        startextpos.x += 0.5f;
        startextpos.y += 0.5f;
        gachan->startext.SetPosition(startextpos);
        gachan->startext.Draw(u8"座標 Coordinate\n (x,y,z) = (%.2f, %.2f, %.2f)", starpos.x, starpos.y, starpos.z);

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





//
// MyGame.cpp
// UTF-8 CRLF format/形式
//
#include "Gachan.h"

//----------------------------------
//ユーザーゲームのテンプレートになります。
//This is a template for user game
//----------------------------------

namespace MyGame
{
    class Gachan
    {
    public:
        GachanGameCamera         camera;
        GachanGameLightAmbient   lightambient;
        GachanGameLightDirection lightdirection;
        GachanGameObject         maruchan;
    };
    static Gachan* gachan;

    void Initialize()
    {
    }

    void Create()
    {
        gachan = new Gachan;
        
        gachan->camera.SetPosition(0, 5, -10);
        gachan->camera.SetTarget(0, 0, 0);
        gachan->camera.SetAngle(45);

        gachan->lightambient  .SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetDirection(-0.5, -0.6, 0.7);

        gachan->maruchan.Clear();
        gachan->maruchan.SetObject(GachanGameObject::OBJECT::MARUCHAN);
        gachan->maruchan.SetPosition(0, 0, 0);
        gachan->maruchan.SetColor(GachanGame::COLOR::GREEN);
    }

    void Update()
    {
    
    }

    void Render()
    {
        gachan->camera.SetCamera();
        gachan->lightambient.SetLight();
        gachan->lightdirection.SetLight();
        gachan->maruchan.Draw();
    }

    void Release()
    {
        delete gachan;
    }

    void Finalize()
    {
    
    }
}





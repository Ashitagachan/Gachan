//
// SampleController.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"

//SampleController.cppをビルドするにはGachanNameSpace.hのNAMESPACE定義をSampleControllerに置き換えてください。
//To build SampleController.cpp, Replace NAMESPACE definition at GachanNameSpace.h with SampleController.



namespace SampleController
{
    
    class Gachan
    {
    public:
        GachanGame game;
        GachanGameController controller;
        GachanGameCamera camera;
        
        GachanGameObject text;
    };
    static Gachan* gachan;
    
    void Initialize()
    {
        
    }
    
    void Create()
    {
        gachan = new Gachan;
        
        gachan->game.SetBackgroundColor(0.1, 0.1, 0.4);
        
        gachan->camera.SetPosition(0, 0, -10);
        gachan->camera.SetTarget(0, 0, 0);
        gachan->camera.SetAngle(RADIAN(45));
        
        gachan->text.Clear();
        gachan->text.SetObject(GachanGameObject::OBJECT::TEXT);
        gachan->text.SetColor(GachanGame::COLOR::WHITE);
    }
    
    void Update()
    {
    }
    
    void Render()
    {
        gachan->camera.SetCamera();
        
        
        if (gachan->controller.GetDeviceNumber() == 0) {
            gachan->text.SetPosition(-5, 2, 0.0);
            gachan->text.SetTextParameter(0.5f);
            gachan->text.Draw(u8"NO CONTROLLER DEVICE FOUND");
        }
        
        for (int i = 0; i < gachan->controller.GetDeviceNumber(); i++) {

			gachan->text.SetPosition(-7, -i * 0.4 + 2, 0);

            if (gachan->controller.GetAvailable(i)) {//not for KIND_GAMECONTROLLER_FRAMEWORK (return true)
                const char* kind[GachanGameControllerDevice::KIND_NUM] = {
                    u8"XINPUT",
                    u8"DIRECTINPUT",
                    u8"GC_FRAMEWORK",
                    u8"MACOS_HID"
                };
                gachan->text.SetTextParameter(0.4);
                gachan->text.Draw(u8"Device:%d  VID:0x%x PID:0x%x L %.2f %.2f  R %.2f %.2f %s", i,
                                 gachan->controller.GetVendorID(i),
                                 gachan->controller.GetProductID(i),
                                 gachan->controller.GetValue(i, GachanGameControllerDevice::INPUT::STICK_LX),
                                 gachan->controller.GetValue(i, GachanGameControllerDevice::INPUT::STICK_LY),
                                 gachan->controller.GetValue(i, GachanGameControllerDevice::INPUT::STICK_RX),
                                 gachan->controller.GetValue(i, GachanGameControllerDevice::INPUT::STICK_RY),
                                 kind[gachan->controller.GetKind(i)]);
            }
            else {                
                gachan->text.SetTextParameter(0.4f);
                gachan->text.Draw(u8"Device:%d UNAVAILABLE", i);
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











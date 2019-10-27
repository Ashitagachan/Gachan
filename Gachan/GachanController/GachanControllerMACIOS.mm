//
// GachanControllerMACIOS.mm  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#import <GameController/GameController.h>
#include "GachanController.h"


static int maxPlayerIndex = -1;

static int UpateGameControllerFramework()
{
#define NOUSE_PLAYERINDEX (1)
#define NOUSE_AVAILABLE   (1)

#if NOUSE_PLAYERINDEX
    int playerIndex = -1;
#endif
    
    NSArray * controllers = [GCController controllers];
    for(GCController * c in controllers) {
        
#if NOUSE_PLAYERINDEX
        playerIndex++;
#else
        int playerIndex = c.playerIndex;//なぜか-1が返ってくる
        if (playerIndex >= GachanController::DEVICE_NUM) {
            continue;
        }
#endif
        if (maxPlayerIndex < playerIndex) {
            maxPlayerIndex = playerIndex;
        }
        
        GachanController::device[playerIndex].kind = GachanControllerDevice::KIND_GAMECONTROLLER_FRAMEWORK;
        GachanController::device[playerIndex].vendorID = 0;
        GachanController::device[playerIndex].productID = 0;
#if NOUSE_AVAILABLE
        GachanController::device[playerIndex].available = true;
#else
        GachanController::device[playerIndex].available = (c.attachedToDevice);//なぜかfalseが返ってくる
#endif
        GCExtendedGamepad* exgamepad = c.extendedGamepad;
        
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::DPAD_X]     = exgamepad.dpad.xAxis.value;
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::DPAD_Y]     = exgamepad.dpad.yAxis.value;//右と上が+1  左と下が-1
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::STICK_LX]   = exgamepad.leftThumbstick.xAxis.value;
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::STICK_LY]   = exgamepad.leftThumbstick.yAxis.value;//右と上が+1  左と下が-1
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::STICK_RX]   = exgamepad.rightThumbstick.xAxis.value;
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::STICK_RY]   = exgamepad.rightThumbstick.yAxis.value;//右と上が+1  左と下が-1
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::SHOULDER_L] = exgamepad.leftShoulder.value;
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::SHOULDER_R] = exgamepad.rightShoulder.value;
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::TRIGGER_L]  = exgamepad.leftTrigger.value;
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::TRIGGER_R]  = exgamepad.rightTrigger.value;
        
        //macOS 10.14.1 or newer
        //これは、macOS CatalinaのApple Arcade 対応に伴い、PS4/XBoxOneコントローラに対応する布石ですね。
        if (@available(macOS 10.14.1, *)) {
            GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::THUMBSTICKBUTTON_L] = exgamepad.leftThumbstickButton.value;
            GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::THUMBSTICKBUTTON_R] = exgamepad.rightThumbstickButton.value;
        } else {
            // Fallback on earlier versions
        }
        
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::A] = exgamepad.buttonA.value;
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::B] = exgamepad.buttonB.value;
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::X] = exgamepad.buttonX.value;
        GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::Y] = exgamepad.buttonY.value;
        
        //注意：GameController.frameworkには、START, SELECTがない
        
        
        GachanController::device[playerIndex].Update();
    }
    return maxPlayerIndex + 1;
}






#if MAC
void CreateHIDGamePad();
int  UpdateHIDGamePad(int deviceNoStart);
void ReleaseHIDGamePad();
#endif



void GachanControllerDevice::Print(int i)
{
    NSString * pad = [NSString stringWithFormat:@"%d: "
                       "dpad %.2f, %.2f "
                       "LS %.2f %.2f RS %.2f %.2f "
                       "LTR RTR %.2f %.2f "
                       "LSH RSH %.2f %.2f "
                       "LTH RTH %.2f %.2f "
                       "ABXY %.2f %.2f %.2f %.2f "
                       "STSL %.2f %.2f",
                       i,
                       value[DPAD_X],   value[DPAD_Y],
                       value[STICK_LX], value[STICK_LY], value[STICK_RX], value[STICK_RY],
                       value[TRIGGER_L],          value[TRIGGER_R],
                       value[SHOULDER_L],         value[SHOULDER_R],
                       value[THUMBSTICKBUTTON_L], value[THUMBSTICKBUTTON_R],
                       value[A], value[B], value[X], value[Y],
                       value[START], value[SELECT]
                      ];
    NSLog(@"%@",pad);
}
    
    
    
void GachanController::Create()
{
    maxPlayerIndex = -1;
    
    CreateSub();
    
#if MAC
    CreateHIDGamePad();
#endif
}

void GachanController::Release()
{
#if MAC
    ReleaseHIDGamePad();
#endif
}

    
void GachanController::Update()
{
    int GameControllerFrameworkDeviceNum = UpateGameControllerFramework();
    DeviceNumber = GameControllerFrameworkDeviceNum;
    
#if MAC
//USE_EITHER_GCFRAMEWORK_OR_HID
//0:GCFramework対応デバイスが重複してもいいからHIDも併用して使う。PID/VIDの照合で重複キャンセルできたらするけど。
//  HID単独デバイスが先に列挙されるように、挿す順番を工夫すれば実害はない。
//1:GCFramework対応デバイスが一つでも使われてたらHIDを全部使えなくする。わかりやすいけど、制限多し。
#define USE_EITHER_GCFRAMEWORK_OR_HID (0)
    
#if USE_EITHER_GCFRAMEWORK_OR_HID
    if (GameControllerFrameworkDeviceNum == 0)
#endif
    {
        DeviceNumber = UpdateHIDGamePad(GameControllerFrameworkDeviceNum);
    }
#endif

#if 0
    for (int i = 0; i < DeviceNumber; i++) {
        device[i].Print(i);
    }
#endif
}





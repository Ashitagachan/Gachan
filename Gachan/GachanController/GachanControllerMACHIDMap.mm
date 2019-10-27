//
// GachanControllerMACHIDMap.mm  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//


#include "GachanControllerMap.h"

//-----------------------------------------------
//PLACE HOLDER
//-----------------------------------------------
void GachanControllerWIN10DIMap_DEFAULT             (GachanControllerDevice* cd) {}//デフォルト
void GachanControllerWIN10DIMap_PS4                 (GachanControllerDevice* cd) {}
void GachanControllerWIN10DIMap_Logicool_GamepadF310(GachanControllerDevice* cd) {}
void GachanControllerWIN10DIMap_ELECOM_JCU4013SBK   (GachanControllerDevice* cd) {}
void GachanControllerWIN10DIMap_XBOX360             (GachanControllerDevice* cd) {}


//-----------------------------------------------
// PRESET
//-----------------------------------------------
GachanControllerMap_PRESET GachanControllerMACHIDMap_Preset[] = {
    //VID,   PID,    MAPFUNC
    { 0x54C, 0x9CC,  GachanControllerMACHIDMap_PS4 },//有線で確認。Blutoothでは未確認（繋がらない？）Catalinaが出ればKIND_GAMECONTROLLER_FRAMEWORKで繋がるはず
    { 0x54C, 0x268,  GachanControllerMACHIDMap_PS3SIXAXIS },
    { 0x54C, 0,      GachanControllerMACHIDMap_PS3SIXAXIS },//Vendor Default
    { 0x46D, 0xC216, GachanControllerMACHIDMap_Logicool_GamepadF310 },
    { 0x46D, 0,      GachanControllerMACHIDMap_Logicool_GamepadF310 },//Vendor Default
    { 0,0 }
};


//-----------------------------------------------
// DEFAULT
//-----------------------------------------------
void GachanControllerMACHIDMap_DEFAULT(GachanControllerDevice* cd)
{
    GachanControllerMACHIDMap_PS3SIXAXIS(cd);
}


//-----------------------------------------------
//PS4 CONTROLLER
//-----------------------------------------------
void GachanControllerMACHIDMap_PS4(GachanControllerDevice* cd)
{
    
    //AXIS
    //右と上が+1  左と下が-1
    cd->value[GachanControllerDevice::STICK_LX] =  cd->srcvalue[GachanControllerDevice::AXIS_X];
    cd->value[GachanControllerDevice::STICK_LY] = -cd->srcvalue[GachanControllerDevice::AXIS_Y];
    cd->value[GachanControllerDevice::STICK_RX] =  cd->srcvalue[GachanControllerDevice::AXIS_Z];
    cd->value[GachanControllerDevice::STICK_RY] = -cd->srcvalue[GachanControllerDevice::AXIS_RZ];
    
    cd->value[GachanControllerDevice::SELECT]             = cd->srcvalue[GachanControllerDevice::BUTTON_START+9];
    cd->value[GachanControllerDevice::THUMBSTICKBUTTON_L] = cd->srcvalue[GachanControllerDevice::BUTTON_START+11];
    cd->value[GachanControllerDevice::THUMBSTICKBUTTON_R] = cd->srcvalue[GachanControllerDevice::BUTTON_START+12];
    cd->value[GachanControllerDevice::START]              = cd->srcvalue[GachanControllerDevice::BUTTON_START+10];
#if 0
    //DPADがない
    //右と上が+1  左と下が-1
    cd->value[GachanControllerDevice::DPAD_Y]             = cd->srcvalue[GachanControllerDevice::BUTTON_START+5] -
    cd->srcvalue[GachanControllerDevice::BUTTON_START+7];
    cd->value[GachanControllerDevice::DPAD_X]             = cd->srcvalue[GachanControllerDevice::BUTTON_START+6] -
    cd->srcvalue[GachanControllerDevice::BUTTON_START+8];
#endif
    cd->value[GachanControllerDevice::TRIGGER_L]          = cd->srcvalue[GachanControllerDevice::BUTTON_START+7];
    cd->value[GachanControllerDevice::TRIGGER_R]          = cd->srcvalue[GachanControllerDevice::BUTTON_START+8];
    cd->value[GachanControllerDevice::SHOULDER_L]         = cd->srcvalue[GachanControllerDevice::BUTTON_START+5];
    cd->value[GachanControllerDevice::SHOULDER_R]         = cd->srcvalue[GachanControllerDevice::BUTTON_START+6];
    
    cd->value[GachanControllerDevice::A]                  = cd->srcvalue[GachanControllerDevice::BUTTON_START+2];
    cd->value[GachanControllerDevice::B]                  = cd->srcvalue[GachanControllerDevice::BUTTON_START+3];
    cd->value[GachanControllerDevice::X]                  = cd->srcvalue[GachanControllerDevice::BUTTON_START+1];
    cd->value[GachanControllerDevice::Y]                  = cd->srcvalue[GachanControllerDevice::BUTTON_START+4];
    
}

//-----------------------------------------------
//PS3 SIXAXIS
//-----------------------------------------------
void GachanControllerMACHIDMap_PS3SIXAXIS(GachanControllerDevice* cd)
{
    
    //AXIS
    //右と上が+1  左と下が-1
    cd->value[GachanControllerDevice::STICK_LX] =  cd->srcvalue[GachanControllerDevice::AXIS_X];
    cd->value[GachanControllerDevice::STICK_LY] = -cd->srcvalue[GachanControllerDevice::AXIS_Y];
    cd->value[GachanControllerDevice::STICK_RX] =  cd->srcvalue[GachanControllerDevice::AXIS_Z];
    cd->value[GachanControllerDevice::STICK_RY] = -cd->srcvalue[GachanControllerDevice::AXIS_RZ];
    
    //BUTTONS
    //1    SELECT
    //2    LEFT THUMBSTICK
    //3    RIGHT THUMBSTICK
    //4    START
    //5    DPAD UP (UPから右回り)
    //6    DPAD RIGHT
    //7    DPAD DOWN
    //8    DPAD LEFT
    //9    LEFT TRIGGER
    //10   RIGHT TRIGGER
    //11   LEFT SHOULDER
    //12   RIGHT SHOULDER
    //13   Y (Yから右回り)
    //14   B
    //15   A
    //16   X
    
    cd->value[GachanControllerDevice::SELECT]             = cd->srcvalue[GachanControllerDevice::BUTTON_START+1];
    cd->value[GachanControllerDevice::THUMBSTICKBUTTON_L] = cd->srcvalue[GachanControllerDevice::BUTTON_START+2];
    cd->value[GachanControllerDevice::THUMBSTICKBUTTON_R] = cd->srcvalue[GachanControllerDevice::BUTTON_START+3];
    cd->value[GachanControllerDevice::START]              = cd->srcvalue[GachanControllerDevice::BUTTON_START+4];
    //DPAD
    //右と上が+1  左と下が-1
    cd->value[GachanControllerDevice::DPAD_Y]             = cd->srcvalue[GachanControllerDevice::BUTTON_START+5] -
    cd->srcvalue[GachanControllerDevice::BUTTON_START+7];
    cd->value[GachanControllerDevice::DPAD_X]             = cd->srcvalue[GachanControllerDevice::BUTTON_START+6] -
    cd->srcvalue[GachanControllerDevice::BUTTON_START+8];
    
    cd->value[GachanControllerDevice::TRIGGER_L]          = cd->srcvalue[GachanControllerDevice::BUTTON_START+9];
    cd->value[GachanControllerDevice::TRIGGER_R]          = cd->srcvalue[GachanControllerDevice::BUTTON_START+10];
    cd->value[GachanControllerDevice::SHOULDER_L]         = cd->srcvalue[GachanControllerDevice::BUTTON_START+11];
    cd->value[GachanControllerDevice::SHOULDER_R]         = cd->srcvalue[GachanControllerDevice::BUTTON_START+12];
    
    cd->value[GachanControllerDevice::Y]                  = cd->srcvalue[GachanControllerDevice::BUTTON_START+13];
    cd->value[GachanControllerDevice::B]                  = cd->srcvalue[GachanControllerDevice::BUTTON_START+14];
    cd->value[GachanControllerDevice::A]                  = cd->srcvalue[GachanControllerDevice::BUTTON_START+15];
    cd->value[GachanControllerDevice::X]                  = cd->srcvalue[GachanControllerDevice::BUTTON_START+16];
    
}



//-----------------------------------------------
// Logicool Gamepad F310  (DirectInput MODE)
//-----------------------------------------------
void GachanControllerMACHIDMap_Logicool_GamepadF310(GachanControllerDevice* cd)
{
    //AXIS
    //右と上が+1  左と下が-1
    cd->value[GachanControllerDevice::STICK_LX] =  cd->srcvalue[GachanControllerDevice::AXIS_X];
    cd->value[GachanControllerDevice::STICK_LY] = -cd->srcvalue[GachanControllerDevice::AXIS_Y];
    cd->value[GachanControllerDevice::STICK_RX] =  cd->srcvalue[GachanControllerDevice::AXIS_Z];
    cd->value[GachanControllerDevice::STICK_RY] = -cd->srcvalue[GachanControllerDevice::AXIS_RZ];
    
    //DPADがない
    
    cd->value[GachanControllerDevice::TRIGGER_L]          = cd->srcvalue[GachanControllerDevice::BUTTON_START+7];
    cd->value[GachanControllerDevice::TRIGGER_R]          = cd->srcvalue[GachanControllerDevice::BUTTON_START+8];
    cd->value[GachanControllerDevice::SHOULDER_L]         = cd->srcvalue[GachanControllerDevice::BUTTON_START+5];
    cd->value[GachanControllerDevice::SHOULDER_R]         = cd->srcvalue[GachanControllerDevice::BUTTON_START+6];
    cd->value[GachanControllerDevice::THUMBSTICKBUTTON_L] = cd->srcvalue[GachanControllerDevice::BUTTON_START+11];
    cd->value[GachanControllerDevice::THUMBSTICKBUTTON_R] = cd->srcvalue[GachanControllerDevice::BUTTON_START+12];
    
    
    cd->value[GachanControllerDevice::A]                  = cd->srcvalue[GachanControllerDevice::BUTTON_START+2];
    cd->value[GachanControllerDevice::B]                  = cd->srcvalue[GachanControllerDevice::BUTTON_START+3];
    cd->value[GachanControllerDevice::X]                  = cd->srcvalue[GachanControllerDevice::BUTTON_START+1];
    cd->value[GachanControllerDevice::Y]                  = cd->srcvalue[GachanControllerDevice::BUTTON_START+4];
    
    cd->value[GachanControllerDevice::START]              = cd->srcvalue[GachanControllerDevice::BUTTON_START+10];
    cd->value[GachanControllerDevice::SELECT]             = cd->srcvalue[GachanControllerDevice::BUTTON_START+9];
    
}


//-----------------------------------------------
// ELECOM JC-U4013S BK (DirectInput MODE)
//   認識できなかった。。
//-----------------------------------------------

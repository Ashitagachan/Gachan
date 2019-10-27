//
// GachanControllerWIN10DIMap.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "GachanControllerMap.h"



//-----------------------------------------------
// PRESET
//-----------------------------------------------
GachanControllerMap_PRESET GachanControllerWIN10DIMap_Preset[] = {
	//VID,   PID,    MAPFUNC
	{ 0x54C, 0x9CC,  GachanControllerWIN10DIMap_PS4 },
	{ 0x54C, 0,      GachanControllerWIN10DIMap_PS4 },//Vender Default
	{ 0x46D, 0xC216, GachanControllerWIN10DIMap_Logicool_GamepadF310 },
	{ 0x46D, 0,      GachanControllerWIN10DIMap_Logicool_GamepadF310 },//Vendor Default
	{ 0x56E, 0x200F, GachanControllerWIN10DIMap_ELECOM_JCU4013SBK },
	{ 0x56E, 0,      GachanControllerWIN10DIMap_ELECOM_JCU4013SBK },//Vendor Default
	{ 0,0 }
};


//-----------------------------------------------
// DEFAULT
//-----------------------------------------------
void GachanControllerWIN10DIMap_DEFAULT(GachanControllerDevice* cd)
{
	GachanControllerWIN10DIMap_Logicool_GamepadF310(cd);
}



//-----------------------------------------------
// PS4 CONTROLLER
//-----------------------------------------------
void GachanControllerWIN10DIMap_PS4(GachanControllerDevice* cd)
{
	cd->value[GachanControllerDevice::STICK_LX] = cd->srcvalue[GachanControllerDevice::AXIS_X];
	cd->value[GachanControllerDevice::STICK_LY] = -cd->srcvalue[GachanControllerDevice::AXIS_Y];
	cd->value[GachanControllerDevice::TRIGGER_L] = (cd->srcvalue[GachanControllerDevice::AXIS_RX] + 1.0f) * 0.5f;
	cd->value[GachanControllerDevice::STICK_RX] = cd->srcvalue[GachanControllerDevice::AXIS_Z];
	cd->value[GachanControllerDevice::STICK_RY] = -cd->srcvalue[GachanControllerDevice::AXIS_RZ];
	cd->value[GachanControllerDevice::TRIGGER_R] = (cd->srcvalue[GachanControllerDevice::AXIS_RY] + 1.0f) * 0.5f;

	//DPAD
	//右と上が+1  左と下が-1
	cd->value[GachanControllerDevice::DPAD_Y] = cd->srcvalue[GachanControllerDevice::DPAD_UP] -
		cd->srcvalue[GachanControllerDevice::DPAD_DOWN];
	cd->value[GachanControllerDevice::DPAD_X] = cd->srcvalue[GachanControllerDevice::DPAD_RIGHT] -
		cd->srcvalue[GachanControllerDevice::DPAD_LEFT];

	cd->value[GachanControllerDevice::A] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 1];
	cd->value[GachanControllerDevice::B] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 2];
	cd->value[GachanControllerDevice::X] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 0];
	cd->value[GachanControllerDevice::Y] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 3];

	cd->value[GachanControllerDevice::SHOULDER_L] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 4];
	cd->value[GachanControllerDevice::SHOULDER_R] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 5];

	cd->value[GachanControllerDevice::THUMBSTICKBUTTON_L] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 10];
	cd->value[GachanControllerDevice::THUMBSTICKBUTTON_R] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 11];

	cd->value[GachanControllerDevice::SELECT] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 8];
	cd->value[GachanControllerDevice::START] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 9];
}


//-----------------------------------------------
// Logicool Gamepad F310 (DirectInput MODE)
//-----------------------------------------------
void GachanControllerWIN10DIMap_Logicool_GamepadF310(GachanControllerDevice* cd)
{
	cd->value[GachanControllerDevice::STICK_LX]  =  cd->srcvalue[GachanControllerDevice::AXIS_X];
	cd->value[GachanControllerDevice::STICK_LY]  = -cd->srcvalue[GachanControllerDevice::AXIS_Y];
	cd->value[GachanControllerDevice::TRIGGER_L] =  cd->srcvalue[GachanControllerDevice::BUTTON_START + 6];
	cd->value[GachanControllerDevice::STICK_RX]  =  cd->srcvalue[GachanControllerDevice::AXIS_Z];
	cd->value[GachanControllerDevice::STICK_RY]  = -cd->srcvalue[GachanControllerDevice::AXIS_RZ];
	cd->value[GachanControllerDevice::TRIGGER_R] =  cd->srcvalue[GachanControllerDevice::BUTTON_START + 7];

	//DPAD
	//右と上が+1  左と下が-1
	cd->value[GachanControllerDevice::DPAD_Y] = cd->srcvalue[GachanControllerDevice::DPAD_UP] -
          		                                cd->srcvalue[GachanControllerDevice::DPAD_DOWN];
	cd->value[GachanControllerDevice::DPAD_X] = cd->srcvalue[GachanControllerDevice::DPAD_RIGHT] -
		                                        cd->srcvalue[GachanControllerDevice::DPAD_LEFT];

	cd->value[GachanControllerDevice::A] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 1];
	cd->value[GachanControllerDevice::B] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 2];
	cd->value[GachanControllerDevice::X] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 0];
	cd->value[GachanControllerDevice::Y] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 3];

	cd->value[GachanControllerDevice::SHOULDER_L] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 4];
	cd->value[GachanControllerDevice::SHOULDER_R] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 5];

	cd->value[GachanControllerDevice::THUMBSTICKBUTTON_L] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 10];
	cd->value[GachanControllerDevice::THUMBSTICKBUTTON_R] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 11];

	cd->value[GachanControllerDevice::SELECT] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 8];
	cd->value[GachanControllerDevice::START]  = cd->srcvalue[GachanControllerDevice::BUTTON_START + 9];
}

//-----------------------------------------------
// ELECOM JC-U4013S BK (DirectInput MODE)
//-----------------------------------------------
void GachanControllerWIN10DIMap_ELECOM_JCU4013SBK(GachanControllerDevice* cd)
{
	cd->value[GachanControllerDevice::STICK_LX]  = cd->srcvalue[GachanControllerDevice::AXIS_X];
	cd->value[GachanControllerDevice::STICK_LY]  = -cd->srcvalue[GachanControllerDevice::AXIS_Y];
	cd->value[GachanControllerDevice::TRIGGER_L] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 6];
	cd->value[GachanControllerDevice::STICK_RX]  = cd->srcvalue[GachanControllerDevice::AXIS_Z];
	cd->value[GachanControllerDevice::STICK_RY]  = -cd->srcvalue[GachanControllerDevice::AXIS_RZ];
	cd->value[GachanControllerDevice::TRIGGER_R] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 7];

	//DPAD
	//右と上が+1  左と下が-1
	cd->value[GachanControllerDevice::DPAD_Y] = cd->srcvalue[GachanControllerDevice::DPAD_UP] -
		                                        cd->srcvalue[GachanControllerDevice::DPAD_DOWN];
	cd->value[GachanControllerDevice::DPAD_X] = cd->srcvalue[GachanControllerDevice::DPAD_RIGHT] -
		                                        cd->srcvalue[GachanControllerDevice::DPAD_LEFT];

	cd->value[GachanControllerDevice::A] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 2];
	cd->value[GachanControllerDevice::B] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 3];
	cd->value[GachanControllerDevice::X] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 0];
	cd->value[GachanControllerDevice::Y] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 1];

	cd->value[GachanControllerDevice::SHOULDER_L] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 4];
	cd->value[GachanControllerDevice::SHOULDER_R] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 5];

	cd->value[GachanControllerDevice::THUMBSTICKBUTTON_L] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 8];
	cd->value[GachanControllerDevice::THUMBSTICKBUTTON_R] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 9];

	cd->value[GachanControllerDevice::SELECT] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 10];
	cd->value[GachanControllerDevice::START]  = cd->srcvalue[GachanControllerDevice::BUTTON_START + 11];

}



//-----------------------------------------------
// XBOX 360             (XInput MODE)
// Logicool Gamepad F310(XInput MODE)
// ELECOM JC-U4013S BK  (XInput MODE)
// 通常DirectInputでは列挙キャンセルされるので使うことは無い。
//-----------------------------------------------
void GachanControllerWIN10DIMap_XBOX360(GachanControllerDevice* cd)
{
	//AXIS
	//右と上が+1  左と下が-1
	cd->value[GachanControllerDevice::STICK_LX]  =  cd->srcvalue[GachanControllerDevice::AXIS_X];
	cd->value[GachanControllerDevice::STICK_LY]  = -cd->srcvalue[GachanControllerDevice::AXIS_Y];
	cd->value[GachanControllerDevice::TRIGGER_L] =  cd->srcvalue[GachanControllerDevice::AXIS_Z];
	cd->value[GachanControllerDevice::STICK_RX]  =  cd->srcvalue[GachanControllerDevice::AXIS_RX];
	cd->value[GachanControllerDevice::STICK_RY]  = -cd->srcvalue[GachanControllerDevice::AXIS_RY];
	cd->value[GachanControllerDevice::TRIGGER_R] =  cd->srcvalue[GachanControllerDevice::AXIS_RZ];

	//DPAD
	//右と上が+1  左と下が-1
	cd->value[GachanControllerDevice::DPAD_Y] = cd->srcvalue[GachanControllerDevice::DPAD_UP] -
		                                        cd->srcvalue[GachanControllerDevice::DPAD_DOWN];
	cd->value[GachanControllerDevice::DPAD_X] = cd->srcvalue[GachanControllerDevice::DPAD_RIGHT] -
		                                        cd->srcvalue[GachanControllerDevice::DPAD_LEFT];


	//BUTTONS
	//0   A
	//1   B
	//2   X
	//3   Y
	//4   LEFT SHOULDER
	//5   RIGHT SHOULDER
	//6   SELECT
	//7   START

	cd->value[GachanControllerDevice::A] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 0];
	cd->value[GachanControllerDevice::B] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 1];
	cd->value[GachanControllerDevice::X] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 2];
	cd->value[GachanControllerDevice::Y] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 3];

	cd->value[GachanControllerDevice::SHOULDER_L] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 4];
	cd->value[GachanControllerDevice::SHOULDER_R] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 5];

	cd->value[GachanControllerDevice::SELECT] = cd->srcvalue[GachanControllerDevice::BUTTON_START + 6];
	cd->value[GachanControllerDevice::START]  = cd->srcvalue[GachanControllerDevice::BUTTON_START + 7];


}



//-----------------------------------------------
//PLACE HOLDER
//-----------------------------------------------
void GachanControllerMACHIDMap_DEFAULT             (GachanControllerDevice* cd) {}//デフォルト
void GachanControllerMACHIDMap_PS4                 (GachanControllerDevice* cd) {}
void GachanControllerMACHIDMap_PS3SIXAXIS          (GachanControllerDevice* cd) {}
void GachanControllerMACHIDMap_Logicool_GamepadF310(GachanControllerDevice* cd) {}




















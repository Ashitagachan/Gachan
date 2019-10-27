//
// GachanControllerWIN10.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include <stdio.h>
#include "GachanController.h"




//------------
//XInput
//------------
#include <windows.h>
#include <XInput.h>
#pragma comment(lib,"xinput.lib")


#define MAX_CONTROLLERS 4

XINPUT_STATE XInputState[MAX_CONTROLLERS];


static int maxPlayerIndex = -1;


static void CreateXInput()
{
	HRESULT hr;
	if (FAILED(hr = CoInitializeEx(nullptr, COINIT_MULTITHREADED)))
		return;


}
static void ReleaseXInput()
{

}


static int UpdateXInput()
{
	int playerIndex = 0;
	int minus = 0;
	for (playerIndex = 0; playerIndex < MAX_CONTROLLERS; playerIndex++) {

	
		DWORD dwResult = XInputGetState(playerIndex, &XInputState[playerIndex]);

		if (dwResult == ERROR_SUCCESS) {

			if (maxPlayerIndex < playerIndex) {
				maxPlayerIndex = playerIndex;
			}

			GachanController::device[playerIndex].kind = GachanControllerDevice::KIND_XINPUT;
			GachanController::device[playerIndex].available = true;


			float dpad_up    = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_DPAD_UP) ?    1.0f : 0.0f;
			float dpad_down  = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_DPAD_DOWN) ?  1.0f : 0.0f;
			float dpad_left  = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_DPAD_LEFT) ?  1.0f : 0.0f;
			float dpad_right = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_DPAD_RIGHT) ? 1.0f : 0.0f;

			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::DPAD_X] = dpad_right - dpad_left;//右と下が+1  左と上が-1
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::DPAD_Y] = dpad_up - dpad_down;//右と下が+1  左と上が-1
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::STICK_LX] = ((float)XInputState[playerIndex].Gamepad.sThumbLX) / 32767.0f;
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::STICK_LY] = ((float)XInputState[playerIndex].Gamepad.sThumbLY) / 32767.0f;//右と下が+1  左と上が-1
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::STICK_RX] = ((float)XInputState[playerIndex].Gamepad.sThumbRX) / 32767.0f;
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::STICK_RY] = ((float)XInputState[playerIndex].Gamepad.sThumbRY) / 32767.0f;//右と下が+1  左と上が-1
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::SHOULDER_L] = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_LEFT_SHOULDER)? 1.0f : 0.0f;
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::SHOULDER_R] = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_RIGHT_SHOULDER) ? 1.0f : 0.0f;
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::TRIGGER_L] = ((float)XInputState[playerIndex].Gamepad.bLeftTrigger) / 255.0f;
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::TRIGGER_R] = ((float)XInputState[playerIndex].Gamepad.bRightTrigger) / 255.0f;

			//macOS 10.14.1 or newer
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::THUMBSTICKBUTTON_L] = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_LEFT_THUMB) ? 1.0f : 0.0f;
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::THUMBSTICKBUTTON_R] = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_RIGHT_THUMB) ? 1.0f : 0.0f;

			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::A] = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_A) ? 1.0f : 0.0f;
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::B] = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_B) ? 1.0f : 0.0f;
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::X] = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_X) ? 1.0f : 0.0f;
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::Y] = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_Y) ? 1.0f : 0.0f;

			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::START]  = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_START) ? 1.0f : 0.0f;
			GachanController::device[playerIndex].value[GachanControllerDevice::INPUT::SELECT] = (XInputState[playerIndex].Gamepad.wButtons & XINPUT_GAMEPAD_BACK)  ? 1.0f : 0.0f;

			GachanController::device[playerIndex].Update();
		}
		else {
			GachanController::device[playerIndex].available = false;
		}
	}
	

	return maxPlayerIndex + 1;
}







HRESULT CreateDirectInput();
int  UpdateDirectInput(int deviceNoStart);
void ReleaseDirectInput();




	void GachanControllerDevice::Print(int i)
	{
		char pad[512];

		sprintf_s(pad, "%d : "
			"dpad %.2f, %.2f "
			"LS %.2f %.2f RS %.2f %.2f "
			"LTR RTR %.2f %.2f "
			"LSH RSH %.2f %.2f "
			"LTH RTH %.2f %.2f "
			"ABXY %.2f %.2f %.2f %.2f "
			"STSL %.2f %.2f\n",
			i,
			value[DPAD_X], value[DPAD_Y],
			value[STICK_LX], value[STICK_LY], value[STICK_RX], value[STICK_RY],
			value[TRIGGER_L], value[TRIGGER_R],
			value[SHOULDER_L], value[SHOULDER_R],
			value[THUMBSTICKBUTTON_L], value[THUMBSTICKBUTTON_R],
			value[A], value[B], value[X], value[Y],
			value[START], value[SELECT]
		);
		OutputDebugStringA(pad);
	}


	void GachanController::Create()
	{
		maxPlayerIndex = -1;

		CreateSub();

		CreateXInput();
		CreateDirectInput();
	}

	void GachanController::Release()
	{
		ReleaseXInput();
		ReleaseDirectInput();
	}


	void GachanController::Update()
	{
		int XInputDeviceNum = UpdateXInput();

		DeviceNumber = XInputDeviceNum;

		DeviceNumber = UpdateDirectInput(DeviceNumber);

#if 0
		for (int i = 0; i < DeviceNumber; i++) {
			device[i].Print(i);
		}
#endif
	}




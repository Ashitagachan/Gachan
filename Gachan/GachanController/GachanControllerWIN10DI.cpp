//
// GachanControllerWIN10DI.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#define DIRECTINPUT_VERSION 0x0800
#include <dinput.h>
#include <dinputd.h>
#pragma comment(lib,"dinput8.lib")
#pragma comment(lib,"dxguid.lib")

#include <XInput.h>
#include <wbemidl.h>
#include <winerror.h>
#include <stdio.h>
#include <tchar.h>


#include "GachanController.h"
#include "GachanControllerMap.h"


struct XINPUT_DEVICE_NODE
{
	DWORD dwVidPid;
	XINPUT_DEVICE_NODE* pNext;
};
XINPUT_DEVICE_NODE* g_pXInputDeviceList = nullptr;

struct DI_ENUM_CONTEXT
{
	DIJOYCONFIG* pPreferredJoyCfg;
	bool bPreferredJoyCfgValid;
};
 
#ifndef SAFE_DELETE
#define SAFE_DELETE(p)  { if(p) { delete (p);     (p)=nullptr; } }
#endif
#ifndef SAFE_RELEASE
#define SAFE_RELEASE(p) { if(p) { (p)->Release(); (p)=nullptr; } }
#endif

LPDIRECTINPUT8          pDirectInput = nullptr;
LPDIRECTINPUTDEVICE8    pDIDevice[GachanController::DEVICE_NUM] = { nullptr, };

static  int            deviceNum;
HWND                   windowHandle;

int                    PID[GachanController::DEVICE_NUM];
int                    VID[GachanController::DEVICE_NUM];
char                   PNAME[GachanController::DEVICE_NUM][GachanControllerDevice::NAMELEN];

void dxControllerWIN10Foreground(HWND hwnd)
{
	windowHandle = hwnd;
}


//XInput and DirectInput Side by Side
//https://docs.microsoft.com/en-us/windows/desktop/xinput/xinput-and-directinput

//-----------------------------------------------------------------------------
// Enum each PNP device using WMI and check each device ID to see if it contains 
// "IG_" (ex. "VID_045E&PID_028E&IG_00").  If it does, then it is an XInput device
// Unfortunately this information can not be found by just using DirectInput.
// Checking against a VID/PID of 0x028E/0x045E won't find 3rd party or future 
// XInput devices.
//
// This function stores the list of xinput devices in a linked list 
// at g_pXInputDeviceList, and IsXInputDevice() searchs that linked list
//-----------------------------------------------------------------------------
HRESULT SetupForIsXInputDevice()
{
	IWbemServices* pIWbemServices = nullptr;
	IEnumWbemClassObject* pEnumDevices = nullptr;
	IWbemLocator* pIWbemLocator = nullptr;
	IWbemClassObject* pDevices[20] = { 0 };
	BSTR bstrDeviceID = nullptr;
	BSTR bstrClassName = nullptr;
	BSTR bstrNamespace = nullptr;
	DWORD uReturned = 0;
	bool bCleanupCOM = false;
	UINT iDevice = 0;
	VARIANT var;
	HRESULT hr;

	// CoInit if needed
	hr = CoInitialize(nullptr);
	bCleanupCOM = SUCCEEDED(hr);

	// Create WMI
	hr = CoCreateInstance(__uuidof(WbemLocator),
		nullptr,
		CLSCTX_INPROC_SERVER,
		__uuidof(IWbemLocator),
		(LPVOID*)& pIWbemLocator);
	if (FAILED(hr) || pIWbemLocator == nullptr)
		goto LCleanup;

	// Create BSTRs for WMI
	bstrNamespace = SysAllocString(L"\\\\.\\root\\cimv2"); if (bstrNamespace == nullptr) goto LCleanup;
	bstrDeviceID = SysAllocString(L"DeviceID");           if (bstrDeviceID == nullptr)  goto LCleanup;
	bstrClassName = SysAllocString(L"Win32_PNPEntity");    if (bstrClassName == nullptr) goto LCleanup;

	// Connect to WMI 
	hr = pIWbemLocator->ConnectServer(bstrNamespace, nullptr, nullptr, 0L,
		0L, nullptr, nullptr, &pIWbemServices);
	if (FAILED(hr) || pIWbemServices == nullptr)
		goto LCleanup;

	// Switch security level to IMPERSONATE
	(void)CoSetProxyBlanket(pIWbemServices, RPC_C_AUTHN_WINNT, RPC_C_AUTHZ_NONE, nullptr,
		RPC_C_AUTHN_LEVEL_CALL, RPC_C_IMP_LEVEL_IMPERSONATE, nullptr, 0);

	// Get list of Win32_PNPEntity devices
	hr = pIWbemServices->CreateInstanceEnum(bstrClassName, 0, nullptr, &pEnumDevices);
	if (FAILED(hr) || pEnumDevices == nullptr)
		goto LCleanup;

	// Loop over all devices
	for (; ; )
	{
		// Get 20 at a time
		hr = pEnumDevices->Next(10000, 20, pDevices, &uReturned);
		if (FAILED(hr))
			goto LCleanup;
		if (uReturned == 0)
			break;

		for (iDevice = 0; iDevice < uReturned; iDevice++)
		{
			if (!pDevices[iDevice])
				continue;

			// For each device, get its device ID
			hr = pDevices[iDevice]->Get(bstrDeviceID, 0L, &var, nullptr, nullptr);
			if (SUCCEEDED(hr) && var.vt == VT_BSTR && var.bstrVal != nullptr)
			{
				// Check if the device ID contains "IG_".  If it does, then it痴 an XInput device
				// Unfortunately this information can not be found by just using DirectInput 
				if (wcsstr(var.bstrVal, L"IG_"))
				{
					// If it does, then get the VID/PID from var.bstrVal
					DWORD dwPid = 0, dwVid = 0;
					WCHAR* strVid = wcsstr(var.bstrVal, L"VID_");
					if (strVid && swscanf_s(strVid, L"VID_%4X", &dwVid) != 1)
						dwVid = 0;
					WCHAR * strPid = wcsstr(var.bstrVal, L"PID_");
					if (strPid && swscanf_s(strPid, L"PID_%4X", &dwPid) != 1)
						dwPid = 0;

					DWORD dwVidPid = MAKELONG(dwVid, dwPid);

					// Add the VID/PID to a linked list
					XINPUT_DEVICE_NODE * pNewNode = new XINPUT_DEVICE_NODE;
					if (pNewNode)
					{
						pNewNode->dwVidPid = dwVidPid;
						pNewNode->pNext = g_pXInputDeviceList;
						g_pXInputDeviceList = pNewNode;
					}
				}
			}
			SAFE_RELEASE(pDevices[iDevice]);
		}
	}

LCleanup:
	if (bstrNamespace)
		SysFreeString(bstrNamespace);
	if (bstrDeviceID)
		SysFreeString(bstrDeviceID);
	if (bstrClassName)
		SysFreeString(bstrClassName);
	for (iDevice = 0; iDevice < 20; iDevice++)
		SAFE_RELEASE(pDevices[iDevice]);
	SAFE_RELEASE(pEnumDevices);
	SAFE_RELEASE(pIWbemLocator);
	SAFE_RELEASE(pIWbemServices);

	return hr;
}

bool IsXInputDevice(const GUID* pGuidProductFromDirectInput)
{
	XINPUT_DEVICE_NODE* pNode = g_pXInputDeviceList;
	while (pNode) {
		if (pNode->dwVidPid == pGuidProductFromDirectInput->Data1)
			return true;
		pNode = pNode->pNext;
	}

	return false;
}
void CleanupForIsXInputDevice()
{
	XINPUT_DEVICE_NODE* pNode = g_pXInputDeviceList;
	while (pNode) {
		XINPUT_DEVICE_NODE* pDelete = pNode;
		pNode = pNode->pNext;
		SAFE_DELETE(pDelete);
	}
}
BOOL CALLBACK EnumJoysticksCallback(const DIDEVICEINSTANCE* pdidInstance,
	VOID* pContext)
{
	HRESULT hr;

	if (IsXInputDevice(&pdidInstance->guidProduct)) {
		return DIENUM_CONTINUE;
	}

	DWORD dwVidPid = pdidInstance->guidProduct.Data1;
	VID[deviceNum] = dwVidPid & 0xFFFF;
	PID[deviceNum] = (dwVidPid >> 16) & 0xFFFF;

	size_t ret;
	wcstombs_s(&ret, PNAME[deviceNum], GachanControllerDevice::NAMELEN, pdidInstance->tszProductName, _TRUNCATE);

	hr = pDirectInput->CreateDevice(pdidInstance->guidInstance, &pDIDevice[deviceNum], nullptr);

	if (FAILED(hr)) {
		return DIENUM_CONTINUE;
	}


	deviceNum++;

	return DIENUM_CONTINUE;
}

BOOL CALLBACK EnumObjectsCallback(const DIDEVICEOBJECTINSTANCE* pdidoi, VOID* pContext)
{
	LPDIRECTINPUTDEVICE8 device = (LPDIRECTINPUTDEVICE8)pContext;

	if (pdidoi->dwType & DIDFT_AXIS) {
		DIPROPRANGE diprg;
		diprg.diph.dwSize = sizeof(DIPROPRANGE);
		diprg.diph.dwHeaderSize = sizeof(DIPROPHEADER);
		diprg.diph.dwHow = DIPH_BYID;
		diprg.diph.dwObj = pdidoi->dwType;
		diprg.lMin = -1000;
		diprg.lMax = +1000;

		if (FAILED(device->SetProperty(DIPROP_RANGE, &diprg.diph))) {
			return DIENUM_STOP;
		}
	}
	return DIENUM_CONTINUE;
}


static void GachanControllerMap_DEFAULTINTERNAL(GachanControllerDevice* cd)//デフォルト
{
	GachanControllerWIN10DIMap_DEFAULT(cd);
}

extern GachanControllerMap_PRESET GachanControllerWIN10DIMap_Preset[];

static void GachanControllerMap_SetPreset(GachanControllerDevice* cd)
{
	if (cd->mapfuncWIN10DI == GachanControllerMap_DEFAULTINTERNAL) {
		GachanControllerMap_PRESET* preset = GachanControllerWIN10DIMap_Preset;
		while (preset->vendorID) {
			if (preset->vendorID == cd->vendorID) {
				if (preset->productID == cd->productID) {
					cd->mapfuncWIN10DI = preset->mapfunc;
					return;
				}
				else if (preset->productID == 0) {
					cd->mapfuncWIN10DI = preset->mapfunc;
					return;
				}
			}
			preset++;
		}
	}
}

HRESULT CreateDirectInput()
{
	//デフォルトのMap関数
	for (int i = 0; i < GachanController::DEVICE_NUM; i++) {
		GachanController::device[i].mapfuncWIN10DI = GachanControllerMap_DEFAULTINTERNAL;
	}

	deviceNum = 0;

	HRESULT hr;

	if (FAILED(hr = DirectInput8Create(GetModuleHandle(nullptr), DIRECTINPUT_VERSION,
		IID_IDirectInput8, (VOID * *)& pDirectInput, nullptr)))
		return hr;

	//XInputと重複するDirectInputデバイスをキャンセルする
	SetupForIsXInputDevice();

	if (FAILED(hr = pDirectInput->EnumDevices(DI8DEVCLASS_GAMECTRL, EnumJoysticksCallback, NULL, DIEDFL_ATTACHEDONLY))) {
		return hr;
	}

	CleanupForIsXInputDevice();


	for (int device = 0; device < deviceNum; device++) {
		if (FAILED(hr = pDIDevice[device]->SetDataFormat(&c_dfDIJoystick2))) {
			return hr;
		}

		if (windowHandle) {
			if (FAILED(hr = pDIDevice[device]->SetCooperativeLevel(windowHandle, DISCL_EXCLUSIVE | DISCL_FOREGROUND))) {
				return hr;
			}
		}

		if (FAILED(hr = pDIDevice[device]->EnumObjects(EnumObjectsCallback, (VOID*)pDIDevice[device], DIDFT_ALL))) {
			return hr;
		}
	}
	return S_OK;
}
void ReleaseDirectInput()
{
	for (int device = 0; device < deviceNum; device++) {
		if (pDIDevice[device]) {
			pDIDevice[device]->Unacquire();
			SAFE_RELEASE(pDIDevice[device]);
		}
	}
	SAFE_RELEASE(pDirectInput);
}




int  UpdateDirectInput(int deviceNoStart)
{
	HRESULT hr;
	DIJOYSTATE2 js;           

	int i;
	for (i = 0; i < deviceNum && deviceNoStart + i < GachanController::DEVICE_NUM; i++) {

		if (!pDIDevice[i]) {
			return 0;
		}

		hr = pDIDevice[i]->Poll();
		if (FAILED(hr)) {
			hr = pDIDevice[i]->Acquire();
			while (hr == DIERR_INPUTLOST) {
				hr = pDIDevice[i]->Acquire();
			}

			GachanController::device[deviceNoStart + i].available = false;
			continue;
		}

		if (FAILED(hr = pDIDevice[i]->GetDeviceState(sizeof(DIJOYSTATE2), &js))) {
			GachanController::device[deviceNoStart + i].available = false;
			continue;
		}


		int deviceNo = deviceNoStart + i;

		if (GachanController::device[deviceNo].vendorID == 0) {
			GachanController::device[deviceNo].vendorID  = VID[i];
			GachanController::device[deviceNo].productID = PID[i];

			GachanControllerMap_SetPreset(&GachanController::device[deviceNo]);
		}
		if (GachanController::device[deviceNo].name[0] == 0 && PNAME[i][0]) {
			strncpy_s(GachanController::device[deviceNo].name, PNAME[i], GachanControllerDevice::NAMELEN-1);
		}


		float valuefX  = ((float)js.lX)  / 1000.0f;
		float valuefY  = ((float)js.lY)  / 1000.0f;
		float valuefZ  = ((float)js.lZ)  / 1000.0f;
		float valuefRX = ((float)js.lRx) / 1000.0f;
		float valuefRY = ((float)js.lRy) / 1000.0f;
		float valuefRZ = ((float)js.lRz) / 1000.0f;

		GachanController::device[deviceNo].srcvalue[GachanControllerDevice::AXIS_X]  = valuefX;
		GachanController::device[deviceNo].srcvalue[GachanControllerDevice::AXIS_Y]  = valuefY;
		GachanController::device[deviceNo].srcvalue[GachanControllerDevice::AXIS_Z]  = valuefZ;
		GachanController::device[deviceNo].srcvalue[GachanControllerDevice::AXIS_RX] = valuefRX;
		GachanController::device[deviceNo].srcvalue[GachanControllerDevice::AXIS_RY] = valuefRY;
		GachanController::device[deviceNo].srcvalue[GachanControllerDevice::AXIS_RZ] = valuefRZ;

		unsigned int pov = js.rgdwPOV[0];

		float right, down, left, up;
		if (pov == 0xffffffff) {
			right = down = left = up = 0.0f;
		}
		else {
			right = (0 < pov && pov < 18000) ? 1.0f : 0.0f;
			down = (9000 < pov && pov < 27000) ? 1.0f : 0.0f;
			left = (18000 < pov && pov < 36000) ? 1.0f : 0.0f;
			up = (27000 < pov || pov < 9000) ? 1.0f : 0.0f;
		}
		
		GachanController::device[deviceNo].srcvalue[GachanControllerDevice::DPAD_UP]    = up;
		GachanController::device[deviceNo].srcvalue[GachanControllerDevice::DPAD_DOWN]  = down;
		GachanController::device[deviceNo].srcvalue[GachanControllerDevice::DPAD_RIGHT] = right;
		GachanController::device[deviceNo].srcvalue[GachanControllerDevice::DPAD_LEFT]  = left;

		for (int i = 0; i < GachanControllerDevice::BUTTON_NUM; i++) {
			GachanController::device[deviceNo].srcvalue[GachanControllerDevice::BUTTON_START+i] = (js.rgbButtons[i] & 0x80)? 1.0f : 0.0f;
		}


		//----------------
		// DI MAPING
		//----------------

		GachanController::device[deviceNo].kind = GachanControllerDevice::KIND_DIRECTINPUT;
		GachanController::device[deviceNo].available = true;


		if (GachanController::device[deviceNo].mapfuncWIN10DI) {
			GachanController::device[deviceNo].mapfuncWIN10DI(&GachanController::device[deviceNo]);
		}

		GachanController::device[deviceNo].Update();
	}
	return deviceNoStart + i;
}



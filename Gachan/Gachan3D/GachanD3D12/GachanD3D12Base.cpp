//
// GachanD3D12Base.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

//-----------------------
//METAL最下層依存コード
//
//MetalBase/MetalPassで、
//GLでのES2Renderer/EAGLView/CADisplayLinkの代わりの部分を構成する。
//GL版があるとしたら、GLBase/GLPassとするところ。
//-----------------------
#include <d3d12.h>
#include <dxgi1_4.h>

#include <InitGUID.h>
#include <dxgidebug.h>

#include "Gachan.h"
#include "Gachan3DCamera.h"
#include "GachanD3D12Sub.h"
#include "GachanD3D12Pass.h"
#include "GachanD3D12Base.h"

/*
D3DXIIBase d3d12base;
D3DXIIBase* D3DXIIBase::sharedInstance()
{
	return &d3d12base;
}
*/

static IDXGIFactory4*      Factory;
static ID3D12Device*       Device;
//static ID3D12CommandQueue* commandQueue;

static HWND hWND;
static int Width;
static int Height;
static GACHAND3D12FUNC UpdateFuncCallback;
static GACHAND3D12FUNC RenderFuncCallback;


void GachanD3D12Base::d3d12withHWND(HWND hwnd, int w, int h, GACHAND3D12FUNC update, GACHAND3D12FUNC render)
{
	hWND   = hwnd;
	Width  = w;
	Height = h;
	UpdateFuncCallback = update;
	RenderFuncCallback = render;

	GachanD3D12Sub::CreateFactory(&Factory);
	GachanD3D12Sub::CreateDevice(Factory, &Device);

	GachanD3D12Pass::Create();
}


void GachanD3D12Base::render()
{

	if (UpdateFuncCallback) {
		UpdateFuncCallback();
	}



	if (GachanInitialize::IsEnabled(GachanInitialize::FLG_SHADOWMAP)) {
		GachanD3D12Pass::StartShadowMap();

		if (RenderFuncCallback) {
			RenderFuncCallback();
		}

		GachanD3D12Pass::EndShadowMap();
	}



	Gachan3DCamera::SetScreen(Width, Height);

	GachanD3D12Pass::Start();

	if (RenderFuncCallback) {
		RenderFuncCallback();
	}

	GachanD3D12Pass::End();

	//NSLog(@"render");
}

void GachanD3D12Base::release()
{
	GachanD3D12Pass::Release();

#if 0//defined(_DEBUG)
	ID3D12DebugDevice* debugInterface;

	if (SUCCEEDED(Device->QueryInterface(&debugInterface)))
	{
		debugInterface->ReportLiveDeviceObjects(D3D12_RLDO_DETAIL | D3D12_RLDO_IGNORE_INTERNAL);
		debugInterface->Release();
	}
#endif

	if (Device) {
		Device->Release();
		Device = NULL;
	}
	if (Factory) {
		Factory->Release();
		Factory = NULL;
	}

#if defined(_DEBUG)
	{
		IDXGIDebug* pDxgiDebug;
		// 作成
		typedef HRESULT(__stdcall *fPtr)(const IID&, void**);
		HMODULE hDll = GetModuleHandleW(L"dxgidebug.dll");
		fPtr DXGIGetDebugInterface = (fPtr)GetProcAddress(hDll, "DXGIGetDebugInterface");

		DXGIGetDebugInterface(__uuidof(IDXGIDebug), (void**)&pDxgiDebug);

		// 出力
		pDxgiDebug->ReportLiveObjects(DXGI_DEBUG_ALL, DXGI_DEBUG_RLO_DETAIL);
		pDxgiDebug->Release();
	}
#endif
}

int GachanD3D12Base::startloop()
{
	MSG msg = { 0 };
	while (WM_QUIT != msg.message)
	{
		auto gotMsg = PeekMessage(&msg, nullptr, 0, 0, PM_REMOVE);

		if (gotMsg)
		{
			TranslateMessage(&msg);
			DispatchMessage(&msg);
		}
		else
		{
			render();
		}
	}
	return (int)msg.wParam;
}

ID3D12Device* GachanD3D12Base::getDevice()
{
	return Device;
}
IDXGIFactory4* GachanD3D12Base::getFactory()
{
	return Factory;
}
HWND          GachanD3D12Base::getHWND()
{
	return hWND;
}

GachanD3D12Size GachanD3D12Base::getSize()
{
	GachanD3D12Size size;
	size.width = Width;
	size.height = Height;
	return size;
}














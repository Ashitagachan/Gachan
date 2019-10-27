//
// GachanD3D12Base.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#ifndef __GACHAND3D12BASE_H__
#define __GACHAND3D12BASE_H__

#include <windows.h>
#include <d3d12.h>
#include <dxgi1_4.h>

#include "GachanD3D12.h"


typedef void (*D3DXIIFUNC)(void);

class GachanD3D12Base
{
public:
	//static D3DXIIBase* sharedInstance();//metalbase.h のobjcぽくしようかと思ったけどやめた。。

	static void d3d12withHWND(HWND hwnd, int w, int h, D3DXIIFUNC action);

	static ID3D12Device*   getDevice();
	static IDXGIFactory4*  getFactory();
	static GachanD3D12Size getSize();
	static HWND            getHWND();

	static void render();

	//metalではDisplayLink(start()で起動)から呼ばれるが、d3d12ではこの中のループからrender()を呼ぶ
	static int startloop();

	static void release();
};
    


#endif





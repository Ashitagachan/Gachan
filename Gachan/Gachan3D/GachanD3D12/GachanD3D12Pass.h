//
// GachanD3D12Pass.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#ifndef __GACHAND3D12PASS_H__
#define __GACHAND3D12PASS_H__

#include <d3d12.h>


    
class GachanD3D12Pass
{
public:
    static void Create();
    static void Release();
    
    static void Start();

	static ID3D12CommandQueue* GetCommandQueue();

	static D3D12_CPU_DESCRIPTOR_HANDLE GetRenderTargetViewHandle();
	static D3D12_CPU_DESCRIPTOR_HANDLE GetDepthStencilViewHandle();
	static D3D12_VIEWPORT GetViewport();
	static D3D12_RECT     GetScissorRect();

	static bool IsFirstDraw();
	static void SetCommandList_ClearRenderTarget(ID3D12GraphicsCommandList* commandList);

	static void WaitForGPU();
    static void End();
};





#endif

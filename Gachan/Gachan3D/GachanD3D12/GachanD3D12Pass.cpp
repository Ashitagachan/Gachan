//
// GachanD3D12Pass.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include <d3d12.h>
#include <dxgi1_4.h>

#include "GachanMathVector.h"
#include "Gachan3D.h"
#include "GachanD3D12.h"
#include "GachanD3D12Sub.h"
#include "GachanD3D12Pass.h"
#include "GachanD3D12Base.h"

    
	IDXGISwapChain3*           SwapChain;

	static const UINT          FrameCount = 2;
	UINT                       FrameIndex;

	ID3D12Resource*            RenderTarget[FrameCount];
	ID3D12DescriptorHeap*      RenderTargetHeap;
	UINT                       RenderTargetDescriptorSize;
	ID3D12Resource*            DepthStencil;
	ID3D12DescriptorHeap*      DepthStencilHeap;
	UINT                       DepthStencilDescriptorSize;

	D3D12_VIEWPORT             Viewport;
	D3D12_RECT                 ScissorRect;



	D3D12_CPU_DESCRIPTOR_HANDLE GachanD3D12Pass::GetRenderTargetViewHandle()
	{
		D3D12_CPU_DESCRIPTOR_HANDLE rtvHandle = {};
		D3D12_CPU_DESCRIPTOR_HANDLE base = RenderTargetHeap->GetCPUDescriptorHandleForHeapStart();
		rtvHandle.ptr = static_cast<SIZE_T>(base.ptr + INT64(FrameIndex) * UINT64(RenderTargetDescriptorSize));
		return rtvHandle;
	}
	D3D12_CPU_DESCRIPTOR_HANDLE GachanD3D12Pass::GetDepthStencilViewHandle()
	{
		D3D12_CPU_DESCRIPTOR_HANDLE dsvhandle = DepthStencilHeap->GetCPUDescriptorHandleForHeapStart();
		return dsvhandle;
	}
	D3D12_VIEWPORT GachanD3D12Pass::GetViewport()
	{
		return Viewport;
	}
	D3D12_RECT GachanD3D12Pass::GetScissorRect()
	{
		return ScissorRect;
	}


	ID3D12CommandQueue*        CommandQueue;//すべての描画用Queue


	ID3D12CommandAllocator*    CommandAllocBefore;
	ID3D12GraphicsCommandList* CommandListBefore;

	ID3D12CommandAllocator*    CommandAllocAfter;
	ID3D12GraphicsCommandList* CommandListAfter;

	HANDLE                     FenceEvent;
	ID3D12Fence*               Fence;
	UINT64                     FenceValue = 1;

	bool                       FirstDraw = false;
    
    void GachanD3D12Pass::Create()
    {
		HWND            hwnd    = GachanD3D12Base::getHWND();
		ID3D12Device*   device  = GachanD3D12Base::getDevice();
		GachanD3D12Size size    = GachanD3D12Base::getSize();
		IDXGIFactory4*  factory = GachanD3D12Base::getFactory();

		Viewport.TopLeftX = 0.0f;
		Viewport.TopLeftY = 0.0f;
		Viewport.Height   = (float)size.height;
		Viewport.Width    = (float)size.width;
		Viewport.MaxDepth = 1.0f;
		Viewport.MinDepth = 0.0f;
		ScissorRect.top    = 0;
		ScissorRect.left   = 0;
		ScissorRect.right  = size.width;
		ScissorRect.bottom = size.height;

		GachanD3D12Sub::CreateCommandQueue(device, &CommandQueue);

		FrameIndex =
			GachanD3D12Sub::CreateSwapChain(factory, hwnd, size, FrameCount, CommandQueue, &SwapChain);
        
		RenderTargetDescriptorSize =
			GachanD3D12Sub::CreateRenderTarget(device, SwapChain, FrameCount, RenderTarget, &RenderTargetHeap);

		DepthStencilDescriptorSize =
			GachanD3D12Sub::CreateDepthStencil(device, size, FrameCount, &DepthStencil, &DepthStencilHeap);


		ThrowIfFailed(device->CreateCommandAllocator(D3D12_COMMAND_LIST_TYPE_DIRECT, IID_PPV_ARGS(&CommandAllocBefore)));
		ThrowIfFailed(device->CreateCommandList(0, D3D12_COMMAND_LIST_TYPE_DIRECT, CommandAllocBefore, NULL, IID_PPV_ARGS(&CommandListBefore)));
		CommandAllocBefore->SetName(L"CommandAllocBefore");
		CommandListBefore->SetName(L"CommandListBefore");
		ThrowIfFailed(CommandListBefore->Close());

		ThrowIfFailed(device->CreateCommandAllocator(D3D12_COMMAND_LIST_TYPE_DIRECT, IID_PPV_ARGS(&CommandAllocAfter)));
		ThrowIfFailed(device->CreateCommandList(0, D3D12_COMMAND_LIST_TYPE_DIRECT, CommandAllocAfter, NULL, IID_PPV_ARGS(&CommandListAfter)));
		CommandAllocAfter->SetName(L"CommandAllocAfter");
		CommandListAfter->SetName(L"CommandListAfter");
		ThrowIfFailed(CommandListAfter->Close());

		ThrowIfFailed(device->CreateFence(0, D3D12_FENCE_FLAG_NONE, IID_PPV_ARGS(&Fence)));

		// Create an event handle to use for frame synchronization.
		FenceEvent = CreateEvent(nullptr, FALSE, FALSE, nullptr);
		if (FenceEvent == nullptr)
		{
			ThrowIfFailed(HRESULT_FROM_WIN32(GetLastError()));
		}
    }

	void GachanD3D12Pass::Release()
	{
		if (SwapChain) {
			SwapChain->Release();
			SwapChain = NULL;
		}
		for (int fc = 0; fc < FrameCount; fc++) {
			if (RenderTarget[fc]) {
				RenderTarget[fc]->Release();
				RenderTarget[fc] = NULL;
			}
		}
		if (RenderTargetHeap) {
			RenderTargetHeap->Release();
			RenderTargetHeap = NULL;
		}
		if (DepthStencil) {
			DepthStencil->Release();
			DepthStencil = NULL;
		}
		if (DepthStencilHeap) {
			DepthStencilHeap->Release();
			DepthStencilHeap = NULL;
		}
		if (CommandQueue) {
			CommandQueue->Release();//すべての描画用Queue
			CommandQueue = NULL;
		}
		if (CommandAllocBefore) {
			CommandAllocBefore->Release();
			CommandAllocBefore = NULL;
		}
		if (CommandListBefore) {
			CommandListBefore->Release();
			CommandListBefore = NULL;
		}
		if (CommandAllocAfter) {
			CommandAllocAfter->Release();
			CommandAllocAfter = NULL;
		}
		if (CommandListAfter) {
			CommandListAfter->Release();
			CommandListAfter = NULL;
		}
		if (Fence) {
			Fence->Release();
			Fence = NULL;
		}
    }

    //void Pass::Start(int pass)
    //{
    //}
    
    void MergeDrawStart(bool firstdraw);
    void MergeDrawEnd();

    void GachanD3D12Pass::Start()
    {
		ThrowIfFailed(CommandAllocBefore->Reset());
		ThrowIfFailed(CommandListBefore->Reset(CommandAllocBefore, NULL));

		// リソースバリアの設定 Present ---> RenderTarget
		D3D12_RESOURCE_BARRIER barrier;
		GachanD3D12Sub::SetResourceBarrierTransition(RenderTarget[FrameIndex], D3D12_RESOURCE_STATE_PRESENT, D3D12_RESOURCE_STATE_RENDER_TARGET, &barrier);
		CommandListBefore->ResourceBarrier(1, &barrier);

		ThrowIfFailed(CommandListBefore->Close());

		// Execute the command list.
		ID3D12CommandList* ppCommandListsBefore[] = { CommandListBefore };
		CommandQueue->ExecuteCommandLists(_countof(ppCommandListsBefore), ppCommandListsBefore);

		FirstDraw = true;
        MergeDrawStart(true);
    }

	bool GachanD3D12Pass::IsFirstDraw()
	{
		bool ret = FirstDraw;
		FirstDraw = false;
		return ret;
	}

	void GachanD3D12Pass::SetCommandList_ClearRenderTarget(ID3D12GraphicsCommandList* commandList)
	{
		D3D12_CPU_DESCRIPTOR_HANDLE rtvHandle = {};
		D3D12_CPU_DESCRIPTOR_HANDLE base = RenderTargetHeap->GetCPUDescriptorHandleForHeapStart();
		rtvHandle.ptr = static_cast<SIZE_T>(base.ptr + INT64(FrameIndex) * UINT64(RenderTargetDescriptorSize));

		D3D12_CPU_DESCRIPTOR_HANDLE dsvhandle = DepthStencilHeap->GetCPUDescriptorHandleForHeapStart();
		commandList->OMSetRenderTargets(1, &rtvHandle, FALSE, &dsvhandle);

		// レンダ―ターゲットをクリア
		const float clearColor[] = { Gachan3D::BackgroundColor.r, 
			                         Gachan3D::BackgroundColor.g, 
			                         Gachan3D::BackgroundColor.b, 1.0f };

		commandList->ClearRenderTargetView(rtvHandle, clearColor, 0, nullptr);

		// 深度ステンシルビューをクリア.
		commandList->ClearDepthStencilView(dsvhandle, D3D12_CLEAR_FLAG_DEPTH, 1.0f, 0, 0, nullptr);
	}

	ID3D12CommandQueue* GachanD3D12Pass::GetCommandQueue()
	{
		return CommandQueue;
	}


    
	void WaitForPreviousFrame();

    void GachanD3D12Pass::End()
    {
        MergeDrawEnd();

		ThrowIfFailed(CommandAllocAfter->Reset());
		ThrowIfFailed(CommandListAfter->Reset(CommandAllocAfter, NULL));

		// リソースバリアの設定  RenderTarget ---> Present
		D3D12_RESOURCE_BARRIER barrier;
		GachanD3D12Sub::SetResourceBarrierTransition(RenderTarget[FrameIndex], D3D12_RESOURCE_STATE_RENDER_TARGET, D3D12_RESOURCE_STATE_PRESENT, &barrier);
		CommandListAfter->ResourceBarrier(1, &barrier);

		ThrowIfFailed(CommandListAfter->Close());

		// Execute the command list.
		ID3D12CommandList* ppCommandListsAfter[] = { CommandListAfter };
		CommandQueue->ExecuteCommandLists(_countof(ppCommandListsAfter), ppCommandListsAfter);



		// Present the frame.
		ThrowIfFailed(SwapChain->Present(1, 0));

		WaitForPreviousFrame();
    }


	void WaitForPreviousFrame()
	{
		// WAITING FOR THE FRAME TO COMPLETE BEFORE CONTINUING IS NOT BEST PRACTICE.
		// This is code implemented as such for simplicity. The D3D12HelloFrameBuffering
		// sample illustrates how to use fences for efficient resource usage and to
		// maximize GPU utilization.

		// Signal and increment the fence value.
		const UINT64 fence = FenceValue;
		ThrowIfFailed(CommandQueue->Signal(Fence, fence));
		FenceValue++;

		// Wait until the previous frame is finished.
		if (Fence->GetCompletedValue() < fence)
		{
			ThrowIfFailed(Fence->SetEventOnCompletion(fence, FenceEvent));
			WaitForSingleObject(FenceEvent, INFINITE);
		}
		FrameIndex = SwapChain->GetCurrentBackBufferIndex();
	}

	void GachanD3D12Pass::WaitForGPU()
	{
		// Signal and increment the fence value.
		const UINT64 fence = FenceValue;
		ThrowIfFailed(CommandQueue->Signal(Fence, fence));
		FenceValue++;

		// Wait until the fence is completed.
		ThrowIfFailed(Fence->SetEventOnCompletion(fence, FenceEvent));
		WaitForSingleObject(FenceEvent, INFINITE);
	}

    //void Pass::End()//see dx3dpass.h
    //{
    //}



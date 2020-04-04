//
// GachanD3D12Sub.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHAND3D12SUB_H__
#define __GACHAND3D12SUB_H__

#include <d3d12.h>
#include <dxgi1_4.h>
#include "GachanD3D12.h"

class GachanD3D12Sub
{
public:

	//---------------------------
	//for ALL
	//---------------------------

	//for commandList->ResourceBarrier()
	static void SetResourceBarrierTransition(ID3D12Resource* resource, D3D12_RESOURCE_STATES before, D3D12_RESOURCE_STATES after, D3D12_RESOURCE_BARRIER* pbarrier);

	//for device->CreateCommittedResource() 
	static void SetHeapProperties(D3D12_HEAP_TYPE type, D3D12_HEAP_PROPERTIES* pheapprop);
	static void SetResourceDescBuffer(UINT64 size, D3D12_RESOURCE_DESC* presourcedesc);
	static void SetResourceDescTex2D(DXGI_FORMAT format, UINT width, UINT height, D3D12_RESOURCE_DESC* presourcedesc);
	static void SetResourceDescDepthStencil(UINT width, UINT height, D3D12_RESOURCE_DESC* presourcedesc);



	//---------------------------
	//for GachanD3D12Shader
	//---------------------------
	//return CbvSrvDescriptorSize
	static UINT CreateDescriptorHeapCBVSRV(ID3D12Device* device, UINT numdescriptor, ID3D12DescriptorHeap** ppcbvsrvheap);

	static bool CreateConstantBuffer(ID3D12Device* device, UINT64 size, ID3D12Resource** ppresource, void** ppmap);

	static D3D12_CPU_DESCRIPTOR_HANDLE CreateConstantBufferView(
		ID3D12Device* device,
		D3D12_CPU_DESCRIPTOR_HANDLE starthandle, UINT descriptorsize,
		D3D12_GPU_VIRTUAL_ADDRESS startaddr, UINT constantsize,
		int loopcountA, int loopcountB);

	static D3D12_CPU_DESCRIPTOR_HANDLE GetConstantBufferViewHandle(
		D3D12_CPU_DESCRIPTOR_HANDLE starthandle, UINT descriptorsize, 
		int loopcountB, 
		int semaphoreindex, int drawindex);




	//TEXTURE SAMPLER
	static D3D12_CPU_DESCRIPTOR_HANDLE GetTextureViewHandle(
		D3D12_CPU_DESCRIPTOR_HANDLE starthandle, UINT descriptorsize,
		int index);

	//return SamplerDescriptorSize
	//static UINT CreateDescriptorHeapSAMPLER(ID3D12Device* device, UINT numdescriptor, ID3D12DescriptorHeap** ppsamplerheap);

	//return SamplerDescriptorSize
	static UINT CreateSamplerView(ID3D12Device* device, ID3D12DescriptorHeap** samplerheap);

	//wrapuidx/wrapvidx is 0,1,2
	static D3D12_CPU_DESCRIPTOR_HANDLE GetSamplerViewHandle(ID3D12DescriptorHeap* samplerheap, UINT descriptorsize, int wrapuidx, int wrapvidx);
	static D3D12_GPU_DESCRIPTOR_HANDLE GetSamplerGPUHandle(ID3D12DescriptorHeap* samplerheap, UINT descriptorsize, int wrapuidx, int wrapvidx);






	static bool CreateRootSignature(ID3D12Device* device, ID3D12RootSignature** pprootsignature);

	//SHADER x ALPHABLEND(OFF / ON) x DEPTHTEST(OFF / ON) x CULLMODE(NONE / FRONT / BACK)
	static bool CreatePipelineState(
		ID3D12Device* device, 
		ID3D12RootSignature* rootsignature, 
		int shader, bool alphablend, bool depthtest, 
		D3D12_CULL_MODE cullmode, ID3D12PipelineState** pppipelinestate);


	static bool CreatePipelineStateShadowMap(
		ID3D12Device* device,
		ID3D12RootSignature* rootsignature,
		int shader,
		D3D12_CULL_MODE cullmode, ID3D12PipelineState** pppipelinestate);




	//---------------------------
	//for GachanD3D12Pass
	//---------------------------
	static bool CreateCommandQueue(ID3D12Device* device, ID3D12CommandQueue** ppcommandqueue);

	//ret frameindex
	static int CreateSwapChain(IDXGIFactory4* factory, HWND hwnd, GachanD3D12Size size, int framecount, ID3D12CommandQueue* commandQueue, IDXGISwapChain3** ppswapchain);

	//ret descriptor size
	static UINT CreateRenderTarget(ID3D12Device* device, IDXGISwapChain3* swapchain, int framecount, ID3D12Resource** ppresouce, ID3D12DescriptorHeap** ppdescheap);

	//ret descriptor size
	static UINT CreateDepthStencil(ID3D12Device* device, GachanD3D12Size size, int framecount, ID3D12Resource** ppresouce, ID3D12DescriptorHeap** ppdescheap);



	static UINT CreateShadowMap(ID3D12Device* device, int size, ID3D12Resource** ppresouce, ID3D12DescriptorHeap** ppdescheapShadowBuf, ID3D12DescriptorHeap** ppdescheapShadowTex);
	static void ReleaseShadowMap(int texidx);




	//---------------------------
	//for GachanD3D12Base
	//---------------------------
	static bool CreateFactory(IDXGIFactory4** ppfactory);
	static bool CreateDevice(IDXGIFactory4* factory, ID3D12Device** ppdevice);


};




#endif

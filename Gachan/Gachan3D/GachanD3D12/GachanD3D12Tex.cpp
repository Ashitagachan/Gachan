//
// GachanD3D12Tex.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2020 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include <d3d12.h>

#include "GachanD3D12.h"
#include "GachanD3D12Base.h"
#include "GachanD3D12Pass.h"





	//see d3dxiishader.cpp
int                         GachanD3D12Shader_GetIdleTextureIndex();
ID3D12Resource**            GachanD3D12Shader_GetTextureResource(int idx);
D3D12_CPU_DESCRIPTOR_HANDLE GachanD3D12Shader_GetTextureViewHandle(int idx);
void                        GachanD3D12Shader_ReleaseTexture(int idx);



int createtexturesub(int width, int height, unsigned char* bits)
{
	int texidx = GachanD3D12Shader_GetIdleTextureIndex();
	if (texidx == 0) {
		//error
		OutputDebugStringA("error Texture index == 0");
		while (1) {}
	}
	int texsize = width * height * 4;


	ID3D12Device* device = GachanD3D12Base::getDevice();
	ID3D12GraphicsCommandList* commandList;
	ID3D12CommandAllocator* commandAllocator;
	ThrowIfFailed(device->CreateCommandAllocator(D3D12_COMMAND_LIST_TYPE_DIRECT, IID_PPV_ARGS(&commandAllocator)));
	ThrowIfFailed(device->CreateCommandList(0, D3D12_COMMAND_LIST_TYPE_DIRECT, commandAllocator, nullptr, IID_PPV_ARGS(&commandList)));
	commandAllocator->SetName(L"GachanD3D12Tex.cpp");
	commandList->SetName(L"GachanD3D12Tex.cpp");

	D3D12_HEAP_PROPERTIES heappropDEFAULT;
	D3D12_RESOURCE_DESC   resourcedescTEX2D;
	GachanD3D12::SetHeapProperties(D3D12_HEAP_TYPE_DEFAULT, &heappropDEFAULT);
	GachanD3D12::SetResourceDescTex2D(DXGI_FORMAT_R8G8B8A8_UNORM, width, height, &resourcedescTEX2D);

	ID3D12Resource** pptexresource = GachanD3D12Shader_GetTextureResource(texidx);
	ThrowIfFailed(device->CreateCommittedResource(
		&heappropDEFAULT,
		D3D12_HEAP_FLAG_NONE,
		&resourcedescTEX2D,
		D3D12_RESOURCE_STATE_COPY_DEST,
		nullptr,
		IID_PPV_ARGS(pptexresource)));


	const UINT subresourceCount = resourcedescTEX2D.DepthOrArraySize * resourcedescTEX2D.MipLevels;
	const UINT64 uploadBufferSize = GetRequiredIntermediateSize(*pptexresource, 0, subresourceCount);
	D3D12_HEAP_PROPERTIES heappropUPLOAD;
	D3D12_RESOURCE_DESC   resourcedescBUFFER;
	GachanD3D12::SetHeapProperties(D3D12_HEAP_TYPE_UPLOAD, &heappropUPLOAD);
	GachanD3D12::SetResourceDescBuffer(uploadBufferSize, &resourcedescBUFFER);

	ID3D12Resource* uploadresource;
	ThrowIfFailed(device->CreateCommittedResource(
		&heappropUPLOAD,
		D3D12_HEAP_FLAG_NONE,
		&resourcedescBUFFER,
		D3D12_RESOURCE_STATE_GENERIC_READ,
		nullptr,
		IID_PPV_ARGS(&uploadresource)));


	D3D12_SUBRESOURCE_DATA textureData = {};
	textureData.pData = bits;
	textureData.RowPitch = 4 * width;
	textureData.SlicePitch = textureData.RowPitch * height;

	UpdateSubresources(commandList, *pptexresource, uploadresource, 0, 0, subresourceCount, &textureData);

	D3D12_RESOURCE_BARRIER barrier;
	GachanD3D12::SetResourceBarrierTransition(*pptexresource, D3D12_RESOURCE_STATE_COPY_DEST, D3D12_RESOURCE_STATE_PIXEL_SHADER_RESOURCE, &barrier);
	commandList->ResourceBarrier(1, &barrier);
	//	commandList->ResourceBarrier(1, &CD3DX12_RESOURCE_BARRIER::Transition(m_cityDiffuseTexture.Get(), D3D12_RESOURCE_STATE_COPY_DEST, D3D12_RESOURCE_STATE_PIXEL_SHADER_RESOURCE));


		// Create SRV for the city's diffuse texture.
	D3D12_CPU_DESCRIPTOR_HANDLE srvHandle = GachanD3D12Shader_GetTextureViewHandle(texidx);// (m_cbvSrvHeap->GetCPUDescriptorHandleForHeapStart(), 0, m_cbvSrvDescriptorSize);
	D3D12_SHADER_RESOURCE_VIEW_DESC diffuseSrvDesc = {};
	diffuseSrvDesc.Shader4ComponentMapping = D3D12_DEFAULT_SHADER_4_COMPONENT_MAPPING;
	diffuseSrvDesc.Format = DXGI_FORMAT_R8G8B8A8_UNORM;// SampleAssets::Textures->Format;
	diffuseSrvDesc.ViewDimension = D3D12_SRV_DIMENSION_TEXTURE2D;
	diffuseSrvDesc.Texture2D.MipLevels = 1;
	device->CreateShaderResourceView(*pptexresource, &diffuseSrvDesc, srvHandle);


	//wait untill completed
	ThrowIfFailed(commandList->Close());
	ID3D12CommandList* ppCommandLists[] = { commandList };
	ID3D12CommandQueue* commandQueue = GachanD3D12Pass::GetCommandQueue();
	commandQueue->ExecuteCommandLists(_countof(ppCommandLists), ppCommandLists);

	GachanD3D12Pass::WaitForGPU();


	commandList->Release();
	commandAllocator->Release();
	uploadresource->Release();

	if (bits) {
		free(bits);
		bits = NULL;
	}

	return texidx;
}


//from metaltex.mm    
int CreateTextureColored(int width, int height, unsigned int abgr)
{
	unsigned char* bits = (unsigned char*)malloc(width * height * 4);
	if (bits) {
		unsigned int* ptr = (unsigned int*)bits;
		for (int h = 0; h < height; h++) {
			for (int w = 0; w < width; w++) {
				*ptr = abgr;
				ptr++;
			}
		}
	}
	return createtexturesub(width, height, bits);
}

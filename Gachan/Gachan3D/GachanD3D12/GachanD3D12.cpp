//
// GachanD3D12.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include <d3d12.h>
#include "GachanD3D12.h"





//for commandList->ResourceBarrier()
void GachanD3D12::SetResourceBarrierTransition(ID3D12Resource* resource, D3D12_RESOURCE_STATES before, D3D12_RESOURCE_STATES after, D3D12_RESOURCE_BARRIER* pbarrier)
{
	ZeroMemory((void*)pbarrier, sizeof(D3D12_RESOURCE_STATES));
	pbarrier->Type = D3D12_RESOURCE_BARRIER_TYPE_TRANSITION;
	pbarrier->Flags = D3D12_RESOURCE_BARRIER_FLAG_NONE;
	pbarrier->Transition.pResource = resource;// m_renderTargets[m_frameIndex];
	pbarrier->Transition.StateBefore = before;// D3D12_RESOURCE_STATE_PRESENT;
	pbarrier->Transition.StateAfter = after;// D3D12_RESOURCE_STATE_RENDER_TARGET;
	pbarrier->Transition.Subresource = D3D12_RESOURCE_BARRIER_ALL_SUBRESOURCES;
}



//for device->CreateCommittedResource() 
void GachanD3D12::SetHeapProperties(D3D12_HEAP_TYPE type, D3D12_HEAP_PROPERTIES* pheapprop)
{
	pheapprop->Type = type;
	pheapprop->CPUPageProperty = D3D12_CPU_PAGE_PROPERTY_UNKNOWN;
	pheapprop->MemoryPoolPreference = D3D12_MEMORY_POOL_UNKNOWN;
	pheapprop->CreationNodeMask = 1;// creationNodeMask;
	pheapprop->VisibleNodeMask = 1;// nodeMask;
}

void GachanD3D12::SetResourceDescBuffer(UINT64 size, D3D12_RESOURCE_DESC* presourcedesc)
{
	presourcedesc->Dimension = D3D12_RESOURCE_DIMENSION_BUFFER;
	presourcedesc->Alignment = 0;
	presourcedesc->Width = size;
	presourcedesc->Height = 1;
	presourcedesc->DepthOrArraySize = 1;
	presourcedesc->MipLevels = 1;
	presourcedesc->Format = DXGI_FORMAT_UNKNOWN;
	presourcedesc->SampleDesc.Count = 1;
	presourcedesc->SampleDesc.Quality = 0;
	presourcedesc->Layout = D3D12_TEXTURE_LAYOUT_ROW_MAJOR;
	presourcedesc->Flags = D3D12_RESOURCE_FLAG_NONE;
}

void GachanD3D12::SetResourceDescTex2D(DXGI_FORMAT format, UINT width, UINT height, D3D12_RESOURCE_DESC* presourcedesc)
{
	presourcedesc->Dimension = D3D12_RESOURCE_DIMENSION_TEXTURE2D;
	presourcedesc->Alignment = 0;
	presourcedesc->Width = width;// CityMaterialTextureWidth;
	presourcedesc->Height = height;// CityMaterialTextureHeight;
	presourcedesc->DepthOrArraySize = 1;
	presourcedesc->MipLevels = 1;
	presourcedesc->Format = format;// DXGI_FORMAT_R8G8B8A8_UNORM;
	presourcedesc->SampleDesc.Count = 1;
	presourcedesc->SampleDesc.Quality = 0;
	presourcedesc->Layout = D3D12_TEXTURE_LAYOUT_UNKNOWN;
	presourcedesc->Flags = D3D12_RESOURCE_FLAG_NONE;
}

void GachanD3D12::SetResourceDescDepthStencil(UINT width, UINT height, D3D12_RESOURCE_DESC* presourcedesc)
{
	presourcedesc->Dimension = D3D12_RESOURCE_DIMENSION_TEXTURE2D;
	presourcedesc->Alignment = 0;
	presourcedesc->Width = width;// size.width;
	presourcedesc->Height = height;// size.height;
	presourcedesc->DepthOrArraySize = 1;
	presourcedesc->MipLevels = 0;
	presourcedesc->Format = DXGI_FORMAT_D32_FLOAT;
	presourcedesc->SampleDesc.Count = 1;
	presourcedesc->SampleDesc.Quality = 0;
	presourcedesc->Layout = D3D12_TEXTURE_LAYOUT_UNKNOWN;
	presourcedesc->Flags = D3D12_RESOURCE_FLAG_ALLOW_DEPTH_STENCIL;
}


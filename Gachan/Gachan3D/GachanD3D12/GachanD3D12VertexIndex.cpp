//
// GachanD3D12VertexIndex.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include <d3d12.h>

#include "GachanD3D12.h"
#include "GachanD3D12Sub.h"
#include "GachanD3D12Base.h"
#include "GachanD3D12Pass.h"
#include "Gachan3D.h"
#include "Gachan3DObject.h"





//#define BUFFER_OFFSET(i) ((char *)NULL + (i))


	//see d3dxiishader.cpp
	int                       GachanD3D12Shader_GetIdleVertexBufferIndex();
	int                       GachanD3D12Shader_GetIdleIndexBufferIndex();
	ID3D12Resource**          GachanD3D12Shader_GetVertexBufferResource(int idx);
	D3D12_VERTEX_BUFFER_VIEW* GachanD3D12Shader_GetVertexBufferView(int idx);
	ID3D12Resource**          GachanD3D12Shader_GetIndexBufferResource(int idx);
	D3D12_INDEX_BUFFER_VIEW*  GachanD3D12Shader_GetIndexBufferView(int idx);
	void                      GachanD3D12Shader_ReleaseVertexBuffer(int idx);
	void                      GachanD3D12Shader_ReleaseIndexBuffer(int idx);


	
	
	
	void Gachan3DVertex::Create()
	{
		if (vif == 0) {
			
			//ConvUV();
			
			ConvXYiZ();
            

			int vertidx = GachanD3D12Shader_GetIdleVertexBufferIndex();
			if (vertidx == 0) {
				//error
				OutputDebugStringA("error VertexBuffer index == 0");
				while (1) {}
			}
			UINT vertsize = vertexnum * Gachan3DVertex::Stride[vertextype];

			ID3D12Device* device = GachanD3D12Base::getDevice();
			ID3D12GraphicsCommandList* commandList;
			ID3D12CommandAllocator*    commandAllocator;
			ThrowIfFailed(device->CreateCommandAllocator(D3D12_COMMAND_LIST_TYPE_DIRECT, IID_PPV_ARGS(&commandAllocator)));
			ThrowIfFailed(device->CreateCommandList(0, D3D12_COMMAND_LIST_TYPE_DIRECT, commandAllocator, nullptr, IID_PPV_ARGS(&commandList)));

			commandAllocator->SetName(L"d3dxiimodelvert.cpp");
			commandList->SetName(L"d3dxiimodelvert.cpp");

			D3D12_HEAP_PROPERTIES heappropDEFAULT;
			D3D12_HEAP_PROPERTIES heappropUPLOAD;
			D3D12_RESOURCE_DESC   resourcedescBUFFER;
			GachanD3D12Sub::SetHeapProperties(D3D12_HEAP_TYPE_DEFAULT, &heappropDEFAULT);
			GachanD3D12Sub::SetHeapProperties(D3D12_HEAP_TYPE_UPLOAD,  &heappropUPLOAD);
			GachanD3D12Sub::SetResourceDescBuffer(vertsize, &resourcedescBUFFER);

			ID3D12Resource** ppvbresource = GachanD3D12Shader_GetVertexBufferResource(vertidx);
			ThrowIfFailed(device->CreateCommittedResource(
				&heappropDEFAULT,
				D3D12_HEAP_FLAG_NONE,
				&resourcedescBUFFER,
				D3D12_RESOURCE_STATE_COPY_DEST,
				nullptr,
				IID_PPV_ARGS(ppvbresource)));

			ID3D12Resource* uploadresource;
			ThrowIfFailed(device->CreateCommittedResource(
				&heappropUPLOAD,
				D3D12_HEAP_FLAG_NONE,
				&resourcedescBUFFER,
				D3D12_RESOURCE_STATE_GENERIC_READ,
				nullptr,
				IID_PPV_ARGS(&uploadresource)));

			//NAME_D3D12_OBJECT(m_vertexBuffer);

			// Copy data to the intermediate upload heap and then schedule a copy 
			// from the upload heap to the vertex buffer.
			D3D12_SUBRESOURCE_DATA vertexData = {};
			vertexData.pData      = (unsigned char*)vertex; // pMeshData + SampleAssets::VertexDataOffset;
			vertexData.RowPitch   = vertsize;// SampleAssets::VertexDataSize;
			vertexData.SlicePitch = vertexData.RowPitch;

			UpdateSubresources<1>(commandList, *ppvbresource, uploadresource, 0, 0, 1, &vertexData);

			D3D12_RESOURCE_BARRIER barrier;
			GachanD3D12Sub::SetResourceBarrierTransition(*ppvbresource, D3D12_RESOURCE_STATE_COPY_DEST, D3D12_RESOURCE_STATE_VERTEX_AND_CONSTANT_BUFFER, &barrier);
			commandList->ResourceBarrier(1, &barrier);
			//commandList->ResourceBarrier(1, &CD3DX12_RESOURCE_BARRIER::Transition(m_vertexBuffer.Get(), D3D12_RESOURCE_STATE_COPY_DEST, D3D12_RESOURCE_STATE_VERTEX_AND_CONSTANT_BUFFER));

			// Initialize the vertex buffer view.
			D3D12_VERTEX_BUFFER_VIEW* pvbview = GachanD3D12Shader_GetVertexBufferView(vertidx);
			pvbview->BufferLocation = (*ppvbresource)->GetGPUVirtualAddress();
			pvbview->StrideInBytes  = Gachan3DVertex::Stride[vertextype];// SampleAssets::StandardVertexStride;
			pvbview->SizeInBytes    = vertsize;// SampleAssets::VertexDataSize;


			//wait untill completed
			ThrowIfFailed(commandList->Close());
			ID3D12CommandList* ppCommandLists[] = { commandList };
			ID3D12CommandQueue* commandQueue = GachanD3D12Pass::GetCommandQueue();
			commandQueue->ExecuteCommandLists(_countof(ppCommandLists), ppCommandLists);

			GachanD3D12Pass::WaitForGPU();

#pragma warning(push)
#pragma warning(disable: 4312)
			vif = (void*)vertidx;
#pragma warning(pop)

			commandList->Release();
			commandAllocator->Release();
			uploadresource->Release();
		}
	}
	
	void Gachan3DVertex::Release()
	{
		if (vif) {
#pragma warning(push)
#pragma warning(disable: 4311)
#pragma warning(disable: 4302)
			int vertidx = (int)vif;
#pragma warning(pop)
			GachanD3D12Shader_ReleaseVertexBuffer(vertidx);

			vif = 0;
		}
	}
	
	
	int Gachan3DIndex::Size()
	{
		return sizeof(Gachan3DIndexType);
	}
	
	
	void* Gachan3DIndex::Create(Gachan3DIndexType* index, unsigned int indexnum)
	{
		void* iif;

		int indexidx = GachanD3D12Shader_GetIdleIndexBufferIndex();
		if (indexidx == 0) {
			//error
			OutputDebugStringA("error IndexBuffer index == 0");
			while (1) {}
		}
		UINT indexsize = indexnum * Gachan3DIndex::Size();

		ID3D12Device* device = GachanD3D12Base::getDevice();
		ID3D12GraphicsCommandList* commandList;
		ID3D12CommandAllocator*    commandAllocator;
		ThrowIfFailed(device->CreateCommandAllocator(D3D12_COMMAND_LIST_TYPE_DIRECT, IID_PPV_ARGS(&commandAllocator)));
		ThrowIfFailed(device->CreateCommandList(0, D3D12_COMMAND_LIST_TYPE_DIRECT, commandAllocator, nullptr, IID_PPV_ARGS(&commandList)));
		//NAME_D3D12_OBJECT(commandList);


		D3D12_HEAP_PROPERTIES heappropDEFAULT;
		D3D12_HEAP_PROPERTIES heappropUPLOAD;
		D3D12_RESOURCE_DESC   resourcedescBUFFER;
		GachanD3D12Sub::SetHeapProperties(D3D12_HEAP_TYPE_DEFAULT, &heappropDEFAULT);
		GachanD3D12Sub::SetHeapProperties(D3D12_HEAP_TYPE_UPLOAD,  &heappropUPLOAD);
		GachanD3D12Sub::SetResourceDescBuffer(indexsize, &resourcedescBUFFER);

		ID3D12Resource** ppibresource = GachanD3D12Shader_GetIndexBufferResource(indexidx);
		ThrowIfFailed(device->CreateCommittedResource(
			&heappropDEFAULT,
			D3D12_HEAP_FLAG_NONE,
			&resourcedescBUFFER,
			D3D12_RESOURCE_STATE_COPY_DEST,
			nullptr,
			IID_PPV_ARGS(ppibresource)));

		ID3D12Resource* uploadresource;
		ThrowIfFailed(device->CreateCommittedResource(
			&heappropUPLOAD,
			D3D12_HEAP_FLAG_NONE,
			&resourcedescBUFFER,
			D3D12_RESOURCE_STATE_GENERIC_READ,
			nullptr,
			IID_PPV_ARGS(&uploadresource)));

		//NAME_D3D12_OBJECT(m_vertexBuffer);

		// Copy data to the intermediate upload heap and then schedule a copy 
		// from the upload heap to the index buffer.
		D3D12_SUBRESOURCE_DATA indexData = {};
		indexData.pData      = (unsigned char*)index; // pMeshData + SampleAssets::VertexDataOffset;
		indexData.RowPitch   = indexsize;// SampleAssets::VertexDataSize;
		indexData.SlicePitch = indexData.RowPitch;

		UpdateSubresources<1>(commandList, *ppibresource, uploadresource, 0, 0, 1, &indexData);

		D3D12_RESOURCE_BARRIER barrier;
		GachanD3D12Sub::SetResourceBarrierTransition(*ppibresource, D3D12_RESOURCE_STATE_COPY_DEST, D3D12_RESOURCE_STATE_INDEX_BUFFER, &barrier);
		commandList->ResourceBarrier(1, &barrier);
		//commandList->ResourceBarrier(1, &CD3DX12_RESOURCE_BARRIER::Transition(m_vertexBuffer.Get(), D3D12_RESOURCE_STATE_COPY_DEST, D3D12_RESOURCE_STATE_VERTEX_AND_CONSTANT_BUFFER));

		// Initialize the index buffer view.
		D3D12_INDEX_BUFFER_VIEW* pibview = GachanD3D12Shader_GetIndexBufferView(indexidx);
		pibview->BufferLocation = (*ppibresource)->GetGPUVirtualAddress();
		pibview->Format         = DXGI_FORMAT_R16_UINT;//DXGI_FORMAT_R32_UINT (42)
		pibview->SizeInBytes    = indexsize;// SampleAssets::VertexDataSize;


		//wait untill completed
		ThrowIfFailed(commandList->Close());
		ID3D12CommandList* ppCommandLists[] = { commandList };
		ID3D12CommandQueue* commandQueue = GachanD3D12Pass::GetCommandQueue();
		commandQueue->ExecuteCommandLists(_countof(ppCommandLists), ppCommandLists);

		GachanD3D12Pass::WaitForGPU();

#pragma warning(push)
#pragma warning(disable: 4312)
		iif = (void*)indexidx;
#pragma warning(pop)

		commandList->Release();
		commandAllocator->Release();
		uploadresource->Release();

		return iif;
	}
	
	void Gachan3DIndex::Release(void* iif)
	{
#pragma warning(push)
#pragma warning(disable: 4311)
#pragma warning(disable: 4302)
		int indexidx = (int)iif;
#pragma warning(pop)
		GachanD3D12Shader_ReleaseIndexBuffer(indexidx);
        iif = (void*) 0;//これは意味ないけどNULLクリアは呼び出し元で行っている。
	}

	




//
// Gachan3D.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include <d3d12.h>

#include "Gachan.h"
#include "GachanD3D12Sub.h"
#include "GachanD3D12Base.h"
#include "GachanD3D12Pass.h"
#include "GachanD3D12TexDDS.h"
#include "Gachan3DTexDDS.h"





	//see d3dxiishader.cpp
	int                         GachanD3D12Shader_GetIdleTextureIndex();
	ID3D12Resource**            GachanD3D12Shader_GetTextureResource(int idx);
	D3D12_CPU_DESCRIPTOR_HANDLE GachanD3D12Shader_GetTextureViewHandle(int idx);
	void                        GachanD3D12Shader_ReleaseTexture(int idx);



	int createtextureDDS(char* path)
	{
		if (path == NULL) {
			return NULL;
		}


		unsigned char* buf = NULL;
		unsigned int bufsize = 0;

		FILE* fp = fopen(path, "rb");
		if (fp) {
			fseek(fp, 0, SEEK_END);
			bufsize = (unsigned int)ftell(fp);

			buf = (unsigned char*)malloc(bufsize);
			if (buf == NULL) {
				return NULL;
			}
			fseek(fp, 0, SEEK_SET);
			fread(buf, bufsize, 1, fp);
			fclose(fp);
			fp = NULL;
		}
		else {
			return NULL;
		}


		DDS dds;

		if (dds.SetBuffer(buf, bufsize)) {

			if (dds.dxgiformat == DXGI_FORMAT_UNKNOWN) {
				return NULL;
			}

			//VS2019スタックでの動的配列確保ができない。。
			DDS::LEVEL* level = (DDS::LEVEL*) malloc(sizeof(DDS::LEVEL) * dds.arraysize * dds.mipcount);
			if (level == NULL) {
				free(buf);
				return NULL;
			}
			if (dds.GetLevels(level)) {

				int texidx = GachanD3D12Shader_GetIdleTextureIndex();
				if (texidx == 0) {
					//error
					OutputDebugStringA("error Texture index == 0");
					while (1) {}
				}

				ID3D12Device* device = GachanD3D12Base::getDevice();



				//CREATE TEXTURE RESOURCE
				ID3D12Resource** pptexresource = GachanD3D12Shader_GetTextureResource(texidx);

				D3D12_HEAP_PROPERTIES defaultHeapProperties = {
					D3D12_HEAP_TYPE_DEFAULT,
					D3D12_CPU_PAGE_PROPERTY_UNKNOWN,
					D3D12_MEMORY_POOL_UNKNOWN,
					1, 1
				};
#if 0
				D3D12_RESOURCE_DESC resourceDesc = {
					D3D12_RESOURCE_DIMENSION_TEXTURE2D, 0,
					(UINT64)dds.width, (UINT)dds.height,
					(UINT16)dds.arraysize,
					(UINT16)dds.mipcount, dds.dxgiformat, {1, 0} };
#else
				D3D12_RESOURCE_DESC resourceDesc2D;
				GachanD3D12Sub::SetResourceDescTex2D(dds.dxgiformat, dds.width, dds.height, dds.mipcount, dds.arraysize, &resourceDesc2D);
#endif
				ThrowIfFailed(device->CreateCommittedResource(&defaultHeapProperties,
					D3D12_HEAP_FLAG_NONE,
					&resourceDesc2D,
					D3D12_RESOURCE_STATE_PIXEL_SHADER_RESOURCE,
					nullptr,
					IID_PPV_ARGS(pptexresource)));


				//WRITE TEXTURE RESOURCE BELOW

				const int maxSubresources = 128;
				const UINT numResources = dds.mipcount * dds.arraysize;
				if (numResources >= maxSubresources) { 
					free(buf);
					DEBUGSTOP;
					return NULL;
				}

				//GET FOOTPRINT
				D3D12_PLACED_SUBRESOURCE_FOOTPRINT footprints[maxSubresources];
				UINT64 rowSizeInBytes[maxSubresources];
				UINT   numRows[maxSubresources];
				UINT64 uploadSize;

				device->GetCopyableFootprints(&(*pptexresource)->GetDesc(), 0,
					numResources, 0,
					footprints,
					numRows,
					rowSizeInBytes,
					&uploadSize);


				//CREATE UPLOAD BUFFER
				ID3D12Resource* uploadBuffer;

				D3D12_HEAP_PROPERTIES uploadHeapProperties = {
					D3D12_HEAP_TYPE_UPLOAD,
					D3D12_CPU_PAGE_PROPERTY_UNKNOWN,
					D3D12_MEMORY_POOL_UNKNOWN,
					1, 1
				};

				D3D12_RESOURCE_DESC resourceDescBUFFER;
				GachanD3D12Sub::SetResourceDescBuffer(uploadSize, &resourceDescBUFFER);

				ThrowIfFailed(device->CreateCommittedResource(
					&uploadHeapProperties,
					D3D12_HEAP_FLAG_NONE,
					&resourceDescBUFFER,
					D3D12_RESOURCE_STATE_GENERIC_READ,
					nullptr,
					IID_PPV_ARGS(&uploadBuffer)));




				//FILL UPLOAD BUFFER

				D3D12_RANGE readRange = {};
				BYTE* ptr;
				ThrowIfFailed(uploadBuffer->Map(0, &readRange, (void**)& ptr));

				for (UINT i = 0; i < numResources; i++) {
					if (level[i].pitch != rowSizeInBytes[i]) {
						uploadBuffer->Unmap(0, nullptr);
						free(buf);
						DEBUGSTOP;
						return NULL;
					}
					if (level[i].pitch > footprints[i].Footprint.RowPitch) {
						uploadBuffer->Unmap(0, nullptr);
						free(buf);
						DEBUGSTOP;
						return NULL;
					}

					for (UINT row = 0; row < numRows[i]; row++) {
						memcpy(ptr + footprints[i].Offset + footprints[i].Footprint.RowPitch * row,
							(BYTE*)level[i].ptr + level[i].pitch * row,
							level[i].pitch);
					}
				}
				uploadBuffer->Unmap(0, nullptr);


				D3D12_RESOURCE_BARRIER barrier_before[maxSubresources];
				D3D12_RESOURCE_BARRIER barrier_after[maxSubresources];

				for (UINT i = 0; i < numResources; i++) {
					barrier_before[i] = { D3D12_RESOURCE_BARRIER_TYPE_TRANSITION,
								  D3D12_RESOURCE_BARRIER_FLAG_NONE,
								  { (*pptexresource), i,
									D3D12_RESOURCE_STATE_PIXEL_SHADER_RESOURCE,
									D3D12_RESOURCE_STATE_COPY_DEST } };
					barrier_after[i] = { D3D12_RESOURCE_BARRIER_TYPE_TRANSITION,
								  D3D12_RESOURCE_BARRIER_FLAG_NONE,
								  { (*pptexresource), i,
									D3D12_RESOURCE_STATE_COPY_DEST,
									D3D12_RESOURCE_STATE_PIXEL_SHADER_RESOURCE } };
				}

				//BUILD COPY COMMAND
				ID3D12GraphicsCommandList* commandList;
				ID3D12CommandAllocator* commandAllocator;
				ThrowIfFailed(device->CreateCommandAllocator(D3D12_COMMAND_LIST_TYPE_DIRECT, IID_PPV_ARGS(&commandAllocator)));
				ThrowIfFailed(device->CreateCommandList(0, D3D12_COMMAND_LIST_TYPE_DIRECT, commandAllocator, nullptr, IID_PPV_ARGS(&commandList)));
				commandAllocator->SetName(L"d3dxiitexdds.cpp");
				commandList->SetName(L"d3dxiitexdds.cpp");

				commandList->ResourceBarrier(numResources, barrier_before);

				for (UINT i = 0; i < numResources; i++)
				{
					D3D12_TEXTURE_COPY_LOCATION uploadBufLocation = { 
						uploadBuffer,
						D3D12_TEXTURE_COPY_TYPE_PLACED_FOOTPRINT,
						footprints[i] 
					};
					D3D12_TEXTURE_COPY_LOCATION nativeBufLocation = { 
						(*pptexresource),
						D3D12_TEXTURE_COPY_TYPE_SUBRESOURCE_INDEX,
						i 
					};
					commandList->CopyTextureRegion(&nativeBufLocation, 0, 0, 0, &uploadBufLocation, nullptr);
				}
				commandList->ResourceBarrier(numResources, barrier_after);

				ThrowIfFailed(commandList->Close());


				//EXECUTE COPY COMMAND
				ID3D12CommandList* ppCommandLists[] = { commandList };
				ID3D12CommandQueue* commandQueue = GachanD3D12Pass::GetCommandQueue();
				commandQueue->ExecuteCommandLists(_countof(ppCommandLists), ppCommandLists);

				GachanD3D12Pass::WaitForGPU();

				commandList->Release();
				commandAllocator->Release();
				uploadBuffer->Release();

				//CREATAE SHADER RESOURCE VIEW
				D3D12_CPU_DESCRIPTOR_HANDLE srvHandle = GachanD3D12Shader_GetTextureViewHandle(texidx);
				D3D12_SHADER_RESOURCE_VIEW_DESC diffuseSrvDesc = {};
				diffuseSrvDesc.Shader4ComponentMapping = D3D12_DEFAULT_SHADER_4_COMPONENT_MAPPING;
				diffuseSrvDesc.Format                  = dds.dxgiformat;
				diffuseSrvDesc.ViewDimension           = D3D12_SRV_DIMENSION_TEXTURE2D;
				diffuseSrvDesc.Texture2D.MipLevels     = dds.mipcount;
				device->CreateShaderResourceView(*pptexresource, &diffuseSrvDesc, srvHandle);



				free(level);
				free(buf);
				return texidx;
			}
			free(level);
		}
		free(buf);
		return 0;
	}



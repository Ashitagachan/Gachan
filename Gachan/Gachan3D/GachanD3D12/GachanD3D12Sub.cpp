//
// GachanD3D12Sub.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include <string>
#include <d3dcompiler.h>
#include "GachanMath.h"
#include "GachanD3D12.h"
#include "GachanD3D12Sub.h"
#include "Gachan3DObject.h"
#include "Gachan3DShader.h"
#include "Gachan3DObject.h"



	//---------------------------
	//for ALL
	//---------------------------


//for commandList->ResourceBarrier()
void GachanD3D12Sub::SetResourceBarrierTransition(ID3D12Resource* resource, D3D12_RESOURCE_STATES before, D3D12_RESOURCE_STATES after, D3D12_RESOURCE_BARRIER* pbarrier)
{
	ZeroMemory((void*)pbarrier, sizeof(D3D12_RESOURCE_STATES));
	pbarrier->Type = D3D12_RESOURCE_BARRIER_TYPE_TRANSITION;
	pbarrier->Flags = D3D12_RESOURCE_BARRIER_FLAG_NONE;
	pbarrier->Transition.pResource = resource;// m_renderTargets[m_frameIndex];
	pbarrier->Transition.StateBefore = before;// D3D12_RESOURCE_STATE_PRESENT;
	pbarrier->Transition.StateAfter = after;// D3D12_RESOURCE_STATE_RENDER_TARGET;
	pbarrier->Transition.Subresource = D3D12_RESOURCE_BARRIER_FLAG_NONE;
}



//for device->CreateCommittedResource() 
void GachanD3D12Sub::SetHeapProperties(D3D12_HEAP_TYPE type, D3D12_HEAP_PROPERTIES* pheapprop)
{
	pheapprop->Type = type;
	pheapprop->CPUPageProperty = D3D12_CPU_PAGE_PROPERTY_UNKNOWN;
	pheapprop->MemoryPoolPreference = D3D12_MEMORY_POOL_UNKNOWN;
	pheapprop->CreationNodeMask = 1;// creationNodeMask;
	pheapprop->VisibleNodeMask = 1;// nodeMask;
}

void GachanD3D12Sub::SetResourceDescBuffer(UINT64 size, D3D12_RESOURCE_DESC* presourcedesc)
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

void GachanD3D12Sub::SetResourceDescTex2D(DXGI_FORMAT format, UINT width, UINT height, UINT miplevels, UINT depthorarraysize, D3D12_RESOURCE_DESC* presourcedesc)
{
	presourcedesc->Dimension = D3D12_RESOURCE_DIMENSION_TEXTURE2D;
	presourcedesc->Alignment = 0;
	presourcedesc->Width = width;// CityMaterialTextureWidth;
	presourcedesc->Height = height;// CityMaterialTextureHeight;
	presourcedesc->DepthOrArraySize = depthorarraysize;
	presourcedesc->MipLevels = miplevels;
	presourcedesc->Format = format;// DXGI_FORMAT_R8G8B8A8_UNORM;
	presourcedesc->SampleDesc.Count = 1;
	presourcedesc->SampleDesc.Quality = 0;
	presourcedesc->Layout = D3D12_TEXTURE_LAYOUT_UNKNOWN;
	presourcedesc->Flags = D3D12_RESOURCE_FLAG_NONE;
}

void GachanD3D12Sub::SetResourceDescDepthStencil(UINT width, UINT height, D3D12_RESOURCE_DESC* presourcedesc)
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









	//---------------------------
	//for GachanD3D12Shader
	//---------------------------




	//return CbvSrvDescriptorSize
	UINT GachanD3D12Sub::CreateDescriptorHeapCBVSRV(ID3D12Device* device, UINT numdescriptor, ID3D12DescriptorHeap** ppcbvsrvheap)
	{
		D3D12_DESCRIPTOR_HEAP_DESC cbvSrvHeapDesc = {};
		cbvSrvHeapDesc.NumDescriptors = numdescriptor;// ConstantSemaphoreNum * MergeDrawMax + TextureNum;//UnifromBufferの数＋テクスチャの数
		cbvSrvHeapDesc.Type           = D3D12_DESCRIPTOR_HEAP_TYPE_CBV_SRV_UAV;
		cbvSrvHeapDesc.Flags          = D3D12_DESCRIPTOR_HEAP_FLAG_SHADER_VISIBLE;
		ThrowIfFailed(device->CreateDescriptorHeap(&cbvSrvHeapDesc, IID_PPV_ARGS(ppcbvsrvheap)));
		//NAME_D3D12_OBJECT(m_cbvSrvHeap);
		UINT CbvSrvDescriptorSize = device->GetDescriptorHandleIncrementSize(D3D12_DESCRIPTOR_HEAP_TYPE_CBV_SRV_UAV);
		return CbvSrvDescriptorSize;
	}

	bool GachanD3D12Sub::CreateConstantBuffer(ID3D12Device* device, UINT64 size, ID3D12Resource** ppresource, void** ppmap)
	{
#if 1
		D3D12_HEAP_PROPERTIES prop;
		GachanD3D12Sub::SetHeapProperties(D3D12_HEAP_TYPE_UPLOAD, &prop);

		D3D12_RESOURCE_DESC desc;
		GachanD3D12Sub::SetResourceDescBuffer(size, &desc);
#else
		// ヒーププロパティの設定.
		D3D12_HEAP_PROPERTIES prop = {};
		prop.Type                 = D3D12_HEAP_TYPE_UPLOAD;
		prop.CPUPageProperty      = D3D12_CPU_PAGE_PROPERTY_UNKNOWN;
		prop.MemoryPoolPreference = D3D12_MEMORY_POOL_UNKNOWN;
		prop.CreationNodeMask     = 1;
		prop.VisibleNodeMask      = 1;

		// リソースの設定.
		D3D12_RESOURCE_DESC desc = {};
		desc.Dimension          = D3D12_RESOURCE_DIMENSION_BUFFER;
		desc.Alignment          = 0;
		desc.Width              = size;
		desc.Height             = 1;
		desc.DepthOrArraySize   = 1;
		desc.MipLevels          = 1;
		desc.Format             = DXGI_FORMAT_UNKNOWN;
		desc.SampleDesc.Count   = 1;
		desc.SampleDesc.Quality = 0;
		desc.Layout             = D3D12_TEXTURE_LAYOUT_ROW_MAJOR;
		desc.Flags              = D3D12_RESOURCE_FLAG_NONE;
#endif
		// リソースを生成.
		ThrowIfFailed(device->CreateCommittedResource(
			&prop,
			D3D12_HEAP_FLAG_NONE,
			&desc,
			D3D12_RESOURCE_STATE_GENERIC_READ,
			nullptr,
			IID_PPV_ARGS(ppresource)));

		// 定数バッファビューの設定.
		//D3D12_CONSTANT_BUFFER_VIEW_DESC bufferDesc = {};
		//bufferDesc.BufferLocation = (*ppresource)->GetGPUVirtualAddress();
		//bufferDesc.SizeInBytes    = size;

		// マップする. アプリケーション終了まで Unmap しない.
		// "Keeping things mapped for the lifetime of the resource is okay." とのこと。
		ThrowIfFailed((*ppresource)->Map(0, nullptr, reinterpret_cast<void**>(ppmap)));

		return true;
	}

	D3D12_CPU_DESCRIPTOR_HANDLE GachanD3D12Sub::CreateConstantBufferView(
		ID3D12Device* device, 
		D3D12_CPU_DESCRIPTOR_HANDLE starthandle, UINT descriptorsize,
		D3D12_GPU_VIRTUAL_ADDRESS startaddr, UINT constantsize, 
		int loopcountA, int loopcountB)
	{
		D3D12_CPU_DESCRIPTOR_HANDLE handle = starthandle;
		D3D12_GPU_VIRTUAL_ADDRESS addr = startaddr;

		for (int a = 0; a < loopcountA; a++) {
			for (int b = 0; b < loopcountB; b++) {
				// Describe and create a constant buffer view (CBV).
				D3D12_CONSTANT_BUFFER_VIEW_DESC cbvDesc = {};
				cbvDesc.BufferLocation = addr;
				cbvDesc.SizeInBytes    = constantsize;
				device->CreateConstantBufferView(&cbvDesc, handle);

				addr += cbvDesc.SizeInBytes;
				handle.ptr += descriptorsize;
			}
		}
		return handle;	
	}


	D3D12_CPU_DESCRIPTOR_HANDLE GachanD3D12Sub::GetConstantBufferViewHandle(
		D3D12_CPU_DESCRIPTOR_HANDLE starthandle, UINT descriptorsize, 
		int loopcountB, 
		int semaphoreindex, int drawindex )
	{
		int offset = descriptorsize * (semaphoreindex * loopcountB + drawindex);
		starthandle.ptr += offset;
		return starthandle;
	}





	//TEXTURE SAMPLER

	D3D12_CPU_DESCRIPTOR_HANDLE GachanD3D12Sub::GetTextureViewHandle(
		D3D12_CPU_DESCRIPTOR_HANDLE starthandle, UINT descriptorsize,
		int index)
	{
		int offset = descriptorsize * index;
		starthandle.ptr += offset;
		return starthandle;
	}



	//return SamplerDescriptorSize
	UINT
		//D3DXIIShaderSub::
		CreateDescriptorHeapSAMPLER(ID3D12Device* device, UINT numdescriptor, ID3D12DescriptorHeap** ppsamplerheap)
	{
		D3D12_DESCRIPTOR_HEAP_DESC samplerHeapDesc = {};
		samplerHeapDesc.NumDescriptors = numdescriptor;
		samplerHeapDesc.Type = D3D12_DESCRIPTOR_HEAP_TYPE_SAMPLER;
		samplerHeapDesc.Flags = D3D12_DESCRIPTOR_HEAP_FLAG_SHADER_VISIBLE;
		ThrowIfFailed(device->CreateDescriptorHeap(&samplerHeapDesc, IID_PPV_ARGS(ppsamplerheap)));
		UINT SamplerDescriptorSize = device->GetDescriptorHandleIncrementSize(D3D12_DESCRIPTOR_HEAP_TYPE_SAMPLER);
		return SamplerDescriptorSize;
	}


	D3D12_TEXTURE_ADDRESS_MODE wrap[GachanMaterialTex::WRAP_NUM] = {
		D3D12_TEXTURE_ADDRESS_MODE_WRAP,
		D3D12_TEXTURE_ADDRESS_MODE_MIRROR,
		D3D12_TEXTURE_ADDRESS_MODE_CLAMP
	};

	//return SamplerDescriptorSize
	UINT GachanD3D12Sub::CreateSamplerView(ID3D12Device* device, ID3D12DescriptorHeap** samplerheap)
	{
		UINT SamplerDescriptorSize =
			CreateDescriptorHeapSAMPLER(device, GachanMaterialTex::WRAP_NUM * GachanMaterialTex::WRAP_NUM, samplerheap);

		D3D12_CPU_DESCRIPTOR_HANDLE samplerHandle = (*samplerheap)->GetCPUDescriptorHandleForHeapStart();

		for (int u = 0; u < GachanMaterialTex::WRAP_NUM; u++) {
			for (int v = 0; v < GachanMaterialTex::WRAP_NUM; v++) {
				D3D12_SAMPLER_DESC samplerDesc = {};
				samplerDesc.Filter = D3D12_FILTER_MIN_MAG_MIP_LINEAR;
				samplerDesc.AddressU = wrap[u];// D3D12_TEXTURE_ADDRESS_MODE_WRAP;
				samplerDesc.AddressV = wrap[v];// D3D12_TEXTURE_ADDRESS_MODE_WRAP;
				samplerDesc.AddressW = D3D12_TEXTURE_ADDRESS_MODE_WRAP;
				samplerDesc.MinLOD = 0;
				samplerDesc.MaxLOD = D3D12_FLOAT32_MAX;
				samplerDesc.MipLODBias = 0.0f;
				samplerDesc.MaxAnisotropy = 1;
				samplerDesc.ComparisonFunc = D3D12_COMPARISON_FUNC_ALWAYS;
				device->CreateSampler(&samplerDesc, samplerHandle);
				samplerHandle.ptr += SamplerDescriptorSize;
			}
		}
		return SamplerDescriptorSize;
	}
	D3D12_CPU_DESCRIPTOR_HANDLE GachanD3D12Sub::GetSamplerViewHandle(ID3D12DescriptorHeap* samplerheap, UINT descriptorsize, int wrapu, int wrapv)
	{
		D3D12_CPU_DESCRIPTOR_HANDLE samplerHandle = samplerheap->GetCPUDescriptorHandleForHeapStart();

		samplerHandle.ptr += (GachanMaterialTex::WRAP_NUM * wrapu + wrapv) * descriptorsize;

		return samplerHandle;
	}
	D3D12_GPU_DESCRIPTOR_HANDLE GachanD3D12Sub::GetSamplerGPUHandle(ID3D12DescriptorHeap * samplerheap, UINT descriptorsize, int wrapu, int wrapv)
	{
		D3D12_GPU_DESCRIPTOR_HANDLE samplerHandle = samplerheap->GetGPUDescriptorHandleForHeapStart();

		samplerHandle.ptr += (GachanMaterialTex::WRAP_NUM * wrapu + wrapv) * descriptorsize;

		return samplerHandle;
	}












	bool GachanD3D12Sub::CreateRootSignature(ID3D12Device* device, ID3D12RootSignature** pprootsignature)
	{
		D3D12_FEATURE_DATA_ROOT_SIGNATURE featureData = {};
#if 1
		featureData.HighestVersion = D3D_ROOT_SIGNATURE_VERSION_1_0;
#else
		// This is the highest version the sample supports. If CheckFeatureSupport succeeds, the HighestVersion returned will not be greater than this.
		featureData.HighestVersion = D3D_ROOT_SIGNATURE_VERSION_1_1;


		if (FAILED(device->CheckFeatureSupport(D3D12_FEATURE_ROOT_SIGNATURE, &featureData, sizeof(featureData))))
		{
			featureData.HighestVersion = D3D_ROOT_SIGNATURE_VERSION_1_0;
		}
#endif
		// ディスクリプタレンジの設定.
		D3D12_DESCRIPTOR_RANGE range[12];
		//UniformBufferVertex b0
		range[0].RangeType = D3D12_DESCRIPTOR_RANGE_TYPE_CBV;
		range[0].NumDescriptors = 1;
		range[0].BaseShaderRegister = 0;
		range[0].RegisterSpace = 0;
		range[0].OffsetInDescriptorsFromTableStart = D3D12_DESCRIPTOR_RANGE_OFFSET_APPEND;

		//UniformBufferPixel b0
		range[1].RangeType = D3D12_DESCRIPTOR_RANGE_TYPE_CBV;
		range[1].NumDescriptors = 1;
		range[1].BaseShaderRegister = 1;
		range[1].RegisterSpace = 0;
		range[1].OffsetInDescriptorsFromTableStart = D3D12_DESCRIPTOR_RANGE_OFFSET_APPEND;

		//t0
		range[2].RangeType = D3D12_DESCRIPTOR_RANGE_TYPE_SRV;
		range[2].NumDescriptors = 1;
		range[2].BaseShaderRegister = 0;
		range[2].RegisterSpace = 0;
		range[2].OffsetInDescriptorsFromTableStart = D3D12_DESCRIPTOR_RANGE_OFFSET_APPEND;

		//t1
		range[3].RangeType = D3D12_DESCRIPTOR_RANGE_TYPE_SRV;
		range[3].NumDescriptors = 1;
		range[3].BaseShaderRegister = 1;
		range[3].RegisterSpace = 0;
		range[3].OffsetInDescriptorsFromTableStart = D3D12_DESCRIPTOR_RANGE_OFFSET_APPEND;

		//t2
		range[4].RangeType = D3D12_DESCRIPTOR_RANGE_TYPE_SRV;
		range[4].NumDescriptors = 1;
		range[4].BaseShaderRegister = 2;
		range[4].RegisterSpace = 0;
		range[4].OffsetInDescriptorsFromTableStart = D3D12_DESCRIPTOR_RANGE_OFFSET_APPEND;

		//t6
		range[5].RangeType = D3D12_DESCRIPTOR_RANGE_TYPE_SRV;
		range[5].NumDescriptors = 1;
		range[5].BaseShaderRegister = 6;
		range[5].RegisterSpace = 0;
		range[5].OffsetInDescriptorsFromTableStart = D3D12_DESCRIPTOR_RANGE_OFFSET_APPEND;

		//t7
		range[6].RangeType = D3D12_DESCRIPTOR_RANGE_TYPE_SRV;
		range[6].NumDescriptors = 1;
		range[6].BaseShaderRegister = 7;
		range[6].RegisterSpace = 0;
		range[6].OffsetInDescriptorsFromTableStart = D3D12_DESCRIPTOR_RANGE_OFFSET_APPEND;

		//s0
		range[7].RangeType = D3D12_DESCRIPTOR_RANGE_TYPE_SAMPLER;
		range[7].NumDescriptors = 1;
		range[7].BaseShaderRegister = 0;
		range[7].RegisterSpace = 0;
		range[7].OffsetInDescriptorsFromTableStart = D3D12_DESCRIPTOR_RANGE_OFFSET_APPEND;

		//s1
		range[8].RangeType = D3D12_DESCRIPTOR_RANGE_TYPE_SAMPLER;
		range[8].NumDescriptors = 1;
		range[8].BaseShaderRegister = 1;
		range[8].RegisterSpace = 0;
		range[8].OffsetInDescriptorsFromTableStart = D3D12_DESCRIPTOR_RANGE_OFFSET_APPEND;

		//s2
		range[9].RangeType = D3D12_DESCRIPTOR_RANGE_TYPE_SAMPLER;
		range[9].NumDescriptors = 1;
		range[9].BaseShaderRegister = 2;
		range[9].RegisterSpace = 0;
		range[9].OffsetInDescriptorsFromTableStart = D3D12_DESCRIPTOR_RANGE_OFFSET_APPEND;

		//s6
		range[10].RangeType = D3D12_DESCRIPTOR_RANGE_TYPE_SAMPLER;
		range[10].NumDescriptors = 1;
		range[10].BaseShaderRegister = 6;
		range[10].RegisterSpace = 0;
		range[10].OffsetInDescriptorsFromTableStart = D3D12_DESCRIPTOR_RANGE_OFFSET_APPEND;

		//s7
		range[11].RangeType = D3D12_DESCRIPTOR_RANGE_TYPE_SAMPLER;
		range[11].NumDescriptors = 1;
		range[11].BaseShaderRegister = 7;
		range[11].RegisterSpace = 0;
		range[11].OffsetInDescriptorsFromTableStart = D3D12_DESCRIPTOR_RANGE_OFFSET_APPEND;

		// ルートパラメータの設定.
		D3D12_ROOT_PARAMETER param[12];

		//UniformBufferVertex b0
		param[0].ParameterType = D3D12_ROOT_PARAMETER_TYPE_DESCRIPTOR_TABLE;
		param[0].ShaderVisibility = D3D12_SHADER_VISIBILITY_VERTEX;
		param[0].DescriptorTable.NumDescriptorRanges = 1;
		param[0].DescriptorTable.pDescriptorRanges = &range[0];

		//UniformBufferPixel b0
		param[1].ParameterType = D3D12_ROOT_PARAMETER_TYPE_DESCRIPTOR_TABLE;
		param[1].ShaderVisibility = D3D12_SHADER_VISIBILITY_PIXEL;
		param[1].DescriptorTable.NumDescriptorRanges = 1;
		param[1].DescriptorTable.pDescriptorRanges = &range[1];

		//t0
		param[2].ParameterType = D3D12_ROOT_PARAMETER_TYPE_DESCRIPTOR_TABLE;
		param[2].ShaderVisibility = D3D12_SHADER_VISIBILITY_PIXEL;
		param[2].DescriptorTable.NumDescriptorRanges = 1;
		param[2].DescriptorTable.pDescriptorRanges = &range[2];

		//t1
		param[3].ParameterType = D3D12_ROOT_PARAMETER_TYPE_DESCRIPTOR_TABLE;
		param[3].ShaderVisibility = D3D12_SHADER_VISIBILITY_PIXEL;
		param[3].DescriptorTable.NumDescriptorRanges = 1;
		param[3].DescriptorTable.pDescriptorRanges = &range[3];

		//t2
		param[4].ParameterType = D3D12_ROOT_PARAMETER_TYPE_DESCRIPTOR_TABLE;
		param[4].ShaderVisibility = D3D12_SHADER_VISIBILITY_PIXEL;
		param[4].DescriptorTable.NumDescriptorRanges = 1;
		param[4].DescriptorTable.pDescriptorRanges = &range[4];

		//t6
		param[5].ParameterType = D3D12_ROOT_PARAMETER_TYPE_DESCRIPTOR_TABLE;
		param[5].ShaderVisibility = D3D12_SHADER_VISIBILITY_PIXEL;
		param[5].DescriptorTable.NumDescriptorRanges = 1;
		param[5].DescriptorTable.pDescriptorRanges = &range[5];

		//t7
		param[6].ParameterType = D3D12_ROOT_PARAMETER_TYPE_DESCRIPTOR_TABLE;
		param[6].ShaderVisibility = D3D12_SHADER_VISIBILITY_PIXEL;
		param[6].DescriptorTable.NumDescriptorRanges = 1;
		param[6].DescriptorTable.pDescriptorRanges = &range[6];

		//s0
		param[7].ParameterType = D3D12_ROOT_PARAMETER_TYPE_DESCRIPTOR_TABLE;
		param[7].ShaderVisibility = D3D12_SHADER_VISIBILITY_PIXEL;
		param[7].DescriptorTable.NumDescriptorRanges = 1;
		param[7].DescriptorTable.pDescriptorRanges = &range[7];

		//s1
		param[8].ParameterType = D3D12_ROOT_PARAMETER_TYPE_DESCRIPTOR_TABLE;
		param[8].ShaderVisibility = D3D12_SHADER_VISIBILITY_PIXEL;
		param[8].DescriptorTable.NumDescriptorRanges = 1;
		param[8].DescriptorTable.pDescriptorRanges = &range[8];

		//s2
		param[9].ParameterType = D3D12_ROOT_PARAMETER_TYPE_DESCRIPTOR_TABLE;
		param[9].ShaderVisibility = D3D12_SHADER_VISIBILITY_PIXEL;
		param[9].DescriptorTable.NumDescriptorRanges = 1;
		param[9].DescriptorTable.pDescriptorRanges = &range[9];

		//s6
		param[10].ParameterType = D3D12_ROOT_PARAMETER_TYPE_DESCRIPTOR_TABLE;
		param[10].ShaderVisibility = D3D12_SHADER_VISIBILITY_PIXEL;
		param[10].DescriptorTable.NumDescriptorRanges = 1;
		param[10].DescriptorTable.pDescriptorRanges = &range[10];

		//s7
		param[11].ParameterType = D3D12_ROOT_PARAMETER_TYPE_DESCRIPTOR_TABLE;
		param[11].ShaderVisibility = D3D12_SHADER_VISIBILITY_PIXEL;
		param[11].DescriptorTable.NumDescriptorRanges = 1;
		param[11].DescriptorTable.pDescriptorRanges = &range[11];

		// ルートシグニチャの設定.(AsuraSampleよりもってきた)
		D3D12_ROOT_SIGNATURE_DESC desc;
		desc.NumParameters     = _countof(param);
		desc.pParameters       = param;
		desc.NumStaticSamplers = 0;
		//desc.pStaticSamplers = &sampler;
		desc.Flags             = D3D12_ROOT_SIGNATURE_FLAG_ALLOW_INPUT_ASSEMBLER_INPUT_LAYOUT;

		ID3DBlob* signature;
		ID3DBlob* error;

		// シリアライズする.(AsuraSampleよりもってきた)
		ThrowIfFailed(D3D12SerializeRootSignature(
			&desc,
			featureData.HighestVersion,//D3D_ROOT_SIGNATURE_VERSION_1,
			&signature,
			&error));

		// ルートシグニチャを生成.
		ThrowIfFailed(device->CreateRootSignature(
			0,
			signature->GetBufferPointer(),
			signature->GetBufferSize(),
			IID_PPV_ARGS(pprootsignature)));

		if (signature) {
			signature->Release();
		}
		if (error) {
			error->Release();
		}
		return true;
	}







	static UINT VertexDescVertType(Int verttype, D3D12_INPUT_ELEMENT_DESC** vertexdesc)
	{
		UINT numelement = 0;

		switch (verttype) {
			case Gachan3DVertex::TYPE_VN:
			{
				static D3D12_INPUT_ELEMENT_DESC elements[] = {
					{ "POSITION",  0, DXGI_FORMAT_R32G32B32_FLOAT,    0, D3D12_APPEND_ALIGNED_ELEMENT, D3D12_INPUT_CLASSIFICATION_PER_VERTEX_DATA, 0 },
					{ "NORMAL",    0, DXGI_FORMAT_R32G32B32_FLOAT,    0, D3D12_APPEND_ALIGNED_ELEMENT, D3D12_INPUT_CLASSIFICATION_PER_VERTEX_DATA, 0 },
				};
				*vertexdesc = elements;
				numelement = _countof(elements);
				break;
			}
			case Gachan3DVertex::TYPE_VNUV:
			{
				static D3D12_INPUT_ELEMENT_DESC elements[] = {
					{ "POSITION",  0, DXGI_FORMAT_R32G32B32_FLOAT,    0, D3D12_APPEND_ALIGNED_ELEMENT, D3D12_INPUT_CLASSIFICATION_PER_VERTEX_DATA, 0 },
					{ "NORMAL",    0, DXGI_FORMAT_R32G32B32_FLOAT,    0, D3D12_APPEND_ALIGNED_ELEMENT, D3D12_INPUT_CLASSIFICATION_PER_VERTEX_DATA, 0 },
					{ "TEXCOORD",  0, DXGI_FORMAT_R32G32_FLOAT,       0, D3D12_APPEND_ALIGNED_ELEMENT, D3D12_INPUT_CLASSIFICATION_PER_VERTEX_DATA, 0 },
				};
				*vertexdesc = elements;
				numelement = _countof(elements);
				break;
			}

		};
		return numelement;
	}

	const D3D12_BLEND_DESC descBS_Opaque =
	{
		FALSE, // AlphaToCoverageEnable
		FALSE, // IndependentBlendEnable
		{ {
			FALSE, // BlendEnable
			FALSE, // LogicOpEnable
			D3D12_BLEND_ONE, // SrcBlend
			D3D12_BLEND_ZERO, // DestBlend
			D3D12_BLEND_OP_ADD, // BlendOp
			D3D12_BLEND_ONE, // SrcBlendAlpha
			D3D12_BLEND_ZERO, // DestBlendAlpha
			D3D12_BLEND_OP_ADD, // BlendOpAlpha
			D3D12_LOGIC_OP_NOOP,
			D3D12_COLOR_WRITE_ENABLE_ALL
		} }
	};

	const D3D12_BLEND_DESC descBS_AlphaBlend =
	{
		FALSE, // AlphaToCoverageEnable
		FALSE, // IndependentBlendEnable
		{ {
			TRUE, // BlendEnable
			FALSE, // LogicOpEnable
			D3D12_BLEND_SRC_ALPHA,//D3D12_BLEND_ONE, // SrcBlend
			D3D12_BLEND_INV_SRC_ALPHA, // DestBlend
			D3D12_BLEND_OP_ADD, // BlendOp
			D3D12_BLEND_SRC_ALPHA,//D3D12_BLEND_ONE, // SrcBlendAlpha
			D3D12_BLEND_INV_SRC_ALPHA, // DestBlendAlpha
			D3D12_BLEND_OP_ADD, // BlendOpAlpha
			D3D12_LOGIC_OP_NOOP,
			D3D12_COLOR_WRITE_ENABLE_ALL
		} }
	};

	const D3D12_BLEND_DESC descBS_Additive =
	{
		FALSE, // AlphaToCoverageEnable
		FALSE, // IndependentBlendEnable
		{ {
			TRUE, // BlendEnable
			FALSE, // LogicOpEnable
			D3D12_BLEND_SRC_ALPHA, // SrcBlend
			D3D12_BLEND_ONE, // DestBlend
			D3D12_BLEND_OP_ADD, // BlendOp
			D3D12_BLEND_SRC_ALPHA, // SrcBlendAlpha
			D3D12_BLEND_ONE, // DestBlendAlpha
			D3D12_BLEND_OP_ADD, // BlendOpAlpha
			D3D12_LOGIC_OP_NOOP,
			D3D12_COLOR_WRITE_ENABLE_ALL
		} }
	};

	const D3D12_BLEND_DESC descBS_NonPremultiplied =
	{
		FALSE, // AlphaToCoverageEnable
		FALSE, // IndependentBlendEnable
		{ {
			TRUE, // BlendEnable
			FALSE, // LogicOpEnable
			D3D12_BLEND_SRC_ALPHA, // SrcBlend
			D3D12_BLEND_INV_SRC_ALPHA, // DestBlend
			D3D12_BLEND_OP_ADD, // BlendOp
			D3D12_BLEND_SRC_ALPHA, // SrcBlendAlpha
			D3D12_BLEND_INV_SRC_ALPHA, // DestBlendAlpha
			D3D12_BLEND_OP_ADD, // BlendOpAlpha
			D3D12_LOGIC_OP_NOOP,
			D3D12_COLOR_WRITE_ENABLE_ALL
		} }
	};

	bool GachanD3D12Sub::CreatePipelineState(
		ID3D12Device* device, ID3D12RootSignature* rootsignature, 
		int shader, bool alphablend, bool depthtest,
		D3D12_CULL_MODE cullmode, ID3D12PipelineState** pppipelinestate)
	{

		const unsigned int* vertexshaderptr  = Gachan3DShader::ShaderList[shader].VSBuffer;
		SIZE_T      vertexshadersize = Gachan3DShader::ShaderList[shader].VSSize;
		const unsigned int* pixelshaderptr   = Gachan3DShader::ShaderList[shader].PSBuffer;
		SIZE_T      pixelshadersize  = Gachan3DShader::ShaderList[shader].PSSize;

		ID3DBlob* vertexShader;
		ID3DBlob* pixelShader;

		//コンパイル済みシェーダーを読み込む
		ThrowIfFailed(D3DCreateBlob(vertexshadersize, &vertexShader));
		CopyMemory(vertexShader->GetBufferPointer(), vertexshaderptr, vertexshadersize);

		ThrowIfFailed(D3DCreateBlob(pixelshadersize, &pixelShader));
		CopyMemory(pixelShader->GetBufferPointer(), pixelshaderptr, pixelshadersize);


		// 入力レイアウトの設定.
		//https://docs.microsoft.com/en-us/windows/desktop/api/d3d12/ns-d3d12-d3d12_input_element_desc
		D3D12_INPUT_ELEMENT_DESC* pInputElements = NULL;
		UINT                      numInputElements = 0;
	
		numInputElements = VertexDescVertType(Gachan3DShader::ShaderList[shader].VertType, &pInputElements);

		// ラスタライザーステートの設定.
		D3D12_RASTERIZER_DESC descRS;
		descRS.FillMode              = D3D12_FILL_MODE_SOLID;
		descRS.CullMode              = D3D12_CULL_MODE_NONE;
		descRS.FrontCounterClockwise = FALSE;
		descRS.DepthBias             = D3D12_DEFAULT_DEPTH_BIAS;
		descRS.DepthBiasClamp        = D3D12_DEFAULT_DEPTH_BIAS_CLAMP;
		descRS.SlopeScaledDepthBias  = D3D12_DEFAULT_SLOPE_SCALED_DEPTH_BIAS;
		descRS.DepthClipEnable       = TRUE;
		descRS.MultisampleEnable     = FALSE;
		descRS.AntialiasedLineEnable = FALSE;
		descRS.ForcedSampleCount     = 0;
		descRS.ConservativeRaster    = D3D12_CONSERVATIVE_RASTERIZATION_MODE_OFF;

		// レンダーターゲットのブレンド設定.
#if 0
		D3D12_RENDER_TARGET_BLEND_DESC descRTBS = {
			FALSE, FALSE,
			D3D12_BLEND_ONE,       D3D12_BLEND_ZERO,          D3D12_BLEND_OP_ADD,
			D3D12_BLEND_SRC_ALPHA, D3D12_BLEND_INV_SRC_ALPHA, D3D12_BLEND_OP_ADD,
			D3D12_LOGIC_OP_NOOP,
			D3D12_COLOR_WRITE_ENABLE_ALL
		};
		// ブレンドステートの設定.
		D3D12_BLEND_DESC descBS;
		descBS.AlphaToCoverageEnable = FALSE;
		descBS.IndependentBlendEnable = FALSE;
		for (UINT i = 0; i < D3D12_SIMULTANEOUS_RENDER_TARGET_COUNT; ++i)
		{
			descBS.RenderTarget[i] = descRTBS;
		}
#endif

		// パイプラインステートの設定.
		D3D12_GRAPHICS_PIPELINE_STATE_DESC desc = {};
		desc.InputLayout                      = { pInputElements, numInputElements };
		desc.pRootSignature                   = rootsignature;
		desc.VS = { reinterpret_cast<UINT8*>(vertexShader->GetBufferPointer()), vertexShader->GetBufferSize() };
		desc.PS = { reinterpret_cast<UINT8*>(pixelShader->GetBufferPointer()),  pixelShader->GetBufferSize() };
		desc.RasterizerState                  = descRS;
		desc.BlendState                       = (alphablend)? descBS_AlphaBlend : descBS_Opaque;
		desc.DepthStencilState.DepthEnable    = depthtest;// TRUE;
		desc.DepthStencilState.DepthFunc      = (depthtest)? D3D12_COMPARISON_FUNC_LESS_EQUAL : D3D12_COMPARISON_FUNC_ALWAYS;
		desc.DepthStencilState.DepthWriteMask = D3D12_DEPTH_WRITE_MASK_ALL;
		desc.DepthStencilState.StencilEnable  = FALSE;
		desc.SampleMask                       = UINT_MAX;
		desc.PrimitiveTopologyType            = D3D12_PRIMITIVE_TOPOLOGY_TYPE_TRIANGLE;
		desc.NumRenderTargets                 = 1;
		desc.RTVFormats[0]                    = DXGI_FORMAT_R8G8B8A8_UNORM;
		desc.DSVFormat                        = DXGI_FORMAT_D32_FLOAT;
		desc.SampleDesc.Count                 = 1;

		// パイプラインステートを生成.
		ThrowIfFailed(device->CreateGraphicsPipelineState(&desc, IID_PPV_ARGS(pppipelinestate)));

		vertexShader->Release();
		pixelShader->Release();

		return true;
	}



	bool GachanD3D12Sub::CreatePipelineStateShadowMap(
		ID3D12Device* device, ID3D12RootSignature* rootsignature,
		int shader,
		D3D12_CULL_MODE cullmode, ID3D12PipelineState** pppipelinestate)
	{

		const UInt* vertexshaderptr  = Gachan3DShader::ShaderListShadowMap[shader].VSBuffer;
		SIZE_T      vertexshadersize = Gachan3DShader::ShaderListShadowMap[shader].VSSize;

		ID3DBlob* vertexShader;

		//コンパイル済みシェーダーを読み込む
		ThrowIfFailed(D3DCreateBlob(vertexshadersize, &vertexShader));
		CopyMemory(vertexShader->GetBufferPointer(), vertexshaderptr, vertexshadersize);


		// 入力レイアウトの設定.
		//https://docs.microsoft.com/en-us/windows/desktop/api/d3d12/ns-d3d12-d3d12_input_element_desc
		D3D12_INPUT_ELEMENT_DESC* pInputElements = NULL;
		UINT                      numInputElements = 0;

		numInputElements = VertexDescVertType(Gachan3DShader::ShaderListShadowMap[shader].VertType, &pInputElements);

		// ラスタライザーステートの設定.
		D3D12_RASTERIZER_DESC descRS;
		descRS.FillMode = D3D12_FILL_MODE_SOLID;
		descRS.CullMode = D3D12_CULL_MODE_NONE;
		descRS.FrontCounterClockwise = FALSE;
		descRS.DepthBias = D3D12_DEFAULT_DEPTH_BIAS;
		descRS.DepthBiasClamp = D3D12_DEFAULT_DEPTH_BIAS_CLAMP;
		descRS.SlopeScaledDepthBias = D3D12_DEFAULT_SLOPE_SCALED_DEPTH_BIAS;
		descRS.DepthClipEnable = TRUE;
		descRS.MultisampleEnable = FALSE;
		descRS.AntialiasedLineEnable = FALSE;
		descRS.ForcedSampleCount = 0;
		descRS.ConservativeRaster = D3D12_CONSERVATIVE_RASTERIZATION_MODE_OFF;

		// レンダーターゲットのブレンド設定.
#if 0
		D3D12_RENDER_TARGET_BLEND_DESC descRTBS = {
			FALSE, FALSE,
			D3D12_BLEND_ONE,       D3D12_BLEND_ZERO,          D3D12_BLEND_OP_ADD,
			D3D12_BLEND_SRC_ALPHA, D3D12_BLEND_INV_SRC_ALPHA, D3D12_BLEND_OP_ADD,
			D3D12_LOGIC_OP_NOOP,
			D3D12_COLOR_WRITE_ENABLE_ALL
		};
		// ブレンドステートの設定.
		D3D12_BLEND_DESC descBS;
		descBS.AlphaToCoverageEnable = FALSE;
		descBS.IndependentBlendEnable = FALSE;
		for (UINT i = 0; i < D3D12_SIMULTANEOUS_RENDER_TARGET_COUNT; ++i)
		{
			descBS.RenderTarget[i] = descRTBS;
		}
#endif

		// パイプラインステートの設定.
		D3D12_GRAPHICS_PIPELINE_STATE_DESC desc = {};
		desc.InputLayout = { pInputElements, numInputElements };
		desc.pRootSignature = rootsignature;
		desc.VS = { reinterpret_cast<UINT8*>(vertexShader->GetBufferPointer()), vertexShader->GetBufferSize() };
		desc.RasterizerState = descRS;
		desc.BlendState = descBS_Opaque;
		desc.DepthStencilState.DepthEnable = TRUE;
		desc.DepthStencilState.DepthFunc = D3D12_COMPARISON_FUNC_LESS_EQUAL;
		desc.DepthStencilState.DepthWriteMask = D3D12_DEPTH_WRITE_MASK_ALL;
		desc.DepthStencilState.StencilEnable = FALSE;
		desc.SampleMask = UINT_MAX;
		desc.PrimitiveTopologyType = D3D12_PRIMITIVE_TOPOLOGY_TYPE_TRIANGLE;
		desc.NumRenderTargets = 1;
		desc.RTVFormats[0] = DXGI_FORMAT_R8G8B8A8_UNORM;
		desc.DSVFormat = DXGI_FORMAT_D32_FLOAT;
		desc.SampleDesc.Count = 1;
		desc.SampleDesc.Quality = 0;
		desc.SampleMask = UINT_MAX;

		// パイプラインステートを生成.
		ThrowIfFailed(device->CreateGraphicsPipelineState(&desc, IID_PPV_ARGS(pppipelinestate)));

		vertexShader->Release();

		return true;
	}








	//---------------------------
	//from GachanD3D12Pass
	//---------------------------


	bool GachanD3D12Sub::CreateCommandQueue(ID3D12Device* device, ID3D12CommandQueue** ppcommandqueue)
	{
		// コマンドキューを生成.
		// Describe and create the command queue.
		D3D12_COMMAND_QUEUE_DESC queueDesc = {};
		queueDesc.Flags = D3D12_COMMAND_QUEUE_FLAG_NONE;
		queueDesc.Type = D3D12_COMMAND_LIST_TYPE_DIRECT;
		ThrowIfFailed(device->CreateCommandQueue(&queueDesc, IID_PPV_ARGS(ppcommandqueue)));
		return true;
	}


	int GachanD3D12Sub::CreateSwapChain(IDXGIFactory4* factory, HWND hwnd, GachanD3D12Size size, int framecount, ID3D12CommandQueue* commandQueue, IDXGISwapChain3** ppswapchain)
	{
		// スワップチェインを生成.
	// Describe and create the swap chain.
		DXGI_SWAP_CHAIN_DESC1 swapChainDesc = {};
		swapChainDesc.BufferCount = framecount;
		swapChainDesc.Width = size.width;
		swapChainDesc.Height = size.height;
		swapChainDesc.Format = DXGI_FORMAT_R8G8B8A8_UNORM;
		swapChainDesc.BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT;
		swapChainDesc.SwapEffect = DXGI_SWAP_EFFECT_FLIP_DISCARD;
		swapChainDesc.SampleDesc.Count = 1;


		IDXGISwapChain1* swapChain1;
		ThrowIfFailed(factory->CreateSwapChainForHwnd(
			commandQueue,        // Swap chain needs the queue so that it can force a flush on it.
			hwnd,
			&swapChainDesc,
			nullptr,
			nullptr,
			&swapChain1
		));

		// This sample does not support fullscreen transitions.
		ThrowIfFailed(factory->MakeWindowAssociation(hwnd, DXGI_MWA_NO_ALT_ENTER));

		//ThrowIfFailed(swapChain.As(&m_swapChain));
		swapChain1->QueryInterface(IID_PPV_ARGS(ppswapchain));

		int frameIndex = (*ppswapchain)->GetCurrentBackBufferIndex();

		swapChain1->Release();

		return frameIndex;
	}

	UINT GachanD3D12Sub::CreateRenderTarget(ID3D12Device* device, IDXGISwapChain3* swapchain, int framecount, ID3D12Resource** ppresource, ID3D12DescriptorHeap** ppdescheap)
	{
		// Describe and create a render target view (RTV) descriptor heap.
		D3D12_DESCRIPTOR_HEAP_DESC rtvHeapDesc = {};
		rtvHeapDesc.NumDescriptors = framecount;
		rtvHeapDesc.Type = D3D12_DESCRIPTOR_HEAP_TYPE_RTV;
		rtvHeapDesc.Flags = D3D12_DESCRIPTOR_HEAP_FLAG_NONE;
		ThrowIfFailed(device->CreateDescriptorHeap(&rtvHeapDesc, IID_PPV_ARGS(ppdescheap)));

		UINT rtvDescriptorSize = device->GetDescriptorHandleIncrementSize(D3D12_DESCRIPTOR_HEAP_TYPE_RTV);

		// レンダーターゲットビューを生成
		//　リソースは、スワップチェインにあるのでそれを持ってくる。
		// Create frame resources.
		{
			D3D12_CPU_DESCRIPTOR_HANDLE rtvHandle = (*ppdescheap)->GetCPUDescriptorHandleForHeapStart();

			// Create a RTV for each frame.
			for (int n = 0; n < framecount; n++)
			{
				ThrowIfFailed(swapchain->GetBuffer(n, IID_PPV_ARGS(&ppresource[n])));
				device->CreateRenderTargetView(ppresource[n], nullptr, rtvHandle);
				//rtvHandle.Offset(1, m_rtvDescriptorSize);
				//ptr += INT64(offsetInDescriptors) * UINT64(descriptorIncrementSize);
				rtvHandle.ptr += INT64(1) * UINT64(rtvDescriptorSize);
			}
		}
		return rtvDescriptorSize;
	}

	UINT GachanD3D12Sub::CreateDepthStencil(ID3D12Device* device, GachanD3D12Size size, int framecount, ID3D12Resource** ppresource, ID3D12DescriptorHeap** ppdescheap)
	{
		//added 深度ステンシルビュー用ディスクリプタヒープの設定 (AsuraSampleよりもってきた)
		D3D12_DESCRIPTOR_HEAP_DESC dsvHeapDesc = {};
		dsvHeapDesc.NumDescriptors = framecount;
		dsvHeapDesc.Type = D3D12_DESCRIPTOR_HEAP_TYPE_DSV;
		dsvHeapDesc.Flags = D3D12_DESCRIPTOR_HEAP_FLAG_NONE;
		ThrowIfFailed(device->CreateDescriptorHeap(&dsvHeapDesc, IID_PPV_ARGS(ppdescheap)));

		UINT dsvDescriptorSize = device->GetDescriptorHandleIncrementSize(D3D12_DESCRIPTOR_HEAP_TYPE_DSV);


		//リソースをつくる
		D3D12_HEAP_PROPERTIES prop;
		GachanD3D12Sub::SetHeapProperties(D3D12_HEAP_TYPE_DEFAULT, &prop);

		D3D12_RESOURCE_DESC desc;
		GachanD3D12Sub::SetResourceDescDepthStencil(size.width, size.height, &desc);

		// クリア値の設定.
		D3D12_CLEAR_VALUE clearValue;
		clearValue.Format = DXGI_FORMAT_D32_FLOAT;
		clearValue.DepthStencil.Depth = 1.0f;
		clearValue.DepthStencil.Stencil = 0;

		// リソースを生成.
		ThrowIfFailed(device->CreateCommittedResource(
			&prop,
			D3D12_HEAP_FLAG_NONE,
			&desc,
			D3D12_RESOURCE_STATE_DEPTH_WRITE,
			&clearValue,
			IID_PPV_ARGS(ppresource)));

		// 深度ステンシルビューの設定.
		D3D12_DEPTH_STENCIL_VIEW_DESC dsvDesc = {};
		dsvDesc.Format = DXGI_FORMAT_D32_FLOAT;
		dsvDesc.ViewDimension = D3D12_DSV_DIMENSION_TEXTURE2D;
		dsvDesc.Flags = D3D12_DSV_FLAG_NONE;

		D3D12_CPU_DESCRIPTOR_HANDLE dsvHandle = (*ppdescheap)->GetCPUDescriptorHandleForHeapStart();

		// 深度ステンシルビューを生成.
		device->CreateDepthStencilView(
			(*ppresource),
			&dsvDesc,
			dsvHandle);// m_dsvHeap->GetCPUDescriptorHandleForHeapStart());

		return dsvDescriptorSize;
	}


	//see d3dxiishader.cpp
	int                         GachanD3D12Shader_GetIdleTextureIndex();
	ID3D12Resource**            GachanD3D12Shader_GetTextureResource(int idx);
	D3D12_CPU_DESCRIPTOR_HANDLE GachanD3D12Shader_GetTextureViewHandle(int idx);
	void                        GachanD3D12Shader_ReleaseTexture(int idx);


UINT GachanD3D12Sub::CreateShadowMap(ID3D12Device* device, int size, ID3D12Resource** ppresouce, ID3D12DescriptorHeap** ppdescheapShadowBuf, ID3D12DescriptorHeap** ppdescheapShadowTex)
{
	D3D12_DESCRIPTOR_HEAP_DESC dsvHeapDesc{};
	dsvHeapDesc.NumDescriptors = 1;
	dsvHeapDesc.Type = D3D12_DESCRIPTOR_HEAP_TYPE_DSV;
	dsvHeapDesc.Flags = D3D12_DESCRIPTOR_HEAP_FLAG_NONE;
	dsvHeapDesc.NodeMask = 0;
	ThrowIfFailed(device->CreateDescriptorHeap(&dsvHeapDesc, IID_PPV_ARGS(ppdescheapShadowBuf)));

#define USE_SRV_AT_DXSHADER (1)
	//ppdescheapShadowTex
	//は使われない
#if USE_SRV_AT_DXSHADER
#else
	dsvHeapDesc.Type = D3D12_DESCRIPTOR_HEAP_TYPE_CBV_SRV_UAV;
	dsvHeapDesc.Flags = D3D12_DESCRIPTOR_HEAP_FLAG_SHADER_VISIBLE;
	ThrowIfFailed(device->CreateDescriptorHeap(&dsvHeapDesc, IID_PPV_ARGS(ppdescheapShadowTex)));
#endif

	D3D12_HEAP_PROPERTIES heap_properties{};
	D3D12_RESOURCE_DESC resource_desc{};
	D3D12_CLEAR_VALUE clear_value{};
	heap_properties.Type = D3D12_HEAP_TYPE_DEFAULT;
	heap_properties.CPUPageProperty = D3D12_CPU_PAGE_PROPERTY_UNKNOWN;
	heap_properties.MemoryPoolPreference = D3D12_MEMORY_POOL_UNKNOWN;
	heap_properties.CreationNodeMask = 0;
	heap_properties.VisibleNodeMask = 0;


	resource_desc.Dimension = D3D12_RESOURCE_DIMENSION_TEXTURE2D;
	resource_desc.Width = size;
	resource_desc.Height = size;
	resource_desc.DepthOrArraySize = 1;
	resource_desc.MipLevels = 0;
	resource_desc.Format = DXGI_FORMAT_R32_TYPELESS;
	resource_desc.Layout = D3D12_TEXTURE_LAYOUT_UNKNOWN;
	resource_desc.SampleDesc.Count = 1;
	resource_desc.SampleDesc.Quality = 0;
	resource_desc.Flags = D3D12_RESOURCE_FLAG_ALLOW_DEPTH_STENCIL;

	clear_value.Format = DXGI_FORMAT_D32_FLOAT;
	clear_value.DepthStencil.Depth = 1.0f;
	clear_value.DepthStencil.Stencil = 0;

#if USE_SRV_AT_DXSHADER
	int texidx = GachanD3D12Shader_GetIdleTextureIndex();
	if (texidx == 0) {
		//error
		OutputDebugStringA("error Texture index == 0");
		while (1) {}
	}
	ppresouce = GachanD3D12Shader_GetTextureResource(texidx);
#endif
	ThrowIfFailed(device->CreateCommittedResource(
		&heap_properties,
		D3D12_HEAP_FLAG_NONE,
		&resource_desc,
		D3D12_RESOURCE_STATE_GENERIC_READ,
		&clear_value,
		IID_PPV_ARGS(ppresouce)));

	//深度バッファのビューの作成
	D3D12_DEPTH_STENCIL_VIEW_DESC dsv_desc{};
	dsv_desc.ViewDimension = D3D12_DSV_DIMENSION_TEXTURE2D;
	dsv_desc.Format = DXGI_FORMAT_D32_FLOAT;
	dsv_desc.Texture2D.MipSlice = 0;
	dsv_desc.Flags = D3D12_DSV_FLAG_NONE;
	device->CreateDepthStencilView(
		(*ppresouce),
		&dsv_desc,
		(*ppdescheapShadowBuf)->GetCPUDescriptorHandleForHeapStart());


	D3D12_SHADER_RESOURCE_VIEW_DESC resourct_view_desc{};
	resourct_view_desc.Format = DXGI_FORMAT_R32_FLOAT;
	resourct_view_desc.ViewDimension = D3D12_SRV_DIMENSION_TEXTURE2D;
	resourct_view_desc.Texture2D.MipLevels = 1;
	resourct_view_desc.Texture2D.MostDetailedMip = 0;
	resourct_view_desc.Texture2D.PlaneSlice = 0;
	resourct_view_desc.Texture2D.ResourceMinLODClamp = 0.0F;
	resourct_view_desc.Shader4ComponentMapping = D3D12_DEFAULT_SHADER_4_COMPONENT_MAPPING;
#if USE_SRV_AT_DXSHADER
	D3D12_CPU_DESCRIPTOR_HANDLE srvHandle = GachanD3D12Shader_GetTextureViewHandle(texidx);// (m_cbvSrvHeap->GetCPUDescriptorHandleForHeapStart(), 0, m_cbvSrvDescriptorSize);

	device->CreateShaderResourceView((*ppresouce), &resourct_view_desc, srvHandle);
	return texidx;
#else
	device->CreateShaderResourceView((*ppresouce), &resourct_view_desc, (*ppdescheapShadowTex)->GetCPUDescriptorHandleForHeapStart());
	return 0;
#endif

}


void GachanD3D12Sub::ReleaseShadowMap(int texidx)
{
	GachanD3D12Shader_ReleaseTexture(texidx);
}






	//---------------------------
	//from GachanD3D12Base
	//---------------------------

	static void GetHardwareAdapter(IDXGIFactory2* pFactory, IDXGIAdapter1** ppAdapter)
	{
		IDXGIAdapter1* adapter;
		*ppAdapter = nullptr;

		for (UINT adapterIndex = 0; DXGI_ERROR_NOT_FOUND != pFactory->EnumAdapters1(adapterIndex, &adapter); ++adapterIndex)
		{
			DXGI_ADAPTER_DESC1 desc;
			adapter->GetDesc1(&desc);

			if (desc.Flags & DXGI_ADAPTER_FLAG_SOFTWARE)
			{
				adapter->Release();

				// Don't select the Basic Render Driver adapter.
				// If you want a software adapter, pass in "/warp" on the command line.
				continue;
			}

			// Check to see if the adapter supports Direct3D 12, but don't create the
			// actual device yet.
			if (SUCCEEDED(D3D12CreateDevice(adapter, D3D_FEATURE_LEVEL_11_0, _uuidof(ID3D12Device), nullptr)))
			{
				break;
			}
			else {
				adapter->Release();
			}
		}

		//*ppAdapter = adapter.Detach();
		*ppAdapter = adapter;
	}

	bool GachanD3D12Sub::CreateFactory(IDXGIFactory4** ppfactory)
	{
		UINT dxgiFactoryFlags = 0;

		// デバイスを生成.
#if defined(_DEBUG)
	// Enable the debug layer (requires the Graphics Tools "optional feature").
	// NOTE: Enabling the debug layer after device creation will invalidate the active device.
		{
			ID3D12Debug* debugController;
			if (SUCCEEDED(D3D12GetDebugInterface(IID_PPV_ARGS(&debugController))))
			{
				debugController->EnableDebugLayer();

				// Enable additional debug layers.
				dxgiFactoryFlags |= DXGI_CREATE_FACTORY_DEBUG;

				debugController->Release();
			}
		}
#endif

		ThrowIfFailed(CreateDXGIFactory2(dxgiFactoryFlags, IID_PPV_ARGS(ppfactory)));

		return true;
	}

	bool GachanD3D12Sub::CreateDevice(IDXGIFactory4* factory, ID3D12Device** ppdevice)
	{
		{
			IDXGIAdapter1* hardwareAdapter = NULL;
			GetHardwareAdapter(factory, &hardwareAdapter);

			HRESULT hr = D3D12CreateDevice(
				hardwareAdapter,
				D3D_FEATURE_LEVEL_11_0,
				IID_PPV_ARGS(ppdevice)
			);
			if (hardwareAdapter) {
				hardwareAdapter->Release();
			}

			if (FAILED(hr)) {

				//WARP DEVICE
				IDXGIAdapter* warpAdapter;
				ThrowIfFailed(factory->EnumWarpAdapter(IID_PPV_ARGS(&warpAdapter)));

				ThrowIfFailed(D3D12CreateDevice(
					warpAdapter,
					D3D_FEATURE_LEVEL_11_0,
					IID_PPV_ARGS(ppdevice)
				));
				warpAdapter->Release();

				OutputDebugStringA("====USE WARP DEVICE====\n");
			}
			else {
				OutputDebugStringA("====USE HARDWARE DEVICE====\n");
			}


		}
		return true;
	}






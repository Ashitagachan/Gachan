//
// GachanD3D12Shader.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include <d3d12.h>
//#include <pix3.h>


#include "Gachan3DShader.h"
#include "Gachan3DShaderConst.h"
#include "Gachan3DObject.h"
#include "Gachan3DPass.h"

#include "GachanD3D12Sub.h"
#include "GachanD3D12Base.h"
#include "GachanD3D12Pass.h"

#include "GachanD3D12ShaderTypes.h"

#include "GachanD3D12Shader_vs_default.h"
#include "GachanD3D12Shader_ps_default.h"
#include "GachanD3D12Shader_vs_texa.h"
#include "GachanD3D12Shader_ps_texa.h"
#include "GachanD3D12Shader_vs_texn.h"
#include "GachanD3D12Shader_ps_texn.h"
#include "GachanD3D12Shader_vs_texsn.h"
#include "GachanD3D12Shader_ps_texsn.h"
#include "GachanD3D12Shader_vs_defaultNL.h"
#include "GachanD3D12Shader_ps_defaultNL.h"

#include "GachanD3D12Shader_vs_shadow_vn.h"
#include "GachanD3D12Shader_vs_shadow_vnuv.h"
#include "GachanD3D12Shader_vs_shadow_vnbtuv.h"


#define ptsz(name)   name, sizeof(name)
#define ptszNULL     NULL, 0

	//DirectX12ではこっちを使う。
	Gachan3DShader::Table Gachan3DShader::ShaderList[Gachan3DShader::SHADER_NUM] = {
		{ Gachan3DVertex::TYPE_VN,		(const unsigned int*)ptsz(vs_default),      (const unsigned int*)ptsz(ps_default)	},
		{ Gachan3DVertex::TYPE_VNUV,	(const unsigned int*)ptsz(vs_texa),         (const unsigned int*)ptsz(ps_texa)	},
		{ Gachan3DVertex::TYPE_VNBTUV,	(const unsigned int*)ptsz(vs_texn),         (const unsigned int*)ptsz(ps_texn)	},
		{ Gachan3DVertex::TYPE_VNBTUV,	(const unsigned int*)ptsz(vs_texsn),        (const unsigned int*)ptsz(ps_texsn)	},
		{ Gachan3DVertex::TYPE_VN,		(const unsigned int*)ptsz(vs_defaultNL),    (const unsigned int*)ptsz(ps_defaultNL)	},
	};

	Gachan3DShader::Table Gachan3DShader::ShaderListShadowMap[Gachan3DShader::SHADER_SHADOWMAP_NUM] = {
		//for shadow map creation
		{ Gachan3DVertex::TYPE_VN,		(const unsigned int*)ptsz(vs_shadow_vn),	(const unsigned int*)ptszNULL	},
		{ Gachan3DVertex::TYPE_VNUV,	(const unsigned int*)ptsz(vs_shadow_vnuv),	(const unsigned int*)ptszNULL	},
		{ Gachan3DVertex::TYPE_VNBTUV,	(const unsigned int*)ptsz(vs_shadow_vnbtuv),(const unsigned int*)ptszNULL	},
	};
	


	//TEXTURE
	ID3D12DescriptorHeap*       SamplerHeap;//SAMPLERのヒープ(View) MaterialTex::WRAP_NUM x MaterialTex::WRAP_NUM
	UINT                        SamplerDescriptorSize;
	//id <MTLSamplerState>      SamplerStateWRAP[MaterialTex::WRAP_NUM][MaterialTex::WRAP_NUM];//wrapu x wrapv
	D3D12_GPU_DESCRIPTOR_HANDLE SamplerState[DX3DTEX_NUM];//描画に使うヒープ(View)のハンドル
	D3D12_GPU_DESCRIPTOR_HANDLE Texture[DX3DTEX_NUM];//描画に使うヒープ(View)のハンドル

//	D3D12_CPU_DESCRIPTOR_HANDLE GachanD3D12Shader_GetSamplerViewHandle(int wrapu, int wrapv)
//	{
//		return GachanD3D12Sub::GetSamplerViewHandle(SamplerHeap, SamplerDescriptorSize, wrapu, wrapv);
//	}
	D3D12_GPU_DESCRIPTOR_HANDLE GachanD3D12Shader_GetSamplerGPUHandle(int wrapu, int wrapv)
	{
		return GachanD3D12Sub::GetSamplerGPUHandle(SamplerHeap, SamplerDescriptorSize, wrapu, wrapv);
	}



	//使用するテクスチャの最大数
	//上限の概念があるのはDirectX12対応だけ（Metalは無い）
	const static int            TextureNum = 2048;//DEFAULT 足りない場合はセットできるようにする予定
	ID3D12Resource*             TextureRes[TextureNum];
	D3D12_CPU_DESCRIPTOR_HANDLE TextureCPUStartHandle;

	//GLみたいだね。。
	int GachanD3D12Shader_GetIdleTextureIndex()
	{
		for (int idx = 1; idx < TextureNum; idx++) {
			if (TextureRes[idx] == NULL) {
				return idx;
			}
		}
		OutputDebugStringA("GachanD3D12Shader_GetIdleTextureIndex Index Over\n");
		while (1) {}
		return 0;//index == 0 はNULL扱い
	}
	ID3D12Resource** GachanD3D12Shader_GetTextureResource(int idx)
	{
		return &TextureRes[idx];
	}
	void GachanD3D12Shader_ReleaseTexture(int idx)
	{
		if (TextureRes[idx]) {
			TextureRes[idx]->Release();
			TextureRes[idx] = NULL;
		}
	}


	//最初にセットしておくテクスチャ
	//METALでは、ExistingShadowTexture(tex stage 1)とか使わなくてもセットしておくべき
	int             Texture0;
	int             Texture1;
	int             Texture2;
	int             Texture6StaticShadow;
	int             Texture7DynamicShadow;




	const static int          VertexIndexBufferNum = 2048*4;//漢字をいっぱいつくるので増やした
	ID3D12Resource*           VertexBufferRes [VertexIndexBufferNum];
	D3D12_VERTEX_BUFFER_VIEW  VertexBufferView[VertexIndexBufferNum];//ヒープではなく直接View
	ID3D12Resource*           IndexBufferRes  [VertexIndexBufferNum];
	D3D12_INDEX_BUFFER_VIEW   IndexBufferView [VertexIndexBufferNum];//ヒープではなく直接View

	//GLみたいだね。。
	int GachanD3D12Shader_GetIdleVertexBufferIndex()
	{
		for (int idx = 1; idx < VertexIndexBufferNum; idx++) {
			if (VertexBufferRes[idx] == NULL) {
				return idx;
			}
		}
		OutputDebugStringA("GachanD3D12Shader_GetIdleVertexBufferIndex Index Over\n");
		while (1) {}
		return 0;//index == 0 はNULL扱い
	}
	int GachanD3D12Shader_GetIdleIndexBufferIndex()
	{
		for (int idx = 1; idx < VertexIndexBufferNum; idx++) {
			if (IndexBufferRes[idx] == NULL) {
				return idx;
			}
		}
		OutputDebugStringA("GachanD3D12Shader_GetIdleIndexBufferIndex Index Over\n");
		while (1) {}
		return 0;//index == 0 はNULL扱い
	}
	ID3D12Resource** GachanD3D12Shader_GetVertexBufferResource(int idx)
	{
		return &VertexBufferRes[idx];
	}
	D3D12_VERTEX_BUFFER_VIEW* GachanD3D12Shader_GetVertexBufferView(int idx)
	{
		return &VertexBufferView[idx];
	}
	ID3D12Resource** GachanD3D12Shader_GetIndexBufferResource(int idx)
	{
		return &IndexBufferRes[idx];
	}
	D3D12_INDEX_BUFFER_VIEW* GachanD3D12Shader_GetIndexBufferView(int idx)
	{
		return &IndexBufferView[idx];
	}
	void GachanD3D12Shader_ReleaseVertexBuffer(int idx)
	{
		if (VertexBufferRes[idx]) {
			VertexBufferRes[idx]->Release();
			VertexBufferRes[idx] = NULL;
		}
	}
	void GachanD3D12Shader_ReleaseIndexBuffer(int idx)
	{
		if (IndexBufferRes[idx]) {
			IndexBufferRes[idx]->Release();
			IndexBufferRes[idx] = NULL;
		}
	}


    
    //PIPELINESTATE and RENDERSTATE
	D3D12_CULL_MODE CullTable[] = {
		D3D12_CULL_MODE_NONE, //0
		D3D12_CULL_MODE_FRONT,//1
		D3D12_CULL_MODE_BACK, //2
	};
	enum {
		GACHAND3D12SHADER_CULL_MODE_NONE, // CullTableのインデクス0
		GACHAND3D12SHADER_CULL_MODE_FRONT,// CullTableのインデクス1
		GACHAND3D12SHADER_CULL_MODE_BACK, // CullTableのインデクス2
		GACHAND3D12SHADER_CULL_MODE_NUM,
	};
	static int  CullMode;          //D3DXII_CULL_MODE_FRONT or BACK  
    static bool DoubleSide = false;//(DoubleSide)? D3DXII_CULL_MODE_NONE : CullMode
    static int  AlphaBlending = 1;    //0:Off 1:ON
    static int  DepthTest  = 1;    //0:Off 1:ON

	//パイプラインステート。これがDirectX12の最大の特徴
	// SHADER x ALPHABLEND(OFF/ON) x DEPTHTEST(OFF/ON) x CULLMODE(NONE/FRONT/BACK)
	ID3D12PipelineState* PipelineState[Gachan3DShader::SHADER_NUM][2][2][GACHAND3D12SHADER_CULL_MODE_NUM];
	ID3D12PipelineState* PipelineStateShadowMap[Gachan3DShader::SHADER_SHADOWMAP_NUM][GACHAND3D12SHADER_CULL_MODE_NUM];

	ID3D12RootSignature* RootSignature;

#define MERGEDRAW  (1)

#if MERGEDRAW
	static const int           MergeDrawMax = 48;//ADJUST
	static int                 MergeDrawCount = 0;

	//わかりやすいように名称はMETALと揃えています
	static const int           MergeSemaphoreNum = 3;//ADJUST
	static int                 MergeIdx = 0;

	ID3D12CommandAllocator*    MergeCommandAlloc[MergeSemaphoreNum];
	ID3D12GraphicsCommandList* MergeCommandList[MergeSemaphoreNum];

	HANDLE       MergeFenceEvent[MergeSemaphoreNum];//初期値をSIGNAL状態で作成
	ID3D12Fence* MergeFence[MergeSemaphoreNum];
	UINT64       MergeFenceValue = 1;


	//Uniform buffer
	ID3D12Resource* UniformBufferVertex;   //VertexShaderConstantALLSize全部一気に割り当てます(D3D12DynamicIndexingのサンプルみてちょ)
	UniformVertex*  UniformBufferVertexMap;
	UniformVertex*  UniformBufferVertexPtr;
	ID3D12Resource* UniformBufferPixel;    //PixelShaderConstantALLSize全部一気に割り当てます(D3D12DynamicIndexingのサンプルみてちょ)
	UniformPixel*   UniformBufferPixelMap;
	UniformPixel*   UniformBufferPixelPtr;
	UINT64          UniformBufferUse[MergeSemaphoreNum];  //0:not used   1:used

	//CONSTANTBUFFER(UniformBuffer) and SHADERRESOURCE(TEXTURE)のヒープ(View) 同じ一つのヒープにする必要あり
	ID3D12DescriptorHeap*       CbvSrvHeap;
	UINT                        CbvSrvDescriptorSize;
	UINT                        CbvSrvDescriptorNum =
		MergeSemaphoreNum * MergeDrawMax +  //UniformBufferVertexの数
		MergeSemaphoreNum * MergeDrawMax +  //UniformBufferPixelの数
		TextureNum;                            //Textureの数

	D3D12_CPU_DESCRIPTOR_HANDLE UniformBufferVertexCPUStartHandle;
	D3D12_CPU_DESCRIPTOR_HANDLE UniformBufferPixelCPUStartHandle;

	D3D12_GPU_DESCRIPTOR_HANDLE GachanD3D12Shader_GetUniformBufferVertexGPUHandle(int mergeidx, int drawidx)
	{
		D3D12_GPU_DESCRIPTOR_HANDLE handle = CbvSrvHeap->GetGPUDescriptorHandleForHeapStart();
		handle.ptr +=
			(mergeidx * MergeDrawMax + drawidx) * CbvSrvDescriptorSize;
		return handle;
	}
	D3D12_GPU_DESCRIPTOR_HANDLE GachanD3D12Shader_GetUniformBufferPixelGPUHandle(int mergeidx, int drawidx)
	{
		D3D12_GPU_DESCRIPTOR_HANDLE handle = CbvSrvHeap->GetGPUDescriptorHandleForHeapStart();
		handle.ptr +=
			(MergeSemaphoreNum * MergeDrawMax +
			(mergeidx * MergeDrawMax + drawidx)) * CbvSrvDescriptorSize;
		return handle;
	}

	D3D12_CPU_DESCRIPTOR_HANDLE GachanD3D12Shader_GetTextureViewHandle(int idx)
	{
		return GachanD3D12Sub::GetTextureViewHandle(TextureCPUStartHandle, CbvSrvDescriptorSize, idx);
	}
	D3D12_GPU_DESCRIPTOR_HANDLE GachanD3D12Shader_GetTextureGPUHandle(int idx)
	{
		D3D12_GPU_DESCRIPTOR_HANDLE handle = CbvSrvHeap->GetGPUDescriptorHandleForHeapStart();
		handle.ptr +=
			(MergeSemaphoreNum * MergeDrawMax +
				MergeSemaphoreNum * MergeDrawMax + idx) * CbvSrvDescriptorSize;
		return handle;
	}





	//need 256byte size alignment for DirectX12
#define aligned(num, align)    (((num) + ((align) - 1)) & ~((align) - 1))
	static const int VertexShaderConstantSize = aligned(sizeof(UniformVertex), 256);
	static const int  PixelShaderConstantSize = aligned(sizeof(UniformPixel), 256);

	static const int VertexShaderConstantALLSize = VertexShaderConstantSize * MergeSemaphoreNum * MergeDrawMax;
	static const int  PixelShaderConstantALLSize =  PixelShaderConstantSize * MergeSemaphoreNum * MergeDrawMax;

	void* GetUniformBufferVertexPtr(int mergeidx, int drawidx)
	{
		unsigned long long offsetunit = MergeDrawMax * mergeidx + drawidx;
		return (char*)UniformBufferVertexMap + (offsetunit * VertexShaderConstantSize);
	}
	void* GetUniformBufferPixelPtr(int mergeidx, int drawidx)
	{
		unsigned long long offsetunit = MergeDrawMax * mergeidx + drawidx;
		return (char*)UniformBufferPixelMap + (offsetunit * PixelShaderConstantSize);
	}
#else
	ID3D12CommandAllocator*    CommandAlloc;
	ID3D12GraphicsCommandList* CommandList;

	ID3D12Resource* UniformBufferVertex;
	UniformVertex*  UniformBufferVertexPtr;//mapped pointer


	//UNIFORM BUFFER(CONSTANT BUFFER) and SHADERRESOURCE(TEXTURE)のヒープ(View) 同じ一つのヒープにする必要あり
	ID3D12DescriptorHeap*       CbvSrvHeap;
	UINT                        CbvSrvDescriptorSize;
	UINT                        CbvSrvDescriptorNum = 1;

	D3D12_CPU_DESCRIPTOR_HANDLE UniformBufferVertexCPUStartHandle;

	D3D12_GPU_DESCRIPTOR_HANDLE GachanD3D12Shader_GetUniformBufferVertexGPUHandle()
	{
		D3D12_GPU_DESCRIPTOR_HANDLE handle = CbvSrvHeap->GetGPUDescriptorHandleForHeapStart();
		return handle;
	}

    
	//need 256byte size alignment for DirectX12
#define aligned(num, align)    (((num) + ((align) - 1)) & ~((align) - 1))
    static const int VertexShaderConstantSize = aligned(sizeof(UniformVertex), 256);

	static const int VertexShaderConstantALLSize = VertexShaderConstantSize * 1;
#endif

	


 
	
	//====================================================
	//====================================================
	
	
	
   
    static bool loadShaders(int shader)
    {
        if (Gachan3DShader::ShaderList[shader].VSBuffer == NULL) {
            return false;
        }
		ID3D12Device* device = GachanD3D12Base::getDevice();

		//SHADER x ALPHABLEND(OFF / ON) x DEPTHTEST(OFF / ON) x CULLMODE(NONE / FRONT / BACK)
		for (int alphablend = 0; alphablend <= 1; alphablend++) {
			for (int depthtest = 0; depthtest <= 1; depthtest++) {
				for (int cullmode = GACHAND3D12SHADER_CULL_MODE_NONE; cullmode < GACHAND3D12SHADER_CULL_MODE_NUM; cullmode++) {
					GachanD3D12Sub::CreatePipelineState(
						device, 
						RootSignature, shader, 
						(bool)alphablend, 
						(bool)depthtest, 
						CullTable[cullmode], 
						&PipelineState[shader][alphablend][depthtest][cullmode]);
				}
			}
		}
        return TRUE;
    }

	static bool loadShadersShadowMap(int shader)
	{
		if (Gachan3DShader::ShaderListShadowMap[shader].VSBuffer == NULL) {
			return false;
		}
		ID3D12Device* device = GachanD3D12Base::getDevice();

		//SHADER x CULLMODE(NONE / FRONT / BACK)
		for (int cullmode = GACHAND3D12SHADER_CULL_MODE_NONE; cullmode < GACHAND3D12SHADER_CULL_MODE_NUM; cullmode++) {
			GachanD3D12Sub::CreatePipelineStateShadowMap(
				device,
				RootSignature, shader,
				CullTable[cullmode],
				&PipelineStateShadowMap[shader][cullmode]);
		}
		return TRUE;
	}

	extern int CreateTextureColored(int width, int height, unsigned int abgr);

	
    
	void MergeDrawInit();

	bool Gachan3DShader::Create()
	{
        if (CbvSrvDescriptorSize) {
            return false;
        }
		ID3D12Device* device = GachanD3D12Base::getDevice();

		//UNIFORM BUFFER (CONSTANT BUFFER)
		CbvSrvDescriptorSize = GachanD3D12Sub::CreateDescriptorHeapCBVSRV(device, CbvSrvDescriptorNum, &CbvSrvHeap);

#if MERGEDRAW
		GachanD3D12Sub::CreateConstantBuffer(device, VertexShaderConstantALLSize, &UniformBufferVertex,(void**)&UniformBufferVertexMap);
		GachanD3D12Sub::CreateConstantBuffer(device, PixelShaderConstantALLSize,  &UniformBufferPixel, (void**)&UniformBufferPixelMap);

		UniformBufferVertexCPUStartHandle = CbvSrvHeap->GetCPUDescriptorHandleForHeapStart();

		UniformBufferPixelCPUStartHandle =
			GachanD3D12Sub::CreateConstantBufferView(
				device,
				UniformBufferVertexCPUStartHandle, CbvSrvDescriptorSize,
				UniformBufferVertex->GetGPUVirtualAddress(), VertexShaderConstantSize,
				MergeSemaphoreNum, MergeDrawMax);

		TextureCPUStartHandle =
			GachanD3D12Sub::CreateConstantBufferView(
				device,
				UniformBufferPixelCPUStartHandle, CbvSrvDescriptorSize,
				UniformBufferPixel->GetGPUVirtualAddress(), PixelShaderConstantSize,
				MergeSemaphoreNum, MergeDrawMax);

		MergeDrawInit();
#else
		GachanD3D12Sub::CreateConstantBuffer(device, VertexShaderConstantALLSize, &UniformBufferVertex, (void**)&UniformBufferVertexPtr);

		UniformBufferVertexCPUStartHandle = CbvSrvHeap->GetCPUDescriptorHandleForHeapStart();

		GachanD3D12Sub::CreateConstantBufferView(
			device,
			UniformBufferVertexCPUStartHandle, CbvSrvDescriptorSize,
			UniformBufferVertex->GetGPUVirtualAddress(), VertexShaderConstantSize,
			1, 1);

		ThrowIfFailed(device->CreateCommandAllocator(D3D12_COMMAND_LIST_TYPE_DIRECT, IID_PPV_ARGS(&CommandAlloc)));
		ThrowIfFailed(device->CreateCommandList(0, D3D12_COMMAND_LIST_TYPE_DIRECT, CommandAlloc, NULL, IID_PPV_ARGS(&CommandList)));
		CommandAlloc->SetName(L"CommandAlloc");
		CommandList->SetName(L"CommandList");
		ThrowIfFailed(CommandList->Close());
#endif

		SamplerDescriptorSize =
			GachanD3D12Sub::CreateSamplerView(device, &SamplerHeap);

		//ROOT SIGNATURE
		GachanD3D12Sub::CreateRootSignature(device, &RootSignature);

       
        for (int i = 0; i < SHADER_NUM; i++) {
            loadShaders(i);
        }
		for (Int i = 0; i < SHADER_SHADOWMAP_NUM; i++) {
			loadShadersShadowMap(i);
		}


		//最初にセットしておくテクスチャ
//METALでは、ExistingShadowTexture(tex stage 1)とか使わなくてもセットしておくべき
//Texture::Create()と同じことをする
		Texture0              = CreateTextureColored(64, 64, 0xFF900000);
		Texture1              = CreateTextureColored(64, 64, 0xFF900000);
		Texture2              = CreateTextureColored(64, 64, 0xFF900000);
		Texture6StaticShadow  = CreateTextureColored(64, 64, 0xFFFFFFFF);
		Texture7DynamicShadow = CreateTextureColored(64, 64, 0xFFFFFFFF);

		//Shader::SetTexture()と同じことをする
		Texture[DX3DTEX0_OBJECT]        = GachanD3D12Shader_GetTextureGPUHandle(Texture0);
		Texture[DX3DTEX1_SOMETHING]     = GachanD3D12Shader_GetTextureGPUHandle(Texture1);
		Texture[DX3DTEX2_SOMETHING]     = GachanD3D12Shader_GetTextureGPUHandle(Texture2);
		Texture[DX3DTEX6_STATICSHADOW]  = GachanD3D12Shader_GetTextureGPUHandle(Texture6StaticShadow);
		Texture[DX3DTEX7_DYNAMICSHADOW] = GachanD3D12Shader_GetTextureGPUHandle(Texture7DynamicShadow);


        CurShader = -1;

		for (int i = 0; i < DX3DTEX_NUM; i++) {
			//SamplerState[i] = SamplerStateWRAP[0][0];
			SamplerState[i] = GachanD3D12Shader_GetSamplerGPUHandle(0, 0);
		}
		//DRAW_WITH_SHADOWMAP SAMPLER
		int clamp_to_edge = GachanMaterialTex::wrapToIndex(GachanMaterialTex::WRAP_CLAMP_TO_EDGE);
		SamplerState[DX3DTEX7_DYNAMICSHADOW] = GachanD3D12Shader_GetSamplerGPUHandle(clamp_to_edge, clamp_to_edge);



		MatP.Clear();
		MatV.Clear();
		MatW.Clear();
		MatVP.Clear();
		MatWV.Clear();
		MatWVP.Clear();

		//glCullFace(GL_BACK);//--->[renderEncoder setCullMode:MTLCullModeBack];
		CullMode = GACHAND3D12SHADER_CULL_MODE_BACK;// MTLCullModeBack;
		SetFlipFace(true);
		SetDoubleSideFace(false);

		GachanD3D12Pass::CreateShadowMap();


		return true;
	}
	
	bool Gachan3DShader::Release()
	{
		GachanD3D12Pass::WaitForGPU();

		GachanD3D12Shader_ReleaseTexture(Texture0);
		GachanD3D12Shader_ReleaseTexture(Texture1);
		GachanD3D12Shader_ReleaseTexture(Texture2);
		GachanD3D12Shader_ReleaseTexture(Texture6StaticShadow);
		GachanD3D12Shader_ReleaseTexture(Texture7DynamicShadow);

		Texture0 = 0;
		Texture1 = 0;
		Texture2 = 0;
		Texture6StaticShadow = 0;
		Texture7DynamicShadow = 0;

		if (SamplerHeap) {
			SamplerHeap->Release();//SAMPLERのヒープ(View) MaterialTex::WRAP_NUM x MaterialTex::WRAP_NUM
			SamplerHeap = NULL;
		}


		//これらはdx::Texture/dx::Vertex等により個別にリリースされる
		//ID3D12Resource*           VertexBufferRes[VertexIndexBufferNum];
		//ID3D12Resource*           IndexBufferRes[VertexIndexBufferNum];

		for (int shader = 0; shader < Gachan3DShader::SHADER_NUM; shader++) {
			for (int alpha = 0; alpha < 2; alpha++) {
				for (int depthtest = 0; depthtest < 2; depthtest++) {
					for (int cullmode = 0; cullmode < GACHAND3D12SHADER_CULL_MODE_NUM; cullmode++) {
						//ID3D12PipelineState* PipelineState[Shader::SHADER_NUM][2][2][D3DXII_CULL_MODE_NUM];
						if (PipelineState[shader][alpha][depthtest][cullmode]) {
							PipelineState[shader][alpha][depthtest][cullmode]->Release();
							PipelineState[shader][alpha][depthtest][cullmode] = NULL;
						}
					}
				}
			}
		}
		for (int shader = 0; shader < Gachan3DShader::SHADER_SHADOWMAP_NUM; shader++) {
			for (int cullmode = 0; cullmode < GACHAND3D12SHADER_CULL_MODE_NUM; cullmode++) {
				if (PipelineStateShadowMap[shader][cullmode]) {
					PipelineStateShadowMap[shader][cullmode]->Release();
					PipelineStateShadowMap[shader][cullmode] = NULL;
				}
			}
		}

		if (RootSignature) {
			RootSignature->Release();
			RootSignature = NULL;
		}

		if (UniformBufferVertex) {//VertexShaderConstantALLSize全部一気に割り当てます(D3D12DynamicIndexingのサンプルみてちょ)
			UniformBufferVertex->Release();
			UniformBufferVertex = NULL;
		}   
		if (UniformBufferPixel) {//PixelShaderConstantALLSize全部一気に割り当てます(D3D12DynamicIndexingのサンプルみてちょ)
			UniformBufferPixel->Release();
			UniformBufferPixel = NULL;
		}
		if (CbvSrvHeap) {
			CbvSrvHeap->Release();
			CbvSrvHeap = NULL;
		}
#if MERGEDRAW
		for (int sema = 0; sema < MergeSemaphoreNum; sema++) {
			if (MergeCommandAlloc[sema]) {
				MergeCommandAlloc[sema]->Release();
				MergeCommandAlloc[sema] = NULL;
			}
			if (MergeCommandList[sema]) {
				MergeCommandList[sema]->Release();
				MergeCommandList[sema] = NULL;
			}
			if (MergeFence[sema]) {
				MergeFence[sema]->Release();
				MergeFence[sema] = NULL;
			}
		}
#else
		if (CommandList) {
			CommandList->Release();
			CommandList = NULL;
		}
		if (CommandAlloc) {
			CommandAlloc->Release();
			CommandAlloc = NULL;
		}
#endif
		return true;
	}

    
    
    
    
    
    //===============================================
	//from light
	//===============================================

    void Gachan3DShader::SetLightAmbient(const Vec& col)
	{
		Vec4 colvec;
		colvec.r = col.r;
		colvec.g = col.g;
		colvec.b = col.b;
		colvec.a = 1.0f;

		UniformBufferVertexPtr->LightAmb = colvec;
		UniformBufferPixelPtr->LightAmbPS = colvec;
	}
    
    
	void Gachan3DShader::SetLightDirection(const Vec& dir, const Vec& col)
	{
		Vec4 dirvec;
		dirvec.x = dir.x;
		dirvec.y = dir.y;
		dirvec.z = dir.z;
		dirvec.w = 1.0f;

		Vec4 colvec;
		colvec.r = col.r;
		colvec.g = col.g;
		colvec.b = col.b;
		colvec.a = 1.0f;

		UniformBufferVertexPtr->LightDir[0] = dirvec;
		UniformBufferVertexPtr->LightDCol[0] = colvec;

		UniformBufferPixelPtr->LightDirPS[0] = dirvec;
		UniformBufferPixelPtr->LightDColPS[0] = colvec;
	}

	Vec Gachan3DShader::GetLightDirection()
	{
		Vec4 vec4 = UniformBufferVertexPtr->LightDir[0];
		Vec ret;
		ret.Set(vec4.x, vec4.y, vec4.z);
		return ret;
	}

	//===============================================
	//from camera
	//===============================================
	void Gachan3DShader::SetEye(const Vec& eye)
	{
		Vec4 eyevec4;
		eyevec4.x = eye.x;
		eyevec4.y = eye.y;
		eyevec4.z = eye.z;
		eyevec4.w = 1.0f;

		UniformBufferVertexPtr->Eye = eyevec4;
		UniformBufferPixelPtr->EyePS = eyevec4;
	}

    //===============================================
	//from material
	//===============================================
    void Gachan3DShader::SetAlpha(bool b)
    {
		AlphaBlending = (b)? 1 : 0;
    }

	void Gachan3DShader::SetTexture(int stage, const GachanMaterialTex* tex)
	{
		//if (ShaderPP::isPreProcess) {
		//	return;
		//}

		if (tex) {
			if (tex->tex) {//this must be 1 tex
				if (tex->tex->tif) {
#pragma warning(push)
#pragma warning(disable: 4311)
#pragma warning(disable: 4302)
					//Texture[stage] = (__bridge id<MTLTexture>) tex->tex->tif;//(__bridge_transferを使うと解放されてしまう)
					Texture[stage] = GachanD3D12Shader_GetTextureGPUHandle((int)(tex->tex->tif));//(__bridge_transferを使うと解放されてしまう)
#pragma warning(pop)

					int wrapu = GachanMaterialTex::wrapToIndex(tex->wrapu);
					int wrapv = GachanMaterialTex::wrapToIndex(tex->wrapv);

					//SamplerState[stage] = SamplerStateWRAP[wrapu][wrapv];
					SamplerState[stage] = GachanD3D12Shader_GetSamplerGPUHandle(wrapu, wrapv);
				}
			}
		}
	}


    
	void Gachan3DShader::SetDiffuse(const Vec4& col)
	{
		UniformBufferVertexPtr->Diffuse = col;
		UniformBufferPixelPtr->DiffusePS = col;
	}

	void Gachan3DShader::SetSpecular(const Vec4& col)
	{
		UniformBufferVertexPtr->Specular = col;
		UniformBufferPixelPtr->SpecularPS = col;
	}

	void Gachan3DShader::SetShader(int shader)
	{
		CurShader = shader;
	}


	void Gachan3DShader::SetZTest(bool b)
	{
        DepthTest = (b)? 1 : 0;
	}
	
	void Gachan3DShader::SetFlipFace(bool b)
	{
		FlipFace = b;//Gachan3DShader.cpp内でShader::ChangeFlipFace()で使われているので、無視できない。

		CullMode = (b) ? GACHAND3D12SHADER_CULL_MODE_FRONT : GACHAND3D12SHADER_CULL_MODE_BACK;
	}
	
	void Gachan3DShader::SetDoubleSideFace(bool b)
	{
        DoubleSide = b;
	}

	void Gachan3DShader::SetWVPConst()
	{
		UniformBufferVertexPtr->LPMatrix = MatLP.GetTranspose();
		UniformBufferVertexPtr->WMatrix  = MatW.GetTranspose();
		UniformBufferVertexPtr->VPMatrix = MatVP.GetTranspose();
	}



#if MERGEDRAW
	void MergeDrawInit()
	{
		ID3D12Device* device = GachanD3D12Base::getDevice();

		//FENCE
		for (int sema = 0; sema < MergeSemaphoreNum; sema++) {
			ThrowIfFailed(device->CreateFence(0, D3D12_FENCE_FLAG_NONE, IID_PPV_ARGS(&MergeFence[sema])));
			MergeFenceEvent[sema] = CreateEvent(nullptr, FALSE, TRUE, nullptr);//初期値はSIGNAL状態
			if (MergeFenceEvent[sema] == nullptr)
			{
				ThrowIfFailed(HRESULT_FROM_WIN32(GetLastError()));
			}

			ThrowIfFailed(device->CreateCommandAllocator(D3D12_COMMAND_LIST_TYPE_DIRECT, IID_PPV_ARGS(&MergeCommandAlloc[sema])));
			ThrowIfFailed(device->CreateCommandList(0, D3D12_COMMAND_LIST_TYPE_DIRECT, MergeCommandAlloc[sema], NULL, IID_PPV_ARGS(&MergeCommandList[sema])));
			MergeCommandAlloc[sema]->SetName(L"MergeCommandAlloc");
			MergeCommandList[sema]->SetName(L"MergeCommandList");
			ThrowIfFailed(MergeCommandList[sema]->Close());
		}

		MergeIdx = 0;
		UniformBufferVertexPtr = (UniformVertex*)GetUniformBufferVertexPtr(MergeIdx, 0);
		UniformBufferPixelPtr  = (UniformPixel*) GetUniformBufferPixelPtr(MergeIdx, 0);
	}
	void MergeDrawCopyUniform(int mergeidx, int drawidx)
	{
		UniformVertex* vsc = UniformBufferVertexPtr;
		UniformBufferVertexPtr = (UniformVertex*)GetUniformBufferVertexPtr(mergeidx, drawidx);
		memcpy(UniformBufferVertexPtr, vsc, sizeof(UniformVertex));

		UniformPixel* psc = UniformBufferPixelPtr;
		UniformBufferPixelPtr = (UniformPixel*)GetUniformBufferPixelPtr(mergeidx, drawidx);
		memcpy(UniformBufferPixelPtr, psc, sizeof(UniformPixel));
	}
	void MergeDrawStart(bool firstdraw)
	{
		{
			//WaitForMultipleObjectsバージョン
			DWORD ret = WaitForMultipleObjects(MergeSemaphoreNum, MergeFenceEvent, FALSE, INFINITE);//どれか一つでもSIGNALになったら
			MergeIdx = ret;//retはSIGNALのインデクス MergeFenceEvent[ret]
		}

		ID3D12CommandQueue* commandQueue = GachanD3D12Pass::GetCommandQueue();
		//PIXBeginEvent(commandQueue, 0, L"MergeDrawStart");

		UniformBufferUse[MergeIdx] = MergeFenceValue;
		MergeDrawCopyUniform(MergeIdx, 0);

		ThrowIfFailed(MergeCommandAlloc[MergeIdx]->Reset());
		ThrowIfFailed(MergeCommandList[MergeIdx]->Reset(MergeCommandAlloc[MergeIdx], NULL));
		MergeDrawCount = 0;

		if (firstdraw) {
			GachanD3D12Pass::SetCommandList_ClearRenderTarget(MergeCommandList[MergeIdx]);
		}
	}

	void MergeDrawEnd()
	{
		ID3D12CommandQueue* commandQueue = GachanD3D12Pass::GetCommandQueue();

		ThrowIfFailed(MergeCommandList[MergeIdx]->Close());

		// Execute the command list.
		ID3D12CommandList* ppCommandLists[] = { MergeCommandList[MergeIdx] };
		commandQueue->ExecuteCommandLists(_countof(ppCommandLists), ppCommandLists);

		//PIXEndEvent(commandQueue);

		const UINT64 fence = UniformBufferUse[MergeIdx];// m_fenceNValue;
		ThrowIfFailed(commandQueue->Signal(MergeFence[MergeIdx], fence));
		MergeFenceValue++;

		ThrowIfFailed(MergeFence[MergeIdx]->SetEventOnCompletion(fence, MergeFenceEvent[MergeIdx]));
	}

	void Gachan3DShader::DrawIndex(const void* vbuff, int vnum, const void* ibuff, int primnum)
	{
		SetWVPConst();

		//PIXBeginEvent(MergeCommandList[ConstantIdx], 0, L"DrawIndex");

		MergeCommandList[MergeIdx]->SetGraphicsRootSignature(RootSignature);


		D3D12_VIEWPORT viewport;
		D3D12_RECT     scissorrect;
		if (Gachan3DPass::GetPass() == Gachan3DPass::DRAW_SHADOWMAP) {
			int verttype = Gachan3DShader::ShaderList[CurShader].VertType;
			MergeCommandList[MergeIdx]->SetPipelineState(PipelineStateShadowMap[verttype][CullMode]);

			D3D12_CPU_DESCRIPTOR_HANDLE dsvhandle = GachanD3D12Pass::GetShadowMapViewHandle();
			MergeCommandList[MergeIdx]->OMSetRenderTargets(0, nullptr, FALSE, &dsvhandle);

			viewport    = GachanD3D12Pass::GetShadowMapViewport();
			scissorrect = GachanD3D12Pass::GetShadowMapScissorRect();
		}
		else {
			MergeCommandList[MergeIdx]->SetPipelineState(PipelineState[CurShader][AlphaBlending][DepthTest][CullMode]);

			D3D12_CPU_DESCRIPTOR_HANDLE rtvHandle = GachanD3D12Pass::GetRenderTargetViewHandle();
			D3D12_CPU_DESCRIPTOR_HANDLE dsvhandle = GachanD3D12Pass::GetDepthStencilViewHandle();
			MergeCommandList[MergeIdx]->OMSetRenderTargets(1, &rtvHandle, FALSE, &dsvhandle);

			viewport    = GachanD3D12Pass::GetViewport();
			scissorrect = GachanD3D12Pass::GetScissorRect();
		}
		MergeCommandList[MergeIdx]->RSSetViewports(1, &viewport);
		MergeCommandList[MergeIdx]->RSSetScissorRects(1, &scissorrect);

		ID3D12DescriptorHeap* ppHeaps[] = { CbvSrvHeap, SamplerHeap };
		MergeCommandList[MergeIdx]->SetDescriptorHeaps(_countof(ppHeaps), ppHeaps);

		D3D12_GPU_DESCRIPTOR_HANDLE constantvshandle = GachanD3D12Shader_GetUniformBufferVertexGPUHandle(MergeIdx, MergeDrawCount);
		D3D12_GPU_DESCRIPTOR_HANDLE constantpshandle = GachanD3D12Shader_GetUniformBufferPixelGPUHandle(MergeIdx, MergeDrawCount);
		MergeCommandList[MergeIdx]->SetGraphicsRootDescriptorTable(0, constantvshandle);
		MergeCommandList[MergeIdx]->SetGraphicsRootDescriptorTable(1, constantpshandle);
		MergeCommandList[MergeIdx]->SetGraphicsRootDescriptorTable(2, Texture[0]);
		MergeCommandList[MergeIdx]->SetGraphicsRootDescriptorTable(3, Texture[1]);
		MergeCommandList[MergeIdx]->SetGraphicsRootDescriptorTable(4, Texture[2]);
		MergeCommandList[MergeIdx]->SetGraphicsRootDescriptorTable(5, Texture[6]);
		MergeCommandList[MergeIdx]->SetGraphicsRootDescriptorTable(6, Texture[7]);
		MergeCommandList[MergeIdx]->SetGraphicsRootDescriptorTable(7, SamplerState[0]);
		MergeCommandList[MergeIdx]->SetGraphicsRootDescriptorTable(8, SamplerState[1]);
		MergeCommandList[MergeIdx]->SetGraphicsRootDescriptorTable(9, SamplerState[2]);
		MergeCommandList[MergeIdx]->SetGraphicsRootDescriptorTable(10, SamplerState[6]);
		MergeCommandList[MergeIdx]->SetGraphicsRootDescriptorTable(11, SamplerState[7]);

#pragma warning(push)
#pragma warning(disable: 4311)
#pragma warning(disable: 4302)
		D3D12_VERTEX_BUFFER_VIEW* vbview = GachanD3D12Shader_GetVertexBufferView((int)vbuff);
		D3D12_INDEX_BUFFER_VIEW*  ibview = GachanD3D12Shader_GetIndexBufferView((int)ibuff);
#pragma warning(pop)
		MergeCommandList[MergeIdx]->IASetPrimitiveTopology(D3D_PRIMITIVE_TOPOLOGY_TRIANGLELIST);
		MergeCommandList[MergeIdx]->IASetVertexBuffers(0, 1, vbview);
		MergeCommandList[MergeIdx]->IASetIndexBuffer(ibview);

		MergeCommandList[MergeIdx]->DrawIndexedInstanced(primnum * 3, 1, 0, 0, 0);

		//PIXEndEvent(MergeCommandList[ConstantIdx]);


		MergeDrawCount++;
		if (MergeDrawCount == MergeDrawMax) {
			MergeDrawEnd();
			MergeDrawStart(false);
		}
		else {
			MergeDrawCopyUniform(MergeIdx, MergeDrawCount);
		}
	}



#else    

	//コンパイル通すだけのもの
	void MergeDrawStart(bool firstdraw)
	{
	}
	//コンパイル通すだけのもの
	void MergeDrawEnd()
	{
	}

    void Gachan3DShader::DrawIndex(const void* vbuff, int vnum, const void* ibuff, int primnum)
    {
        SetWVPConst();

		//-----------
		ID3D12CommandQueue* commandQueue = GachanD3D12Pass::GetCommandQueue();
		//PIXBeginEvent(commandQueue, 0, L"DrawIndex");

		ThrowIfFailed(CommandAlloc->Reset());
		ThrowIfFailed(CommandList->Reset(CommandAlloc, NULL));

		//PIXBeginEvent(CommandList, 0, L"DrawIndex");

		if (GachanD3D12Pass::IsFirstDraw()) {
			GachanD3D12Pass::SetCommandList_ClearRenderTarget(CommandList);
		}
		//-----------


		CommandList->SetGraphicsRootSignature(RootSignature);
		CommandList->SetPipelineState(PipelineState[CurShader][AlphaBlending][DepthTest][CullMode]);

		D3D12_CPU_DESCRIPTOR_HANDLE rtvHandle = GachanD3D12Pass::GetRenderTargetViewHandle();
		D3D12_CPU_DESCRIPTOR_HANDLE dsvhandle = GachanD3D12Pass::GetDepthStencilViewHandle();
		CommandList->OMSetRenderTargets(1, &rtvHandle, FALSE, &dsvhandle);

		D3D12_VIEWPORT viewport    = GachanD3D12Pass::GetViewport();
		D3D12_RECT     scissorrect = GachanD3D12Pass::GetScissorRect();
		CommandList->RSSetViewports(1, &viewport);
		CommandList->RSSetScissorRects(1, &scissorrect);

		ID3D12DescriptorHeap* ppHeaps[] = { CbvSrvHeap };
		CommandList->SetDescriptorHeaps(_countof(ppHeaps), ppHeaps);

		D3D12_GPU_DESCRIPTOR_HANDLE constantvshandle = GachanD3D12Shader_GetUniformBufferVertexGPUHandle();
		CommandList->SetGraphicsRootDescriptorTable(0, constantvshandle);

		D3D12_VERTEX_BUFFER_VIEW* vbview = GachanD3D12Shader_GetVertexBufferView((int)vbuff);
		D3D12_INDEX_BUFFER_VIEW*  ibview = GachanD3D12Shader_GetIndexBufferView((int)ibuff);
		CommandList->IASetPrimitiveTopology(D3D_PRIMITIVE_TOPOLOGY_TRIANGLELIST);
		CommandList->IASetVertexBuffers(0, 1, vbview);
		CommandList->IASetIndexBuffer(ibview);

		CommandList->DrawIndexedInstanced(primnum * 3, 1, 0, 0, 0);

		//PIXEndEvent(CommandList);


		//----------------------
		ThrowIfFailed(CommandList->Close());
		ID3D12CommandList* ppCommandLists[] = { CommandList };
		commandQueue->ExecuteCommandLists(_countof(ppCommandLists), ppCommandLists);
		GachanD3D12Pass::WaitForGPU();//block
		//PIXEndEvent(commandQueue);
		//----------------------
    }
#endif



    








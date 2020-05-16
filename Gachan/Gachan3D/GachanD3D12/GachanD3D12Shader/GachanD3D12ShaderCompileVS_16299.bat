
PATH "C:\Program Files\Windows Kits\10\bin\10.0.16299.0\x86"


fxc GachanD3D12ShaderVertex.hlsl /Zi /E vs_default        /Vn vs_default        /T vs_5_0 /nologo  /Fh GachanD3D12Shader_vs_default.h
fxc GachanD3D12ShaderVertex.hlsl /Zi /E vs_texa           /Vn vs_texa           /T vs_5_0 /nologo  /Fh GachanD3D12Shader_vs_texa.h
fxc GachanD3D12ShaderVertex.hlsl /Zi /E vs_texn           /Vn vs_texn           /T vs_5_0 /nologo  /Fh GachanD3D12Shader_vs_texn.h
fxc GachanD3D12ShaderVertex.hlsl /Zi /E vs_texsn          /Vn vs_texsn          /T vs_5_0 /nologo  /Fh GachanD3D12Shader_vs_texsn.h
fxc GachanD3D12ShaderVertex.hlsl /Zi /E vs_defaultNL      /Vn vs_defaultNL      /T vs_5_0 /nologo  /Fh GachanD3D12Shader_vs_defaultNL.h

fxc GachanD3D12ShaderVertex.hlsl /Zi /E vs_shadow_vn      /Vn vs_shadow_vn      /T vs_5_0 /nologo  /Fh GachanD3D12Shader_vs_shadow_vn.h
fxc GachanD3D12ShaderVertex.hlsl /Zi /E vs_shadow_vnuv    /Vn vs_shadow_vnuv    /T vs_5_0 /nologo  /Fh GachanD3D12Shader_vs_shadow_vnuv.h
fxc GachanD3D12ShaderVertex.hlsl /Zi /E vs_shadow_vnbtuv  /Vn vs_shadow_vnbtuv  /T vs_5_0 /nologo  /Fh GachanD3D12Shader_vs_shadow_vnbtuv.h

pause

PATH "C:\Program Files\Windows Kits\10\bin\10.0.16299.0\x86"


fxc GachanD3D12ShaderPixel.hlsl /Zi /E ps_default      /Vn ps_default       /T ps_5_0 /nologo  /Fh GachanD3D12Shader_ps_default.h
fxc GachanD3D12ShaderPixel.hlsl /Zi /E ps_texa         /Vn ps_texa          /T ps_5_0 /nologo  /Fh GachanD3D12Shader_ps_texa.h
fxc GachanD3D12ShaderPixel.hlsl /Zi /E ps_texn         /Vn ps_texn          /T ps_5_0 /nologo  /Fh GachanD3D12Shader_ps_texn.h
fxc GachanD3D12ShaderPixel.hlsl /Zi /E ps_texsn        /Vn ps_texsn         /T ps_5_0 /nologo  /Fh GachanD3D12Shader_ps_texsn.h
fxc GachanD3D12ShaderPixel.hlsl /Zi /E ps_defaultNL    /Vn ps_defaultNL     /T ps_5_0 /nologo  /Fh GachanD3D12Shader_ps_defaultNL.h


pause


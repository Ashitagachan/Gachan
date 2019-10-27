
PATH "C:\Program Files\Windows Kits\10\bin\10.0.16299.0\x86"


fxc GachanD3D12ShaderVertex.hlsl /Zi /E vs_default        /Vn vs_default        /T vs_5_0 /nologo  /Fh GachanD3D12Shader_vs_default.h
fxc GachanD3D12ShaderVertex.hlsl /Zi /E vs_defaultNL      /Vn vs_defaultNL      /T vs_5_0 /nologo  /Fh GachanD3D12Shader_vs_defaultNL.h


pause
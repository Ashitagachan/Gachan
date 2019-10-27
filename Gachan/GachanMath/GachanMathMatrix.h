//
// GachanMathMatrix44.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANMATHMATRIX44_H__
#define __GACHANMATHMATRIX44_H__

#include "GachanMath.h"
#include "GachanMathVector.h"



//要素3x3の行列 Matrix of elements 3x3
class GachanMathMatrix33
{
    typedef GachanMathMatrix33 Mat33;//ショートバージョン Short Version


public:
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgnu"
#pragma clang diagnostic ignored "-Wnested-anon-types"
    union {
        struct{
            Val xx, xy, xz,
                yx, yy, yz,
                zx, zy, zz;
        };
        struct{
            Val v00, v01, v02,
                v10, v11, v12,
                v20, v21, v22;
        };
        struct {
            Val _11, _12, _13,
                _21, _22, _23,
                _31, _32, _33;
        };
        Val val[3][3];
        Val val9[9];
        struct {
            Vec ex;
            Vec ey;
            Vec ez;
        };
    };
#pragma clang diagnostic pop
public:
    void         Clear(void);
    Mat33        GetTranspose(void) const;
    Val          GetDeterminant() const;
    Mat33        GetInverse() const;
};
typedef GachanMathMatrix33 Mat33;     //ショートバージョン Short Version
typedef GachanMathMatrix33 Rot;       //ショートバージョン Short Version
typedef GachanMathMatrix33 float3x3;  //シェーダーバージョン Shader Version





//要素4x4の行列 Matrix of elements 4x4
class GachanMathMatrix44
{
    typedef GachanMathMatrix44 Mat44;//ショートバージョン Short Version


public:
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgnu"
#pragma clang diagnostic ignored "-Wnested-anon-types"
    union {
        struct{
            Val xx, xy, xz, xw,
                yx, yy, yz, yw,
                zx, zy, zz, zw,
                wx, wy, wz, ww;
        };
        struct{
            Val v00, v01, v02, v03,
                v10, v11, v12, v13,
                v20, v21, v22, v23,
                v30, v31, v32, v33;
        };
        struct {
            Val _11, _12, _13, _14,
                _21, _22, _23, _24,
                _31, _32, _33, _34,
                _41, _42, _43, _44;
        };
        Val val[4][4];
        Val val16[16];
        struct {
            Vec ex; Val exw;
            Vec ey; Val eyw;
            Vec ez; Val ezw;
            Vec et; Val etw;
        };
    };
#pragma clang diagnostic pop
public:
    void         Clear(void);
    Mat44        GetTranspose(void) const;
    static Mat44 GetTranslate(Val tx, Val ty, Val tz);
    static Mat44 GetScale(Val sx, Val sy, Val sz);
    static Mat44 GetScale(Val s);
    
    Mat44        operator*(Mat44 const&) const;
    
    friend Vec   operator*(Vec const& v, Mat44 const& m)
    {
        Vec ret;
        
        ret.x = v.x*m.xx + v.y*m.yx + v.z*m.zx + m.wx;
        ret.y = v.x*m.xy + v.y*m.yy + v.z*m.zy + m.wy;
        ret.z = v.x*m.xz + v.y*m.yz + v.z*m.zz + m.wz;
        
        return ret;
    }

    //＋からー方向を向いて右回り Turn clockwise at the direction from + to -.
    void         RotateX(Val);
    void         RotateY(Val);
    void         RotateZ(Val);
    void         RotateZXY(Val rx, Val ry, Val rz);
    void         RotateYXZ(Val rx, Val ry, Val rz);
    void         RotateXYZ(Val rx, Val ry, Val rz);
    void         RotateXZY(Val rx, Val ry, Val rz);
    void         RotateYZX(Val rx, Val ry, Val rz);
    void         RotateZYX(Val rx, Val ry, Val rz);
    void         Rotate(ROTATIONORDER rotorder, Val rx, Val ry, Val rz);
        
    static Mat44 GetRotateX(Val);
    static Mat44 GetRotateY(Val);
    static Mat44 GetRotateZ(Val);
    static Mat44 GetRotate(ROTATIONORDER rotorder, Val rx, Val ry, Val rz);

};

typedef GachanMathMatrix44 Mat44;   //ショートバージョン Short Version
typedef GachanMathMatrix44 Mat;     //ショートバージョン Short Version
typedef GachanMathMatrix44 float4x4;//シェーダーバージョン Shader Version






#endif


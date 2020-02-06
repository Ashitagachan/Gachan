//
// GachanMathVector.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANMATHVECTOR_H__
#define __GACHANMATHVECTOR_H__

#include "GachanMath.h"




//要素2のベクトル Vector of 2 elements
class GachanMathVector2
{
    typedef GachanMathVector2 Vec2;  //ショートバージョン Short Version

public:
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgnu"
#pragma clang diagnostic ignored "-Wnested-anon-types"
    union {
        struct {
            Val x, y;
        };
        struct {
            Val u, v;
        };
        Val val[2];
    };
#pragma clang diagnostic pop
    void Clear(void)
    {
        x = 0.0f;
        y = 0.0f;
    }
    void   Set(Val, Val);
    Val    GetLength(void) const;
    Val    GetLength2(void) const;
    
    Vec2   GetProject(Vec2 n);//|n| = 1
    Vec2   GetReflect(Vec2 n);//|n| = 1
    Vec2   GetAbsorb(Vec2 n);//|n| = 1
    
    bool   SetLength(Val length);
    bool   SetUnit(void);
    
    Vec2   operator-(void) const;
    Vec2   operator+(void) const;
    Vec2   operator*(Val) const;
    Vec2   operator/(Val) const;

    friend Vec2    operator*(Val s, Vec2 const& v)
    {
        return v*s;
    }

    Val    operator^(Vec2 const&) const;
    Val    operator*(Vec2 const&) const;
    Vec2   operator+(Vec2 const&) const;
    Vec2   operator-(Vec2 const&) const;
    
    Vec2&  operator*=(Val);
    Vec2&  operator/=(Val);
    Vec2&  operator+=(Vec2 const&);
    Vec2&  operator-=(Vec2 const&);

};

typedef GachanMathVector2 Vec2;  //ショートバージョン Short Version
typedef GachanMathVector2 float2;//シェーダーバージョン Shader Version

extern const Vec2 Vec2ZERO;

inline void    Vec2::Set(Val _x, Val _y)
{
    x = _x; y = _y;
}

inline Val Vec2::GetLength() const
{
    return (Val) sqrtf(x*x + y*y);
}

inline Val Vec2::GetLength2() const
{
    return x*x + y*y;
}
inline bool Vec2::SetLength(Val length)
{
    if (SetUnit()) {
        *this *= length;
        return true;
    }
    return false;
}
inline Vec2 Vec2::GetProject(Vec2 n)
{
    Val dot = (*this)^n;
    return dot * n;
}
inline Vec2 Vec2::GetReflect(Vec2 n)
{
    Vec2 project = GetProject(n);
    return *(this) - 2*project;
}
inline Vec2 Vec2::GetAbsorb(Vec2 n)
{
    Vec2 project = GetProject(n);
    return *(this) - project;
}


inline Val Vec2::operator^( Vec2 const& v ) const
{
    return x * v.x + y * v.y;
}

inline Val Vec2::operator*( Vec2 const& v ) const
{
    return x * v.y - y * v.x;
}

inline Vec2 Vec2::operator-(void) const
{
    Vec2 ret = {-x, -y};
    
    return ret;
}
inline Vec2 Vec2::operator+(void) const
{
    return *this;
}
inline Vec2 Vec2::operator*(Val s) const
{
    Vec2 ret = {x*s, y*s};
    
    return ret;
}
inline Vec2 Vec2::operator/(Val s) const
{
    Vec2 ret = {x/s, y/s};
    
    return ret;
}


inline Vec2 Vec2::operator+(Vec2 const& v) const
{
    Vec2 ret = { x + v.x, y + v.y };
    
    return ret;
}
inline Vec2 Vec2::operator-(Vec2 const& v) const
{
    Vec2 ret;
    
    ret.x = x - v.x;
    ret.y = y - v.y;
    
    return ret;
}


inline Vec2& Vec2::operator+=(Vec2 const& v)
{
    x += v.x;
    y += v.y;
    
    return *this;
}
inline Vec2& Vec2::operator-=(Vec2 const& v)
{
    x -= v.x;
    y -= v.y;
    
    return *this;
}
inline Vec2& Vec2::operator*=(Val s)
{
    x *= s;
    y *= s;
    
    return *this;
}
inline Vec2& Vec2::operator/=(Val s)
{
    x /= s;
    y /= s;
    
    return *this;
}









//要素3のベクトル Vector of 3 elements
class GachanMathVector3
{
    typedef GachanMathVector3 Vec;//ショートバージョン Short Version

public:
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgnu"
#pragma clang diagnostic ignored "-Wnested-anon-types"
    union {
        struct {
            Val x, y, z;
        };
        struct {
            Val r, g, b;
        };
        Val val[3];
    };
#pragma clang diagnostic pop
    void    Clear(void)
    {
        x = 0.0f;
        y = 0.0f;
        z = 0.0f;
    }
    void   Set(Val, Val, Val);
    Val    GetLength(void) const;
    Val    GetLength2(void) const;
    
    Vec    GetProject(Vec n);//|n| = 1
    Vec    GetReflect(Vec n);//|n| = 1
    Vec    GetAbsorb(Vec n);//|n| = 1

    bool   SetLength(Val length);
    bool   SetUnit(void);

    Vec    operator-(void) const;
    Vec    operator+(void) const;
    Vec    operator*(Val) const;
    Vec    operator/(Val) const;
    
    friend Vec    operator*(Val s, Vec const& v)
    {
        return v*s;
    }
    
    Val    operator^(Vec const&) const;
    Vec    operator*(Vec const&) const;
    Vec    operator+(Vec const&) const;
    Vec    operator-(Vec const&) const;

    Vec&   operator*=(Val);
    Vec&   operator/=(Val);
    Vec&   operator+=(Vec const&);
    Vec&   operator-=(Vec const&);    
};

typedef GachanMathVector3 Vec;   //ショートバージョン Short Version
typedef GachanMathVector3 Vec3;  //ショートバージョン Short Version
typedef GachanMathVector3 float3;//シェーダーバージョン Shader Version

extern const Vec  VecZERO;
extern const Vec3 Vec3ZERO;

inline void    Vec::Set(Val _x, Val _y, Val _z)
{
    x = _x; y = _y; z = _z;
}

inline Val Vec::GetLength() const
{
    return (Val) sqrtf(x*x + y*y + z*z);
}

inline Val Vec::GetLength2() const
{
    return x*x + y*y + z*z;
}

inline bool Vec::SetLength(Val length)
{
    if (SetUnit()) {
        *this *= length;
        return true;
    }
    return false;
}
inline Vec Vec::GetProject(Vec n)
{
    Val dot = (*this)^n;
    return dot * n;
}
inline Vec Vec::GetReflect(Vec n)
{
    Vec project = GetProject(n);
    return *(this) - 2*project;
}
inline Vec Vec::GetAbsorb(Vec n)
{
    Vec project = GetProject(n);
    return *(this) - project;
}


inline Val Vec::operator^( Vec const& v ) const
{
    return x * v.x + y * v.y + z * v.z;
}

inline Vec Vec::operator*( Vec const& v ) const
{
    Vec ret;
    ret.x = y * v.z - z * v.y;
    ret.y = z * v.x - x * v.z;
    ret.z = x * v.y - y * v.x;
    return ret;
}

inline Vec Vec::operator-(void) const
{
    Vec ret = {-x, -y, -z};
    
    return ret;
}

inline Vec Vec::operator+(void) const
{
    return *this;
}

inline Vec Vec::operator+(Vec const& v) const
{
    Vec ret = {x + v.x, y + v.y, z + v.z};
    
    return ret;
}

inline Vec Vec::operator-(Vec const& v) const
{
    Vec ret;
    
    ret.x = x - v.x;
    ret.y = y - v.y;
    ret.z = z - v.z;
    
    return ret;
}

inline Vec Vec::operator*(Val s) const
{
    Vec ret = {x*s, y*s, z*s};
    
    return ret;
}

inline Vec Vec::operator/(Val s) const
{
    Vec ret = {x/s, y/s, z/s};
    
    return ret;
}

inline Vec& Vec::operator+=(Vec const& v)
{
    x += v.x;
    y += v.y;
    z += v.z;
    
    return *this;
}

inline Vec& Vec::operator-=(Vec const& v)
{
    x -= v.x;
    y -= v.y;
    z -= v.z;
    
    return *this;
}

inline Vec& Vec::operator*=(Val s)
{
    x *= s;
    y *= s;
    z *= s;
    
    return *this;
}

inline Vec& Vec::operator/=(Val s)
{
    x /= s;
    y /= s;
    z /= s;
    
    return *this;
}









//要素4のベクトル Vector of 4 elements
class GachanMathVector4
{
public:
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgnu"
#pragma clang diagnostic ignored "-Wnested-anon-types"
    union {
        struct {
            Val x, y, z, w;
        };
        struct {
            Val r, g, b, a;
        };
        Val val[4];
    };
#pragma clang diagnostic pop
    void Clear(void)
    {
        x = 0.0f;
        y = 0.0f;
        z = 0.0f;
        w = 0.0f;
    }

    void Set(Val _x, Val _y, Val _z, Val _w)
    {
        x = _x;
        y = _y;
        z = _z;
        w = _w;
    }
};

typedef GachanMathVector4 Vec4;  //ショートバージョン Short Version
typedef GachanMathVector4 float4;//シェーダーバージョン Shader Version

extern const Vec4 Vec4ZERO;



#endif

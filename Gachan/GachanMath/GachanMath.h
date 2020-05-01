//
// GachanMath.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANMATH_H__
#define __GACHANMATH_H__

#include <math.h>
#include <float.h>


typedef float                 GachanMathValue32;
typedef GachanMathValue32     Val;//ショートバージョン Short Version
typedef GachanMathValue32     Val32;
#define                       ValMAX  (FLT_MAX)
#define                       ValMIN  (FLT_MIN)

typedef double                GachanMathValue64;
typedef GachanMathValue64     Val64;//ショートバージョン Short Version

typedef char                  Char;
typedef short                 Short;
typedef int                   Int;
typedef char                  Int8;
typedef short                 Int16;
typedef int                   Int32;
typedef long long             Int64;

typedef unsigned char         UChar;
typedef unsigned short        UShort;
typedef unsigned int          UInt;
typedef unsigned char         UInt8;
typedef unsigned short        UInt16;
typedef unsigned int          UInt32;
typedef unsigned long long    UInt64;

typedef void                  Void;

#define KILO                  (1024)
#define MEGA                  (KILO * KILO)
#define GIGA                  (MEGA * KILO)

//Val型のゼロ判定用の値  ZERO detection value for Val type
#define                       ValZERO  ((Val)0.000002)
#define                       Val_Zero ValZERO


//パイ pi
#define PI                   ((Val)3.1415926535897932384626433832795)
#define PI2                  ((Val)(3.1415926535897932384626433832795*2.0))




//度からラジアンへ変換 Convert from DEGREE to RADIAN
#define RADIAN(degree)       ((Val)(PI * ((Val)(degree))/180.0))

//ラジアンから度へ変換 Convert from RADIAN to DEGREE
#define DEGREE(radian)       ((Val)(180.0 * ((Val)(radian))/PI))

#ifndef MAX
#define MAX(a, b) ((a) > (b) ? (a) : (b))
#define MIN(a, b) ((a) < (b) ? (a) : (b))
#endif



inline Val CLAMP(Val n, Val min, Val max)
{
    if (n > max) {
        return max;
    }
    if (n < min) {
        return min;
    }
    return n;
}

inline Val LERP(Val a, Val b, Val k)
{
    return a + (b - a) * k;
}
inline Val Lerp(Val a, Val b, Val k)
{
    return a + (b - a) * k;
}




//回転順序 Rotation Order for Matrix44 and Quaternion
enum ROTATIONORDER {
    NONE = 0,
    XYZ,
    YZX,
    ZXY,
    XZY,
    YXZ,
    ZYX,
    QUATERNION,
    NUM,
};
//ショートバージョン Short Version
typedef ROTATIONORDER RO;
#define RO_NONE ROTATIONORDER::NONE
#define RO_XYZ  ROTATIONORDER::XYZ
#define RO_YZX  ROTATIONORDER::YZX
#define RO_ZXY  ROTATIONORDER::ZXY
#define RO_XZY  ROTATIONORDER::XZY
#define RO_YXZ  ROTATIONORDER::YXZ
#define RO_ZYX  ROTATIONORDER::ZYX
#define RO_QUAT ROTATIONORDER::QUATERNION
#define RO_NUM  ROTATIONORDER::NUM





class GachanMath
{
public:
    static void Create();
    static void Release();
    
    //aからbの間でランダムValを生成する Generate random Val between a and b.
    static Val RandomVal(Val a, Val b);
    
    //aからbの間でランダムintを生成する Generate random int between a and b.
    static Int RandomInt(Int a, Int b);

    
    static Val Sin(Val rad);//テーブル参照sin Table reference sin
    static Val Cos(Val rad);//テーブル参照cos Table reference cos
    
    static void Test();
};
typedef GachanMath Math;//short version



#endif

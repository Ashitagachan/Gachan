//
// GachanMathVector.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "GachanMathVector.h"
#include "GachanMathMatrix.h"

const Vec2 Vec2ZERO = {(Val)0.0, (Val)0.0};
const Vec3 Vec3ZERO = {(Val)0.0, (Val)0.0, (Val)0.0};
const Vec3 Vec_Zero = {(Val)0.0, (Val)0.0, (Val)0.0};
const Vec  VecZERO  = {(Val)0.0, (Val)0.0, (Val)0.0};
const Vec4 Vec4ZERO = {(Val)0.0, (Val)0.0, (Val)0.0, (Val)0.0};

bool Vec2::SetUnit(void)
{
    Val length2 = GetLength2();
    
    if (length2 > ValZERO) {
        *this /= (Val) sqrt(length2);
        return true;
    }
    return false;
}


bool Vec::SetUnit(void)
{
    Val length2 = GetLength2();
    
    if (length2 > ValZERO) {
        *this /= (Val) sqrt(length2);        
        return true;
    }
    return false;
}




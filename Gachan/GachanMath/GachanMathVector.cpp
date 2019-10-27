//
// GachanMathVector.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "GachanMathVector.h"
#include "GachanMathMatrix.h"



bool Vec::Unit(void)
{
    Val length2 = Length2();
    
    if (length2 > ValZERO) {
        *this /= (Val) sqrt(length2);        
        return true;
    }
    return false;
}




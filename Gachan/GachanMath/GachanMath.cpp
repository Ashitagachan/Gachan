//
// GachanMath.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "GachanMath.h"
#include <stdlib.h>

namespace Math
{
//-----------------------
//Random
//-----------------------
Val RandomVal(Val a, Val b)
{
    Val r = (Val)(rand() % 10000) / 10000.0f;//r = 0->1.0
    Val w = b - a;
    r = (w * r) + a;
    return r;
}

Int RandomInt(Int  a, Int b)
{
    int r = rand();
    int w = b - a + 1;
    r = (r % w) + a;
    return r;
}


//-----------------------
//SinT CosT
//-----------------------
const static int DivideNum = 256;
const static Val DivideOne = PI*0.5f / ((Val)DivideNum);
static Val SinTable[DivideNum];

static void CreateSinCosTable()
{
    for (int i = 0; i < DivideNum; i++) {
        SinTable[i] = (Val)sin(DivideOne * (Val)i);
    }
}

static void SinCosDifferenceTest()
{
    //-----------------
    //DIFFERENCE TEST
    //-----------------
    //printf("------SINCOS TABLE DIFFERENCE TEST---------\n");
#if 1
    //DivideNum == 256
    Val start = -PI2 * 100.0f;
    Val end   =  PI2 * 100.0f;
    Val step  =  DivideOne * 0.125f;
    Val maxdiff = (Val)0.00005;
#endif
    
    for (Val rad = start; rad <= end; rad += step) {
        Val s  = (Val)sin(rad);
        Val st = Sin(rad);
        //printf("%f %f %f %f\n", rad, s, st, st - s);
        
        if (fabs(st - s) > maxdiff) {
            //printf("SinCosTableTest OVER DIFFERENCE");
            while (1) {}
        }
    }
}
Val Sin(Val x)
{
    Val sign = 1.0f;
    if (x < 0.0f) {
        // return -SinT(-x);
        sign = -1.0f;
        x = -x;
    }
    
    Val f, frac;
    
    f = (Val)floor(x / PI2);
    frac = x - (f * PI2);
    
    Val zone = (Val)floor(frac / (PI*0.5f));
    if (zone < 0.0) {
        return 0.0f;
    }
    if (zone >= 4.0) {
        return 0.0f;
    }
    
    frac = frac - (zone * (PI*0.5f));
    
    f = (Val)floor(frac / DivideOne);
    frac = frac - (f * DivideOne);
    
    Val a = 0.0f;
    Val b = 0.0f;
    
    switch ((int)zone) {
        case 0:
            a = SinTable[(int)f];
            b = (((int)f + 1) == DivideNum)? 1.0f : SinTable[(int)f + 1];
            break;
        case 1:
            a = (((int)f) == 0)? 1.0f : SinTable[DivideNum - (int)f];
            b = SinTable[DivideNum - ((int)f + 1)];
            break;
        case 2://minus case 0
            a = -SinTable[(int)f];
            b = (((int)f + 1) == DivideNum)? -1.0f : -SinTable[(int)f + 1];
            break;
        case 3://minus case 1
            a = (((int)f) == 0)? -1.0f : -SinTable[DivideNum - (int)f];
            b = -SinTable[DivideNum - ((int)f + 1)];
            break;
    }
    
    //Linear Interpolation
    Val LI = frac / DivideOne * (b - a) + a;
    
    return sign * LI;
}

Val Cos(Val x)
{
    return Sin(x + PI*0.5f);
}



}




void GachanMath::Test()
{
    SinCosDifferenceTest();
}

void GachanMath::Create()
{
    CreateSinCosTable();
    
    //Test();
}

void GachanMath::Release()
{
    
}

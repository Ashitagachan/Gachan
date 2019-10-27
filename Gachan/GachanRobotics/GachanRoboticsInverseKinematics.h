//
// GachanRoboticsInverseKinematics.h source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANROBOTICSINVERSEKINEMATICS_H__
#define __GACHANROBOTICSINVERSEKINEMATICS_H__


#include "GachanMathVector.h"


//----------------------------
// RA1共通返却値
//----------------------------
class GachanRoboticsIK_RA1_Return
{
public:
    Val determinant;
    Val dpSxangle;
    Val dpSangle;
    Val dpEangle;
};


//----------------------------
//逆運動学2D2自由度 InverseKinematics RA1_2D2DOF
//
//解説はこちら。 Explanation is here.
//----------------------------
class GachanRoboticsIK_RA1_2D2DOF
{
public:
    static Vec2 GetPosition(Val tE, Val pEangle, Val tS, Val pSangle);
    
    static GachanRoboticsIK_RA1_Return SolveIK(    Val tE, Val pEangle, Val tS, Val pSangle, Vec2 diff);
};



//----------------------------
//逆運動学3D3自由度 InverseKinematics RA1_3D3DOF
//
//解説はこちら。 Explanation is here.
//----------------------------
class GachanRoboticsIK_RA1_3D3DOF
{
public:
    static Vec3 GetPosition(Val tE, Val pEangle, Val tS, Val pSangle, Val pSxangle);
    
    static GachanRoboticsIK_RA1_Return SolveIK(    Val tE, Val pEangle, Val tS, Val pSangle, Val pSxangle, Vec3 diff);
};





#endif






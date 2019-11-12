//
// GachanGameInverseKinematics.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#ifndef __GACHANGAMEINVERSEKINEMATICS_H__
#define __GACHANGAMEINVERSEKINEMATICS_H__

#include "GachanRoboticsInverseKinematics.h"


//----------------------------
// RA1共通返却値
//----------------------------

class GachanGameIK_RA1_Return
{
public:
    bool update;
    Val  determinant;
    Val  pSxangle;
    Val  pSangle;
    Val  pEangle;
    Vec2 position2D;
    Vec3 position3D;
};


//----------------------------
//逆運動学2D2自由度 InverseKinematics RA1_2D2DOF
//
//解説はこちら。 Explanation is here.
// https://youtu.be/ekmjw9ni0_I
//----------------------------
class GachanGameIK_RA1_2D2DOF : public GachanRoboticsIK_RA1_2D2DOF
{
public:
    Val  detlimit;
    Val  tE;
    Val  tS;
    Vec2 ikposition;
    GachanGameIK_RA1_Return ret;

    //return initial position
    //DeterminantLimitは、実際動かしてどのくらいか調整する必要がある(Gachanデモでは1)
    //DeterminantLimit needs to be adjusted at each application.
    Vec2 SetIK(Val TxE, Val RzE, Val TxS, Val RzS, Val DeterminantLimit);
        
    GachanGameIK_RA1_Return GetIK(Vec2 pos);
};




//----------------------------
//逆運動学3D3自由度 InverseKinematics RA1_3D3DOF
//
//解説はこちら。 Explanation is here.
// https://youtu.be/Ndhk7VYiQ9I
//----------------------------
class GachanGameIK_RA1_3D3DOF : public GachanRoboticsIK_RA1_3D3DOF
{
public:
    Val  detlimit;
    Val  tE;
    Val  tS;
    Vec3 ikposition;
    GachanGameIK_RA1_Return ret;

    //return initial position
    //DeterminantLimitは、実際動かしてどのくらいか調整する必要がある(Gachanデモでは7)
    //DeterminantLimit needs to be adjusted at each application.
    Vec3 SetIK(Val TxE, Val RzE, Val TxS, Val RzS, Val RxS, Val DeterminantLimit);
    
    GachanGameIK_RA1_Return GetIK(Vec3 pos);

};





#endif

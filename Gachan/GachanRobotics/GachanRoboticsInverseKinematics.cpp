//
// GachanRoboticsInverseKinematics.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "GachanRoboticsInverseKinematics.h"
#include "GachanMath.h"
#include "GachanMathMatrix.h"


Vec2 GachanRoboticsIK_RA1_2D2DOF::GetPosition(Val tE, Val pEangle, Val tS, Val pSangle)
{
    Val cS = GachanMath::Cos(pSangle);
    Val sS = GachanMath::Sin(pSangle);
    Val cE = GachanMath::Cos(pEangle);
    Val sE = GachanMath::Sin(pEangle);
    
    Vec2 ret;
    ret.x =  tE*cE*cS+tS*cS-tE*sE*sS;
    ret.y =  tE*cE*sS+tS*sS+tE*sE*cS;
    return ret;
}

GachanRoboticsIK_RA1_Return GachanRoboticsIK_RA1_2D2DOF::SolveIK(Val tE, Val pEangle, Val tS, Val pSangle, Vec2 diff)
{
    Val cS = GachanMath::Cos(pSangle);
    Val sS = GachanMath::Sin(pSangle);
    Val cE = GachanMath::Cos(pEangle);
    Val sE = GachanMath::Sin(pEangle);

    Val a = -tE*cE*sS-tS*sS-tE*sE*cS;
    Val b = -tE*sE*cS      -tE*cE*sS;

    Val c =  tE*cE*cS+tS*cS-tE*sE*sS;
    Val d = -tE*sE*sS      +tE*cE*cS;
    
    Val determinant = a*d - b*c;
    
    GachanRoboticsIK_RA1_Return ret;
    ret.determinant = determinant;
    if (fabs(determinant) > ValZERO) {
        Val det_inv = 1.0f/determinant;
        ret.dpSangle = det_inv * ( d*diff.x - b*diff.y);
        ret.dpEangle = det_inv * (-c*diff.x + a*diff.y);
    }
    return ret;
}


Vec3 GachanRoboticsIK_RA1_3D3DOF::GetPosition(Val tE, Val pEangle, Val tS, Val pSangle, Val pSxangle)
{
    Val cSx = GachanMath::Cos(pSxangle);
    Val sSx = GachanMath::Sin(pSxangle);
    Val cS  = GachanMath::Cos(pSangle);
    Val sS  = GachanMath::Sin(pSangle);
    Val cE  = GachanMath::Cos(pEangle);
    Val sE  = GachanMath::Sin(pEangle);

    Vec3 ret;
    ret.x = tE*cE*cS+tS*cS-tE*sE*sS;
    ret.y = cSx*tE*cE*sS+cSx*tS*sS+cSx*tE*sE*cS;
    ret.z = sSx*tE*cE*sS+sSx*tS*sS+sSx*tE*sE*cS;
    return ret;
}
    
GachanRoboticsIK_RA1_Return GachanRoboticsIK_RA1_3D3DOF::SolveIK(    Val tE, Val pEangle, Val tS, Val pSangle, Val pSxangle, Vec3 diff)
{
    Val cSx = GachanMath::Cos(pSxangle);
    Val sSx = GachanMath::Sin(pSxangle);
    Val cS  = GachanMath::Cos(pSangle);
    Val sS  = GachanMath::Sin(pSangle);
    Val cE  = GachanMath::Cos(pEangle);
    Val sE  = GachanMath::Sin(pEangle);

    Mat33 J;
    
    J.xx = 0.0;
    J.xy = -tE*cE*sS-tS*sS-tE*sE*cS;
    J.xz = -tE*sE*cS      -tE*cE*sS;

    J.yx = -sSx*tE*cE*sS-sSx*tS*sS-sSx*tE*sE*cS;
    J.yy =  cSx*tE*cE*cS+cSx*tS*cS-cSx*tE*sE*sS;
    J.yz = -cSx*tE*sE*sS          +cSx*tE*cE*cS;
    
    J.zx =  cSx*tE*cE*sS+cSx*tS*sS+cSx*tE*sE*cS;
    J.zy =  sSx*tE*cE*cS+sSx*tS*cS-sSx*tE*sE*sS;
    J.zz = -sSx*tE*sE*sS          +sSx*tE*cE*cS;
    
    Val determinant = J.GetDeterminant();
        
    GachanRoboticsIK_RA1_Return ret;
    ret.determinant = determinant;
    if (fabs(determinant) > ValZERO) {
        Mat33 invJ = J.GetInverse();
        
        ret.dpSxangle = invJ.xx * diff.x + invJ.xy * diff.y + invJ.xz * diff.z;
        ret.dpSangle  = invJ.yx * diff.x + invJ.yy * diff.y + invJ.yz * diff.z;
        ret.dpEangle  = invJ.zx * diff.x + invJ.zy * diff.y + invJ.zz * diff.z;
    }
    return ret;
}

//
// GachanGameInverseKinematics.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "GachanGameInverseKinematics.h"
#include "GachanGame.h"



Vec2 GachanGameIK_RA1_2D2DOF::SetIK(Val TxE, Val RzE, Val TxS, Val RzS, Val DeterminantLimit)
{
    tE          = TxE;
    ret.pEangle = RzE;
    tS          = TxS;
    ret.pSangle = RzS;
    detlimit    = DeterminantLimit;
    
    ikposition = GetPosition(tE, ret.pEangle, tS, ret.pSangle);
    
    return ikposition;
}

GachanGameIK_RA1_Return GachanGameIK_RA1_2D2DOF::GetIK(Vec2 pos)
{
    ret.update = false;
    
    Vec2 diff = pos - ikposition;

    GachanRoboticsIK_RA1_Return ikret = SolveIK(tE, ret.pEangle, tS, ret.pSangle, diff);
    
    if (fabs(ikret.determinant) > detlimit) {
        
        Val nextpSangle = ret.pSangle + ikret.dpSangle;
        Val nextpEangle = ret.pEangle + ikret.dpEangle;
        
        //次の姿勢が有効かdeterminantをチェックする Check determinant if next posture is valid.
        GachanRoboticsIK_RA1_Return ikret2 = SolveIK(tE, nextpEangle, tS, nextpSangle, diff);//determinantはdiffと無関係
        if (fabs(ikret2.determinant) > detlimit) {
            //次の姿勢でまだ動けるので更新する Update because arm can still move in the next posture.
            ret.update      = true;
            ret.determinant = ikret.determinant;
            ret.pSangle     = nextpSangle;
            ret.pEangle     = nextpEangle;
            ret.position2D  = pos;
            ikposition = GetPosition(tE, ret.pEangle, tS, ret.pSangle);
            
            //GachanGame::Log("update pos %.2f %.2f diff %.2f %.2f ang %.2f %.2f\n", pos.x, pos.y, diff.x, diff.y, ret.pSangle, ret.pEangle);
        }
        else {
            //NO UPDATE
        }
    }
    else {
        //NO UPDATE
    }
    return ret;
}







Vec3 GachanGameIK_RA1_3D3DOF::SetIK(Val TxE, Val RzE, Val TxS, Val RzS, Val RxS, Val DeterminantLimit)
{
    tE           = TxE;
    ret.pEangle  = RzE;
    tS           = TxS;
    ret.pSangle  = RzS;
    ret.pSxangle = RxS;
    detlimit     = DeterminantLimit;
    
    ikposition = GetPosition(tE, ret.pEangle, tS, ret.pSangle, ret.pSxangle);
    
    return ikposition;
}

GachanGameIK_RA1_Return GachanGameIK_RA1_3D3DOF::GetIK(Vec3 pos)
{
    ret.update = false;

    Vec3 diff = pos - ikposition;

    GachanRoboticsIK_RA1_Return ikret = SolveIK(tE, ret.pEangle, tS, ret.pSangle, ret.pSxangle, diff);
    
    if (fabs(ikret.determinant) > detlimit) {
        
        Val nextpSxangle = ret.pSxangle + ikret.dpSxangle;
        Val nextpSangle  = ret.pSangle  + ikret.dpSangle;
        Val nextpEangle  = ret.pEangle  + ikret.dpEangle;
        
        //次の姿勢が有効かdeterminantをチェックする Check determinant if next posture is valid.
        GachanRoboticsIK_RA1_Return ikret2 = SolveIK(tE, nextpEangle, tS, nextpSangle, nextpSxangle, diff);//determinantはdiffと無関係
        if (fabs(ikret2.determinant) > detlimit) {
            //次の姿勢でまだ動けるので更新する Update because arm can still move in the next posture.
            ret.update      = true;
            ret.determinant = ikret.determinant;
            ret.pSxangle    = nextpSxangle;
            ret.pSangle     = nextpSangle;
            ret.pEangle     = nextpEangle;
            ret.position3D  = pos;
            ikposition = GetPosition(tE, ret.pEangle, tS, ret.pSangle, ret.pSxangle);
            
            //GachanGame::Log("update pos %.2f %.2f diff %.2f %.2f ang %.2f %.2f\n", pos.x, pos.y, diff.x, diff.y, ret.pSangle, ret.pEangle);
        }
        else {
            //NO UPDATE
        }
    }
    else {
        //NO UPDATE
    }
    return ret;
}










//
// GachanMathTransform.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2020 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "GachanMathTransform.h"


Mat44 Trans::Transform()
{
    Trans t = *this;
    
    Mat44 trs,rot,scl;
    trs.Clear();
    //rot.Clear();
    scl.Clear();
    
    {
        trs.Translate(    t.loc.x,  t.loc.y, t.loc.z);
        //rot.RotXYZ( t.rot.x,  t.rot.y, t.rot.z);//this will be used under MAYA axis directly.
        //if (t.ResultRO() == RO_QUATERNION) {
        //    rot = quat.Matrix44();
        //}
        //else
        {
            rot = Mat44::GetRotate(t.ResultRO(), t.rot.x,  t.rot.y, t.rot.z);//this will be used under MAYA axis directly.
        }
        scl.Scale(    t.scl.x,  t.scl.y, t.scl.z);//lib/dx/readme.txt)Q(?
    }
    Mat44 mat = scl * rot * trs;
    
    return mat;
}



Mat44 Trans::TransformRot()
{
    Trans t = *this;
    

    Mat44 rot;
    //rot.Clear();
    
    {
        //rot.RotXYZ( t.rot.x,  t.rot.y, t.rot.z);//this will be used under MAYA axis directly.
        //if (t.ResultRO() == RO_QUATERNION) {
        //    rot = quat.Matrix44();
        //}
        //else
        {
            rot = Mat44::GetRotate(t.ResultRO(), t.rot.x,  t.rot.y, t.rot.z);//this will be used under MAYA axis directly.
        }
    }
    return rot;
}
Mat44 Trans::TransformTrs()
{
    Trans t = *this;

    Mat44 trs;
    trs.Clear();
    
    {
        trs.Translate(    t.loc.x,  t.loc.y, t.loc.z);
    }
    return trs;
}
Mat44 Trans::TransformScl()
{
    Trans t = *this;

    Mat44 scl;
    scl.Clear();
    scl.Scale(    t.scl.x,  t.scl.y,  t.scl.z);
    return scl;
}



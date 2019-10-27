//
// GachanMathMatrix44.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "GachanMathMatrix.h"



const Mat33 Mat33_Unit = {
    1, 0, 0,
    0, 1, 0,
    0, 0, 1
};

void Mat33::Clear()
{
    *this = Mat33_Unit;
}

Mat33 Mat33::GetTranspose(void) const
{
    Mat33 ret;
    
    ret.xx = xx; ret.xy = yx; ret.xz = zx;
    ret.yx = xy; ret.yy = yy; ret.yz = zy;
    ret.zx = xz; ret.zy = yz; ret.zz = zz;
    
    return ret;
}
Val Mat33::GetDeterminant() const
{
    Val determinant = xx * yy * zz + xy * yz * zx + xz * yx * zy
                    - xx * yz * zy - xy * yx * zz - xz * yy * zx;
    return determinant;
}

Mat33 Mat33::GetInverse() const
{
    Mat33 ret;
    ret.Clear();

    Val determinant = GetDeterminant();

    if (fabs(determinant) > ValZERO) {
        Val det_inv;
        
        det_inv = 1.0f / determinant;

        ret.xx    = (yy * zz - yz * zy) * det_inv;
        ret.xy    = (xz * zy - xy * zz) * det_inv;
        ret.xz    = (xy * yz - xz * yy) * det_inv;

        ret.yx    = (yz * zx - yx * zz) * det_inv;
        ret.yy    = (xx * zz - xz * zx) * det_inv;
        ret.yz    = (xz * yx - xx * yz) * det_inv;

        ret.zx    = (yx * zy - yy * zx) * det_inv;
        ret.zy    = (xy * zx - xx * zy) * det_inv;
        ret.zz    = (xx * yy - xy * yx) * det_inv;
    }
    return ret;
}


















const Mat44 Mat44_Unit = {
    1, 0, 0, 0,
    0, 1, 0, 0,
    0, 0, 1, 0,
    0, 0, 0, 1
};

void Mat44::Clear()
{
    *this = Mat44_Unit;
}

//==================================================================================
// |xx xy xz xw||m.xx m.xy m.xz m.xw|
// |yx yy yz yw||m.yx m.yy m.yz m.yw|
// |zx zy zz zw||m.zx m.zy m.zz m.zw|
// |wx wy wz ww||m.wx m.wy m.wz m.ww|
//==================================================================================
Mat44 Mat44::operator*(Mat44 const& m) const
{
    Mat44 ret;
    
    ret.xx    = xx * m.xx + xy * m.yx + xz * m.zx + xw * m.wx;
    ret.xy    = xx * m.xy + xy * m.yy + xz * m.zy + xw * m.wy;
    ret.xz    = xx * m.xz + xy * m.yz + xz * m.zz + xw * m.wz;
    ret.xw    = xx * m.xw + xy * m.yw + xz * m.zw + xw * m.ww;
    
    ret.yx    = yx * m.xx + yy * m.yx + yz * m.zx + yw * m.wx;
    ret.yy    = yx * m.xy + yy * m.yy + yz * m.zy + yw * m.wy;
    ret.yz    = yx * m.xz + yy * m.yz + yz * m.zz + yw * m.wz;
    ret.yw    = yx * m.xw + yy * m.yw + yz * m.zw + yw * m.ww;
    
    ret.zx    = zx * m.xx + zy * m.yx + zz * m.zx + zw * m.wx;
    ret.zy    = zx * m.xy + zy * m.yy + zz * m.zy + zw * m.wy;
    ret.zz    = zx * m.xz + zy * m.yz + zz * m.zz + zw * m.wz;
    ret.zw    = zx * m.xw + zy * m.yw + zz * m.zw + zw * m.ww;
    
    ret.wx    = wx * m.xx + wy * m.yx + wz * m.zx + ww * m.wx;
    ret.wy    = wx * m.xy + wy * m.yy + wz * m.zy + ww * m.wy;
    ret.wz    = wx * m.xz + wy * m.yz + wz * m.zz + ww * m.wz;
    ret.ww    = wx * m.xw + wy * m.yw + wz * m.zw + ww * m.ww;
    
    return ret;
}



Mat44 Mat44::GetTranspose(void) const
{
    Mat44 ret;
    
    ret.xx = xx; ret.xy = yx; ret.xz = zx; ret.xw = wx;
    ret.yx = xy; ret.yy = yy; ret.yz = zy; ret.yw = wy;
    ret.zx = xz; ret.zy = yz; ret.zz = zz; ret.zw = wz;
    ret.wx = xw; ret.wy = yw; ret.wz = zw; ret.ww = ww;
    
    return ret;
}


// |1  0  0  0|
// |0  1  0  0|
// |0  0  1  0|
// |tx ty tz 1|
Mat44 Mat44::GetTranslate(Val tx, Val ty, Val tz)
{
    Mat44 trs;
    trs.Clear();
    trs.wx = tx;
    trs.wy = ty;
    trs.wz = tz;
    return trs;
}

// |sx 0  0  0|
// |0  sy 0  0|
// |0  0  sz 0|
// |0  0  0  1|
Mat44 Mat44::GetScale(Val sx, Val sy, Val sz)
{
    Mat44 scl;
    scl.Clear();
    scl.xx = sx;
    scl.yy = sy;
    scl.zz = sz;
    return scl;
}
Mat44 Mat44::GetScale(Val scl)
{
    return GetScale(scl,scl,scl);    
}

//==================================================================================
//X Rotation
// X' = RX * X
// |xx            xy         xz         xw     | |1  0  0  0||xx xy xz xw|
// |c*yx+s*zx  c*yy+s*zy  c*yz+s*zz  c*yw+s*zw |=|0  c  s  0||yx yy yz yw|
// |-s*yx+c*zx -s*yy+c*zy -s*yz+c*zz -s*yw+c*zw| |0 -s  c  0||zx zy zz zw|
// |wx         wy         wz         ww        | |0  0  0  1||wx wy wz ww|
//==================================================================================
void Mat44::RotateX(Val rx)
{
    Val c, s;
    Val _yx, _yy, _yz;
    
    c = (Val) Math::Cos(rx);//cos(rx);
    s = (Val) Math::Sin(rx);//sin(rx);
    
    _yx = c*yx+s*zx;
    _yy = c*yy+s*zy;
    _yz = c*yz+s*zz;
    zx = -s*yx+c*zx;
    zy = -s*yy+c*zy;
    zz = -s*yz+c*zz;
    yx = _yx;
    yy = _yy;
    yz = _yz;
}

//==================================================================================
//Y Rotation
// X' = RY * X
// |c*xx-s*zx c*xy-s*zy c*xz-s*zz c*xw-s*zw| |c  0 -s  0||xx xy xz xw|
// |yx        yy        yz        yw       |=|0  1  0  0||yx yy yz yw|
// |s*xx+c*zx s*xy+c*zy s*xz+c*zz s*zw+c*zw| |s  0  c  0||zx zy zz zw|
// |wx        wy        wz        ww       | |0  0  0  1||wx wy wz ww|
//==================================================================================
void Mat44::RotateY(Val ry)
{
    Val c, s;
    Val _xx, _xy, _xz;
    
    c = (Val) Math::Cos(ry);//cos(ry);
    s = (Val) Math::Sin(ry);//sin(ry);
    
    _xx = c*xx-s*zx;
    _xy = c*xy-s*zy;
    _xz = c*xz-s*zz;
    zx  = s*xx+c*zx;
    zy  = s*xy+c*zy;
    zz  = s*xz+c*zz;
    xx = _xx;
    xy = _xy;
    xz = _xz;
}

//==================================================================================
//Z Rotation
// X' = RZ * X
// |c*xx+s*yx  c*xy+s*yy  c*xz+s*yz  c*xw+s*yw | | c  s  0  0||xx xy xz xw|
// |-s*xx+c*yx -s*xy+c*yy -s*xz+c*yz -s*xw+c*yw|=|-s  c  0  0||yx yy yz yw|
// |zx         zy         zz         zw        | | 0  0  1  0||zx zy zz zw|
// |wx         wy         wz         ww        | | 0  0  0  1||wx wy wz ww|
//==================================================================================
void Mat44::RotateZ(Val rz)
{
    Val c, s;
    Val _xx, _xy, _xz;
    
    c = (Val) Math::Cos(rz);//cos(rz);
    s = (Val) Math::Sin(rz);//sin(rz);
    
    _xx = c*xx+s*yx;
    _xy = c*xy+s*yy;
    _xz = c*xz+s*yz;
    yx  = -s*xx+c*yx;
    yy  = -s*xy+c*yy;
    yz  = -s*xz+c*yz;
    xx = _xx;
    xy = _xy;
    xz = _xz;
}


void Mat44::RotateZXY(Val rx, Val ry, Val rz)
{
    RotateY(rz);
    RotateX(ry);
    RotateZ(rx);
}

void Mat44::RotateYXZ(Val rx, Val ry, Val rz)
{
    RotateZ(rx);
    RotateX(ry);
    RotateY(rz);
}

void Mat44::RotateXYZ(Val rx, Val ry, Val rz)
{
    RotateZ(rz);
    RotateY(ry);
    RotateX(rx);
}

void Mat44::RotateXZY(Val rx, Val ry, Val rz)
{
    RotateY(ry);
    RotateZ(rz);
    RotateX(rx);
}
void Mat44::RotateYZX(Val rx, Val ry, Val rz)
{
    RotateX(rx);
    RotateZ(rz);
    RotateY(ry);
}
void Mat44::RotateZYX(Val rx, Val ry, Val rz)
{
    RotateX(rx);
    RotateY(ry);
    RotateZ(rz);
}

void Mat44::Rotate(ROTATIONORDER rotorder, Val rx, Val ry, Val rz)
{
    switch (rotorder) {
        case ROTATIONORDER::XYZ:
            RotateXYZ(rx, ry, rz);
            break;
        case ROTATIONORDER::YZX:
            RotateYZX(rx, ry, rz);
            break;
        case ROTATIONORDER::ZXY:
            RotateZXY(rx, ry, rz);
            break;
        case ROTATIONORDER::XZY:
            RotateXZY(rx, ry, rz);
            break;
        case ROTATIONORDER::YXZ:
            RotateYXZ(rx, ry, rz);
            break;
        case ROTATIONORDER::ZYX:
            RotateZYX(rx, ry, rz);
            break;
        default:
            //error
            break;
    }
}


// |1  0  0  0|
// |0  c  s  0|
// |0 -s  c  0|
// |0  0  0  1|
Mat44 Mat44::GetRotateX(Val rx)
{
    Val c, s;
    c = (Val) Math::Cos(rx);//cos(rx);
    s = (Val) Math::Sin(rx);//sin(rx);

    Mat44 rot;
    rot.Clear();
    rot.yy = c;
    rot.yz = s;
    rot.zy = -s;
    rot.zz = c;

    return rot;
}

// |c  0 -s  0|
// |0  1  0  0|
// |s  0  c  0|
// |0  0  0  1|
Mat44 Mat44::GetRotateY(Val ry)
{
    Val c, s;
    c = (Val) Math::Cos(ry);//cos(ry);
    s = (Val) Math::Sin(ry);//sin(ry);
    
    Mat44 rot;
    rot.Clear();
    rot.xx = c;
    rot.zx = -s;
    rot.xz = s;
    rot.zz = c;
    
    return rot;
}

// | c  s  0  0|
// |-s  c  0  0|
// | 0  0  1  0|
// | 0  0  0  1|
Mat44 Mat44::GetRotateZ(Val rz)
{
    Val c, s;
    c = (Val) Math::Cos(rz);//cos(rz);
    s = (Val) Math::Sin(rz);//sin(rz);
    
    Mat44 rot;
    rot.Clear();
    rot.xx = c;
    rot.xy = s;
    rot.yx = -s;
    rot.yy = c;
    
    return rot;
}

Mat44 Mat44::GetRotate(ROTATIONORDER rotorder, Val rx, Val ry, Val rz)
{
    Mat44 rot;
    rot.Clear();
    rot.Rotate(rotorder, rx, ry, rz);
    return rot;
}

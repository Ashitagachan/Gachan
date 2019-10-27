//
// GachanGameCamera.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "GachanGameCamera.h"
#include "Gachan3DCamera.h"


void GachanGameCamera::SetPosition(Vec pos)
{
    position = pos;
}

void GachanGameCamera::SetPosition(Val x, Val y, Val z)
{
    position.x = x;
    position.y = y;
    position.z = z;
}
Vec GachanGameCamera::GetPosition()
{
    return position;
}

void GachanGameCamera::SetTarget(Vec tgt)
{
    target = tgt;
}

void GachanGameCamera::SetTarget(Val x, Val y, Val z)
{
    target.x = x;
    target.y = y;
    target.z = z;
}
Vec GachanGameCamera::GetTarget()
{
    return target;
}

void GachanGameCamera::SetAngle(Val ang)
{
    angle = ang;
}

void GachanGameCamera::SetCamera()
{
    Gachan3DCamera::SetAspectRatio(1.0f, 1.0f);//たて画角(angle)を保持しながら正方形領域が画面内に収まる
    Gachan3DCamera::SetCamera(position, target, 5.0f, 1000.0f, angle);
}





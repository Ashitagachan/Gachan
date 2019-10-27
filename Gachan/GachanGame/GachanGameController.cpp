//
// GachanGameController.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "GachanGameController.h"

void GachanGameControllerCreate()
{
    GachanController::Create();
}
void GachanGameControllerRelease()
{
    GachanController::Release();
}
void GachanGameControllerUpdate()
{
    GachanController::Update();
}


Val GachanGameController::GetSrcValue(int deviceno, GachanGameControllerDevice::SRCINPUT input)
{
    if (deviceno < DeviceNumber) {
        return device[deviceno].SrcValue(input);
    }
    return 0.0f;
}
bool GachanGameController::GetSrcOn   (int deviceno, GachanGameControllerDevice::SRCINPUT input)
{
    if (deviceno < DeviceNumber) {
        return device[deviceno].SrcOn(input);
    }
    return false;
}
bool GachanGameController::GetSrcPush (int deviceno, GachanGameControllerDevice::SRCINPUT input)
{
    if (deviceno < DeviceNumber) {
        return device[deviceno].SrcPush(input);
    }
    return false;
}
bool GachanGameController::GetSrcPop  (int deviceno, GachanGameControllerDevice::SRCINPUT input)
{
    if (deviceno < DeviceNumber) {
        return device[deviceno].SrcPop(input);
    }
    return false;
}




Val GachanGameController::GetValue(int deviceno, GachanGameControllerDevice::INPUT input)
{
    if (deviceno < DeviceNumber) {
        return device[deviceno].Value(input);
    }
    return 0.0f;
}
bool GachanGameController::GetOn   (int deviceno, GachanGameControllerDevice::INPUT input)
{
    if (deviceno < DeviceNumber) {
        return device[deviceno].On(input);
    }
    return false;
}
bool GachanGameController::GetPush (int deviceno, GachanGameControllerDevice::INPUT input)
{
    if (deviceno < DeviceNumber) {
        return device[deviceno].Push(input);
    }
    return false;
}
bool GachanGameController::GetPop  (int deviceno, GachanGameControllerDevice::INPUT input)
{
    if (deviceno < DeviceNumber) {
        return device[deviceno].Pop(input);
    }
    return false;
}

void GachanGameController::SetMapFuncWIN10DI(int deviceno, GachanGameControllerDevice::MAPFUNC mapfunc)
{
    if (deviceno < DeviceNumber) {
        device[deviceno].SetMapFuncWIN10DI(mapfunc);
    }
}
void GachanGameController::SetMapFuncMACHID(int deviceno, GachanGameControllerDevice::MAPFUNC mapfunc)
{
    if (deviceno < DeviceNumber) {
        device[deviceno].SetMapFuncMACHID(mapfunc);
    }
}
int GachanGameController::GetVendorID(int deviceno)
{
    if (deviceno < DeviceNumber) {
        return device[deviceno].vendorID;
    }
    return 0;
}
int GachanGameController::GetProductID(int deviceno)
{
    if (deviceno < DeviceNumber) {
        return device[deviceno].productID;
    }
    return 0;
}
bool GachanGameController::GetAvailable(int deviceno)
{
    if (deviceno < DeviceNumber) {
        return device[deviceno].available;
    }
    return false;
}

int GachanGameController::GetKind(int deviceno)
{
    if (deviceno < DeviceNumber) {
        return device[deviceno].kind;
    }
    return 0;
}












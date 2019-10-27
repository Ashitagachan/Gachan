//
// GachanControllerMap.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANCONTROLLERMAP_H__
#define __GACHANCONTROLLERMAP_H__


#include "GachanController.h"



void GachanControllerWIN10DIMap_DEFAULT(GachanControllerDevice* cd);//デフォルト

void GachanControllerWIN10DIMap_PS4(GachanControllerDevice* cd);
void GachanControllerWIN10DIMap_Logicool_GamepadF310(GachanControllerDevice* cd);//(DirectInput MODE)
void GachanControllerWIN10DIMap_ELECOM_JCU4013SBK(GachanControllerDevice* cd);   //(DirectInput MODE)
void GachanControllerWIN10DIMap_XBOX360(GachanControllerDevice* cd);             //(XInput MODE 通常DirectInputでは列挙キャンセルされるので使うことは無い)


void GachanControllerMACHIDMap_DEFAULT(GachanControllerDevice* cd);//デフォルト
void GachanControllerMACHIDMap_PS4(GachanControllerDevice* cd);
void GachanControllerMACHIDMap_PS3SIXAXIS(GachanControllerDevice* cd);
void GachanControllerMACHIDMap_Logicool_GamepadF310(GachanControllerDevice* cd);//(DirectInput MODE)




//0.0fクリアするMap関数
void GachanControllerMap_CLEAR(GachanControllerDevice* cd);


class GachanControllerMap_PRESET
{
public:
    int vendorID;//0 terminate
    int productID;
    GachanControllerDevice::MAPFUNC mapfunc;
};


#endif

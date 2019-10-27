//
// GachanController.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "GachanController.h"
#include <math.h>




void GachanControllerMap_CLEAR(GachanControllerDevice* cd)//0.0fクリアするMap関数
{
    for (int i = 0; i < GachanControllerDevice::NUM; i++) {
        cd->value[i] = 0.0f;
    }
}




    
    GachanControllerDevice GachanController::device[GachanController::DEVICE_NUM];
    int GachanController::DeviceNumber = 0;

    void GachanControllerDevice::Update()
    {

        //SOURCE
        if (kind == KIND_DIRECTINPUT || kind == KIND_MACOS_HID) {
            unsigned long long tempsrcon = 0;
        
            for (int i = 0; i < SRCINPUT::SRCNUM; i++) {
                if(fabs(srcvalue[i]) > deadzone) {
                    tempsrcon |= ((unsigned long long)1<<i);
                }
                else {
                    srcvalue[i] = 0.0f;
                }
            }
            srcpush = (tempsrcon ^ srcon) & ~srcon;
            srcpop  = (tempsrcon ^ srcon) & srcon;
            srcon   = tempsrcon;
        }
        
        //MAPPED
        {
            unsigned long long tempon = 0;
            
            for (int i = 0; i < INPUT::NUM; i++) {
                if(fabs(value[i]) > deadzone) {
                    tempon |= ((unsigned long long)1<<i);
                }
                else {
                    value[i] = 0.0f;
                }
            }
            push = (tempon ^ on) & ~on;
            pop  = (tempon ^ on) & on;
            on   = tempon;
        }
    }
    
    
void GachanController::CreateSub()
{
    for (int i = 0; i < GachanController::DEVICE_NUM; i++) {
        device[i].SetDeadZone(0.15f);//default deadzone
    }

}
    






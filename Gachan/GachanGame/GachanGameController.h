//
// GachanGameController.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANGAMECONTROLLER_H__
#define __GACHANGAMECONTROLLER_H__


#include "GachanController.h"


class GachanGameControllerDevice : public GachanControllerDevice
{
public:
    
};



//------------------------------------------------------------------------------------
// 1 KIND_XINPUT, KIND_GAMECONTROLLER_FRAMEWORK は、Map関数を使用しないでsrcvalueを介さず直接valueへ代入されます。
// 2 KIND_DIRECTINPUT, KIND_MACOS_HID はMap関数によってsrcvalueからvalueへ代入されます。
//   srcvalueはコントローラ（メーカ？）によって配置が異なることがあり、デフォルトのMap関数ではボタン配置などが異なる場合があります。
// 3 2でMap状態に問題がある場合に、独自/既存の別のMap関数を使用することができます。(SetMapFunc***で指定する)
// 4 また、Map状態に問題がある場合に、srcvalueを直接使用することもできます。
// 5 4で、srcvalueを直接使用する場合に、1,4両方に同時に対応するには、
//   kindを見てvalue/srcvalueどちらを採用するか判断することができます。
// 6 5の別のやり方として、
//   Map関数にClear(valueをゼロクリアする)を指定して、
//   finalvalue = (fabs(value[button]) > fabs(srcvalue[correspond button])? value[button] : srcvalue[correspond button];
//   とするとvalue,srcvalueのうち、入力があった方を採用することもできます。
// 7 PC系のゲームにコンフィグでキー割り当て設定があるのはこんな事情もあります。
//   メジャーなデバイスであればプリセットを用意して自動でマップしてくれるタイトルもあります。
// 8 推奨は1、XInput(Windows10), GameController.framework(Apple系) です。
//------------------------------------------------------------------------------------


class GachanGameController : public GachanController
{
public:

    static int GetKind(int deviceno);

    //not for KIND_GAMECONTROLLER_FRAMEWORK (return true)
    static bool GetAvailable(int deviceno);

    //----------------
    //DEVICE INFO
    // Only for KIND_DIRECTINPUT and KIND_MACOS_HID
    //----------------
    static int GetVendorID(int deviceno);
    static int GetProductID(int deviceno);
    

    //----------------
    //SOURCE INPUT
    // Only for KIND_DIRECTINPUT and KIND_MACOS_HID
    //----------------
    static Val  GetSrcValue(int deviceno, GachanGameControllerDevice::SRCINPUT input);
    static bool GetSrcOn   (int deviceno, GachanGameControllerDevice::SRCINPUT input);
    static bool GetSrcPush (int deviceno, GachanGameControllerDevice::SRCINPUT input);
    static bool GetSrcPop  (int deviceno, GachanGameControllerDevice::SRCINPUT input);

    
    //----------------
    //MAP FUNCTION
    // Only for KIND_DIRECTINPUT and KIND_MACOS_HID
    //----------------
    static void SetMapFuncWIN10DI(int deviceno, GachanGameControllerDevice::MAPFUNC mapfunc);
    static void SetMapFuncMACHID (int deviceno, GachanGameControllerDevice::MAPFUNC mapfunc);

    //----------------
    //INPUT        for KIND_XINPUT      and KIND_GAMECONTROLLER_FRAMEWORK
    //MAPPED INPUT for KIND_DIRECTINPUT and KIND_MACOS_HID
    //----------------
    static Val  GetValue(int deviceno, GachanGameControllerDevice::INPUT input);
    static bool GetOn   (int deviceno, GachanGameControllerDevice::INPUT input);
    static bool GetPush (int deviceno, GachanGameControllerDevice::INPUT input);
    static bool GetPop  (int deviceno, GachanGameControllerDevice::INPUT input);
    
};






#endif

//
// GachanController.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANCONTROLLER_H__
#define __GACHANCONTROLLER_H__


#include "GachanMath.h"
    
class GachanControllerDevice
{
public:

    
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
    
    enum {
        KIND_XINPUT,
        KIND_DIRECTINPUT,
        KIND_GAMECONTROLLER_FRAMEWORK,
        KIND_MACOS_HID,
        KIND_NUM
    };
    
    int                 kind;
    bool                available;//not for KIND_GAMECONTROLLER_FRAMEWORK (return true)

    //----------------
    //DEVICE INFO
    // Only for KIND_DIRECTINPUT and KIND_MACOS_HID
    //----------------
    const static int    NAMELEN = 128;
    char                name[NAMELEN];
    int                 vendorID;
    int                 productID;
    

    //----------------
    //DEAD ZONE
    //----------------
    Val               deadzone;
    void SetDeadZone(Val dz)
    {
        deadzone = dz;
    }
    
    //----------------
    //SOURCE INPUT
    // Only for KIND_DIRECTINPUT and KIND_MACOS_HID
    //----------------

    enum SRCINPUT {
        AXIS_X = 0,
        AXIS_Y,
        AXIS_Z,
        AXIS_RX,
        AXIS_RY,
        AXIS_RZ,
        AXIS_NUM,
        BUTTON_START      = (AXIS_X + AXIS_NUM),//BUTTONに、DPAD START SELECTが含まれる場合があります（というかほとんどがそう？）
        BUTTON_NUM        = (20),
        DPAD_UP           = (BUTTON_START + BUTTON_NUM),
        DPAD_DOWN,
        DPAD_RIGHT,
        DPAD_LEFT,
        DPAD_NUM          = (4),
        STARTSELECT_START = (DPAD_UP + DPAD_NUM),
        STARTSELECT_NUM   = (2),
        SRCNUM            = (STARTSELECT_START + STARTSELECT_NUM)
    };
    
    Val                 srcvalue[SRCINPUT::SRCNUM];//only for KIND_DIRECTINPUT and KIND_MACOS_HID
    unsigned long long  srcon;
    unsigned long long  srcpush;
    unsigned long long  srcpop;
    
    Val   SrcValue(SRCINPUT input)  { return srcvalue[input]; }
    bool  SrcOn   (SRCINPUT input)  { return (srcon   & ((unsigned long long)1<<input))? true : false; }
    bool  SrcPush (SRCINPUT input)  { return (srcpush & ((unsigned long long)1<<input))? true : false; }
    bool  SrcPop  (SRCINPUT input)  { return (srcpop  & ((unsigned long long)1<<input))? true : false; }

    
    //----------------
    //MAP FUNCTION
    // Only for KIND_DIRECTINPUT and KIND_MACOS_HID
    //----------------
    typedef void (*MAPFUNC)(GachanControllerDevice* cd);
    
    MAPFUNC             mapfuncWIN10DI;
    MAPFUNC             mapfuncMACHID;

    void                SetMapFuncWIN10DI(MAPFUNC func)  { mapfuncWIN10DI = func; }
    void                SetMapFuncMACHID(MAPFUNC func)   { mapfuncMACHID  = func; }

    
    
    
    //----------------
    //INPUT        for KIND_XINPUT      and KIND_GAMECONTROLLER_FRAMEWORK
    //MAPPED INPUT for KIND_DIRECTINPUT and KIND_MACOS_HID
    //----------------

    enum INPUT {
        DPAD_X, DPAD_Y,    //右と上が+1  左と下が-1 (座標系と同じ方向)
        STICK_LX, STICK_LY,//右と上が+1  左と下が-1 (座標系と同じ方向)
        STICK_RX, STICK_RY,//右と上が+1  左と下が-1 (座標系と同じ方向)
        SHOULDER_L,
        SHOULDER_R,
        TRIGGER_L,
        TRIGGER_R,
        THUMBSTICKBUTTON_L,
        THUMBSTICKBUTTON_R,
        A, B, X, Y,
        START,
        SELECT,
        NUM//16
    };

    Val                 value[INPUT::NUM];
    unsigned long long  on;
    unsigned long long  push;
    unsigned long long  pop;

    Val   Value(INPUT input)  { return value[input]; }
    bool  On   (INPUT input)  { return (on   & ((unsigned long long)1<<input))? true : false; }
    bool  Push (INPUT input)  { return (push & ((unsigned long long)1<<input))? true : false; }
    bool  Pop  (INPUT input)  { return (pop  & ((unsigned long long)1<<input))? true : false; }
    void  Print(int i);

    
    
    void Update();
};

class GachanController
{
public:
    const static int DEVICE_NUM = 16;
    static int DeviceNumber;
    
    static GachanControllerDevice device[DEVICE_NUM];
    
    static void CreateSub();
    static void Create();
    static void Release();
    static void Update();
    static int  GetDeviceNumber() { return DeviceNumber; }
};




#endif

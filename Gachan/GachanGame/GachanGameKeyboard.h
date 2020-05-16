//
// GachanGameKeyboard.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANGAMEKEYBOARD_H__
#define __GACHANGAMEKEYBOARD_H__


//キーボード入力
class GachanGameKeyboard
{
    static unsigned long long SystemKey;
    
public:

    enum KEY {
        UP,
        DOWN,
        LEFT,
        RIGHT,
        SPACE,
        ENTER,
        
        NUM0,
        NUM1,
        NUM2,
        NUM3,
        NUM4,
        NUM5,
        NUM6,
        NUM7,
        NUM8,
        NUM9,
        
        A,S,D,W,R,F
    };
    
    static void ResetSystemKey();
    static void SetSystemKey(KEY key);

    //ハードウェアシステムキーボードのキー取得
    //Get key of hardware system keyboard
    static bool GetSystemKey(KEY key);
};




#endif

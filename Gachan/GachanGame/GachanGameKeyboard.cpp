//
// GachanGameKeyboard.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "GachanGameKeyboard.h"

//temporally for hardware keyboard
unsigned long long GachanGameKeyboard::SystemKey = 0;

void GachanGameKeyboard::ResetSystemKey()
{
    SystemKey = 0;
}
void GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY key)
{
    SystemKey |= (((unsigned long long)1)<<key);
}



bool GachanGameKeyboard::GetSystemKey(KEY key)
{
    return (GachanGameKeyboard::SystemKey & (((unsigned long long)1)<<key))? true : false;
}





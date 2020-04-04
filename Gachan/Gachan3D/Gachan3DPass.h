//
// Gachan3DPass.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2020 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHAN3DPASS_H__
#define __GACHAN3DPASS_H__


class Gachan3DPass
{
    static int pass;
public:
    enum {
        NONE,
        DRAW,
        DRAW_SHADOWMAP,
        DRAW_WITH_SHADOWMAP,
    };
    static int GetPass()
    {
        return pass;
    }
    static void Start(int p = DRAW)
    {
        pass = p;
    }
    static void End()
    {
        pass = NONE;
    }
};




#endif

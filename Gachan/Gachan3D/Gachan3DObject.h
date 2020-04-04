//
// Gachan3DObject.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHAN3DOBJECT_H__
#define __GACHAN3DOBJECT_H__

#include "Gachan3DVertexTypes.h"


class Gachan3DVertex
{
public:
    enum {
        TYPE_VN,
        TYPES_NUM,
    };
    static unsigned int Stride[TYPES_NUM];
    void*       vertex;
    unsigned int        vertexnum;
    unsigned int        vertextype;
    void*       vif;
    
    enum {
        FLG_NONE           = 0,
        FLG_XYiZ           = 1<<0,
    };
    unsigned int        flag;

    void Create();
    void Release();
};



class Tex
{
public:
    Char*    name;
    void*    tif;

    bool Create();
    bool Release();
};

class Gachan3DMaterialTex
{
public:
    Tex* tex;                //Null terminate
    
    enum {
        WRAP_REPEAT             = -1, //convert to GL_REPEAT
        WRAP_MIRRORED_REPEAT    = -2, //convert to GL_MIRRORED_REPEAT
        WRAP_CLAMP_TO_EDGE      = -3, //convert to GL_CLAMP_TO_EDGE
        WRAP_NUM = 3,//Dx9,GL向けに3個。METAL向けだともっとあるんだけど、使ってないのでまだ3個のまま。
    };
    int wrapu, wrapv; ///2014/9/16 added
    
    inline static int wrapToIndex(int wrap)
    {
        return (-wrap) - 1;
    }
};

class Gachan3DMaterial
{
public:
    char*           name;
    Vec4            diffuse;
    Vec4            specular;
    int             shader;
    
    enum {
        FLG_NONE            = 0,
        FLG_DOUBLESIDE      = 1<<0,
        FLG_HIDE            = 1<<1,
        FLG_ALPHABLEND      = 1<<2,
    };
    unsigned int    flag;
    void SetFlag(int f, bool b = true)
    {
        if (b) {
            flag |= f;
        }
        else {
            flag &= ~f;
        }
    }
    
    void Create();
    void Release();
};


typedef unsigned short Gachan3DIndexType;
class Gachan3DIndex
{
public:
    static int Size();
    static void* Create(Gachan3DIndexType* index, unsigned int indexnum);
    static void Release(void* iif);
};

class Gachan3DModel
{
public:
    Gachan3DVertex*    vertex;
    Gachan3DIndexType* index;
    unsigned int       indexnum;
    void*              iif;
    Gachan3DMaterial*  material;

    bool isTerminator()
    {
        return (vertex == NULL) && (index == NULL);
    }
    void Create();
    void Release();
    void Draw();
};

class Gachan3DObject
{
public:
    char*          name;
    Gachan3DModel* model;
    
    
    //hierarchy
    Gachan3DObject* sibling;
    Gachan3DObject* child;
    
    void CreateSub();
    void Create();
    void ReleaseSub();
    void Release();
    void DrawSub();
    void Draw();
};

#endif

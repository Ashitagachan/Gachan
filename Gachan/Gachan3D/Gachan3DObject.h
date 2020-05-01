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
#include "GachanMathTransform.h"

class Gachan3DVertex
{
public:
    enum {
        //ここを増やしたら、Stride[TYPES_NUM]にも追加せよ
        TYPE_VN,
        TYPE_VNUV,
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

    UInt GetStride()
    {
        return Stride[vertextype];
    }
    void Freeze();
    void Create();
    void Release();
};
typedef Gachan3DVertex Vertex;



class GachanTex
{
public:
    Char*    name;
    void*    tif;

    bool Create();
    bool Release();
};

class GachanMaterialTex
{
public:
    GachanTex* tex;                //Null terminate
    
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

class GachanMaterial
{
public:
    char*           name;
    Vec4            diffuse;
    Vec4            specular;
    GachanMaterialTex* texture;    //texture list
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
typedef GachanMaterial Material;


typedef unsigned short Gachan3DIndexType;
typedef unsigned short IndexType;
class Gachan3DIndex
{
public:
    static int Size();
    static void* Create(Gachan3DIndexType* index, unsigned int indexnum);
    static void Release(void* iif);
};
typedef Gachan3DIndex Index;


class Gachan3DModel
{
public:
    Gachan3DVertex*    vertex;
    Gachan3DIndexType* index;
    unsigned int       indexnum;
    void*              iif;
    GachanMaterial*    material;

    bool isTerminator()
    {
        return (vertex == NULL) && (index == NULL);
    }
    void Freeze();
    void Create();
    void Release();
    void Draw();
};
typedef Gachan3DModel Model;

class Gachan3DObject
{
public:
    char*          name;
    Gachan3DModel* model;
    
    Mat44        matrixpose;
    Trans        trspose;

    //hierarchy
    Gachan3DObject* sibling;
    Gachan3DObject* child;
    
    void FreezeSub();
    void Freeze();//頂点をグローバル値にする
    
    bool CalcMatrixPoseAbsSub();
    void CreateSub();
    void Create();
    void ReleaseSub();
    void Release();
    void DrawSub();
    void Draw();
};
typedef Gachan3DObject Object;

#endif

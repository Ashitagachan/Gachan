//
// Gachan3DObjectDefine.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHAN3DOBJECTDEFINE_H__
#define __GACHAN3DOBJECTDEFINE_H__

#include "GachanMath.h"
#include "Gachan3DObject.h"
#include "Gachan3DShader.h"



#define DX3DVERT(x, y, z)         (Val)(x), (Val)(y), (Val)(z),
#define DX3DVNORM(x, y, z)        (Val)(x), (Val)(y), (Val)(z),
#define DX3DVCOLF(a, r, g, b)        (((((unsigned int)(a*255.0))<<24) & 0xFF000000) | \
                                      ((((unsigned int)(r*255.0))<<16) & 0x00FF0000) | \
                                      ((((unsigned int)(g*255.0))<<8)  & 0x0000FF00) | \
                                      ( ((unsigned int)(b*255.0))      & 0x000000FF)),
#define DX3DVCOL(a, r, g, b)        (((((unsigned int)(a))<<24) & 0xFF000000) | \
                                     ((((unsigned int)(r))<<16) & 0x00FF0000) | \
                                     ((((unsigned int)(g))<<8)  & 0x0000FF00) | \
                                     ( ((unsigned int)(b))      & 0x000000FF)),

#define DX3DV255x4(b, g, r, a)    DX3DVCOL(a, r, g, b)

#define DX3DVCOL_EMPTY            (0xFFFFFFFF)

#define DX3DVBINORM(x, y, z)      (Val)(x), (Val)(y), (Val)(z),
#define DX3DVBINORM_EMPTY         (Val)(0.0),(Val)(0.0),(Val)(0.0),

#define DX3DVTANNORM(x, y, z)     (Val)(x), (Val)(y), (Val)(z),
#define DX3DVTANNORM_EMPTY        (Val)(0.0),(Val)(0.0),(Val)(0.0),

#define DX3DVUV(u, v)             (Val)(u), (Val)(v),
#define DX3DVUV_EMPTY             (Val)(0.0), (Val)(0.0),



#define DX3DVERT_START(type, name)              Vertex##type name[] = {
#define DX3DVERT_END                            };


#define DX3DVERTEX_START(name)                  Gachan3DVertex name[] = {{
#define DX3DVERTEX_VERTBUFFER(name)                  (void*)name,
#define DX3DVERTEX_VERTNUM(type, vnum)               vnum, Gachan3DVertex::TYPE_##type, (void*) 0, 0,
#define DX3DVERTEX_END                          },};


#define DX3DINDEX_START(name)                   Gachan3DIndexType name[] = {
#define DX3DINDEX_END                           };




#define DX3DMATERIAL_START(name)                Gachan3DMaterial name[] = {{ (char*) #name,
#define DX3DMATERIAL_DIFF(a, r, g, b)                { (Val)(r), (Val)(g), (Val)(b),  (Val)(a) },
#define DX3DMATERIAL_SPEC(a, r, g, b)                { (Val)(r), (Val)(g), (Val)(b),  (Val)(a) },
#define DX3DMATERIAL_TEX(name)
#define DX3DMATERIAL_SHADER(shader)                  Gachan3DShader::SHADER_##shader,
#define DX3DMATERIAL_FLG(flg)                        flg,
#define DX3DMATERIAL_CALLBACK(cb)
#define DX3DMATERIAL_SHADER_FLG_CALLBACK(shader, flg, cb)        shader, flg,
#define DX3DMATERIAL_END                        },};




#define DX3DMODELTBL_START(name)                Gachan3DModel    name[] = {
#define DX3DMODEL_START(mname)                  {
#define DX3DMODEL_VERTEX(vname)                        vname,
#define DX3DMODEL_INDEX(iname)                         (Gachan3DIndexType*)iname,
#define DX3DMODEL_INDEXNUM(inum)                       inum,    (void*) 0,
#define DX3DMODEL_INDEXSTRIP(iname)
#define DX3DMODEL_INDEXSTRIPNUM(inum)
#define DX3DMODEL_VERTEXSTRIP(vname)
#define DX3DMODEL_MATERIAL(matname)                    matname,
#define DX3DMODEL_END                           },
#define DX3DMODEL_FLGEND(flg)                   Gachan3DModel::FLG_##flg, },
#define DX3DMODELTBL_END                        {0,}};



#define object_NULL                              ((void*)0)
#define object_NULL__                            ((void*)0)
#define modeltbl_NULL__                          ((void*)0)

#define DX3DOBJECT_START(name)                   Gachan3DObject    name[] = {{ (char*) #name,
#define DX3DOBJECT_START_HASH(name, hash)        Gachan3DObject    name[] = {{ (char*) #name,
#define DX3DOBJECT_ROTORDER(rotorder)

#define DX3DOBJECT_MODEL(modelname)              (Gachan3DModel*)modelname,

#define DX3DOBJECT_MATRIXBIND(     m00,m01,m02,m03, m10,m11,m12,m13, m20,m21,m22,m23, m30,m31,m32,m33 )
#define DX3DOBJECT_MATRIXBIND_ABS( m00,m01,m02,m03, m10,m11,m12,m13, m20,m21,m22,m23, m30,m31,m32,m33 )
#define DX3DOBJECT_TRSBIND_ROTORDER(rotorder, t0, t1, t2, t3, t4, t5, t6, t7, t8 )
#define DX3DOBJECT_MATRIXPOSE(     m00,m01,m02,m03, m10,m11,m12,m13, m20,m21,m22,m23, m30,m31,m32,m33 )
#define DX3DOBJECT_MATRIXPOSE_ABS( m00,m01,m02,m03, m10,m11,m12,m13, m20,m21,m22,m23, m30,m31,m32,m33 )
#define DX3DOBJECT_TRSPOSE_ROTORDER(rotorder, t0, t1, t2, t3, t4, t5, t6, t7, t8 )
#define DX3DOBJECT_NORMAL
#define DX3DOBJECT_JOINT(jointno)
#define DX3DOBJECT_JOINTSETNO(jointset, jointno)
#define DX3DOBJECT_JOINTEND

#define DX3DOBJECT_FLG(flg)
#define DX3DOBJECT_CALLBACK(callback)
#define DX3DOBJECT_SIBLING(sibname)               (Gachan3DObject*)sibname,
#define DX3DOBJECT_CHILD(chname)                  (Gachan3DObject*)chname,
#define DX3DOBJECT_END                            },};




#define DX3DOBJECT_JOINTCOUNT( name, cnt )       int name = cnt;

#ifndef DX3DBINARYFILE
#define DX3DBINARYFILE( name, path )             char* name = (char*)path;
#endif

#ifndef DX3DBINARYSIZE
#define DX3DBINARYSIZE( name, size )             unsigned int name = (size);
#endif





#endif

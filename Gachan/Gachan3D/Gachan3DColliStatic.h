//
// Gachan3DColliStatic.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHAN3DCOLSTATIC_H__
#define __GACHAN3DCOLSTATIC_H__

#include "Gachan.h"
#include "GachanMathPrimitive.h"
#include "Gachan3DObject.h"
#include "GachanPool.h"





class Gachan3DColliStatic
{
public:
    class Col {
    public:
        Vec v[3];
        Vec n;//これを削ってキャッシュをあげるか、sqrtを事前にやっておいたnを用意した方がいいか、
        UInt64 checkno;
        void* ptr;
        UInt flag;

        static Col* Alloc(GachanPool* p)
        {
            Col* ret = (Col*) p->Alloc(sizeof(Col));
            if (ret) {
                ret->flag = 0;
                ret->ptr = NULL;
                ret->checkno = 0xFFFFFFFFFFFFFFFF;
            }
            return ret;
        }
    };
    
private:
    class List {
    public:
        Col* col;
        List* next;
        
        static List* Alloc(GachanPool* p)
        {
            List* ret = (List*) p->Alloc(sizeof(List));
            if (ret) {
                ret->next = NULL;
                ret->col  = NULL;
            }
            return ret;
        }
    };

    class Grid {
    public:
        List* root;
    };

    
    class United {
    public:
        Vec min, max;//全gridの幅
        Val segx, segy, segz;//1gridの長さ
        Val invsegx, invsegy, invsegz;
        UInt xgrids;
        UInt ygrids;
        UInt zgrids;
        Grid gridempty;
        Val margin;//注意:0〜マイナス値
        UInt64 checkno;
    };





    inline bool pos2grididx(int& xidx, int& yidx, int& zidx, const Vec& p)
    {
        xidx = (int) ((p.x - united->min.x) * united->invsegx);
        yidx = (int) ((p.y - united->min.y) * united->invsegy);
        zidx = (int) ((p.z - united->min.z) * united->invsegz);
        
        return (xidx < (int)united->xgrids && yidx < (int)united->ygrids && zidx < (int)united->zgrids);
    }
    inline void gridminmax(Vec& min, Vec& max, int xidx, int yidx, int zidx)
    {
        min.x = united->min.x + united->segx * (Val)xidx;
        min.y = united->min.y + united->segy * (Val)yidx;
        min.z = united->min.z + united->segz * (Val)zidx;
        max.x = min.x + united->segx;
        max.y = min.y + united->segy;
        max.z = min.z + united->segz;
    }

    inline void gridvertex(Vec v[8], int xidx, int yidx, int zidx)
    {
        Vec min, max;
        gridminmax(min, max, xidx, yidx, zidx);
        
        v[0].Set(min.x, min.y, min.z);
        v[1].Set(min.x, max.y, min.z);
        v[2].Set(max.x, max.y, min.z);
        v[3].Set(max.x, min.y, min.z);
        v[4].Set(min.x, min.y, max.z);
        v[5].Set(min.x, max.y, max.z);
        v[6].Set(max.x, max.y, max.z);
        v[7].Set(max.x, min.y, max.z);
    }


    inline bool iscolgrid(Col* col, int xidx, int yidx, int zidx)
    {
        Vec min, max;
        gridminmax(min, max, xidx, yidx, zidx);
        
        return TriangleGrid(col->v[0], col->v[1], col->v[2], min, max, united->margin);
    }




    inline bool checkcol(Vec& op, Col* col, const Vec& src, const Vec& dst)
    {
        return LineTriangle(col->v[0], col->v[1], col->v[2], src, dst, op, united->margin);
    }



    GachanPool  pool;
    United*   united;
    Grid*     gridall;
    
    Grid* getgrid(int xidx, int yidx, int zidx)
    {
        if (xidx < 0 || yidx < 0 || zidx < 0 ||
            xidx >= (int)united->xgrids || yidx >= (int)united->ygrids || zidx >= (int)united->zgrids) {
            
            return &united->gridempty;
        }
        return gridall + ((united->xgrids * united->ygrids) * zidx + united->xgrids * yidx + xidx);
    }
    
    Val QuerySub(Col** c, Vec& op, const Vec& src, const Vec& dst, UInt flagmask = 0xFFFFFFFF, bool draw = false);

    void NextGrid(Vec& p,
                  int& xidx, int& yidx, int& zidx,
                  const Vec& src, const Vec& dst,
                  const Vec& dir, const Vec& invdir,
                  int addxidx, int addyidx, int addzidx);
    
    void SetGrids(UInt gridsx, UInt gridsy, UInt gridsz);
    void SetMinMax(Vec min, Vec max);
    
    void Register(const Vec& v0, const Vec& v1, const Vec& v2, UInt flag = 1, void* ptr = 0);
    void RegisterObject(Gachan3DObject* obj);

public:
    UInt64 GetSize()
    {
        return pool.GetSize();
    }
    void GetGrids(int& xgrids, int& ygrids, int& zgrids )
    {
        xgrids = united->xgrids;
        ygrids = united->ygrids;
        zgrids = united->zgrids;
    }
    
    //Createを用意すれば色々なものから作れる。これはdx::Objectから。
    //objはCreate()済みを渡すこと。
    void CreateFromObject(Val gridx, Val gridy, Val gridz, UInt poolsize, Gachan3DObject* obj);
    //void AddFromObject(Object* obj);
    void Release();
    
    //in out : id = -1
    //if it hits collision, col will have an other value.
    //注意:返却値は距離の２乗を返す
    //ret:distance*distance
    Val Query(Col** c, Vec& op, const Vec& src, const Vec& dst, UInt flagmask = 0xFFFFFFFF);
    
    //Debug Draw
    void DrawGrid(int xidx, int yidx, int zidx);
    Val DrawQuery(Vec& op, const Vec& src, const Vec& dst);
};












#endif

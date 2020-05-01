//
// Gachan3DColliStatic.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "string.h"

#include "Gachan.h"
#include "GachanMathVector.h"
#include "Gachan3DColliStatic.h"
#include "Gachan3DPrimitive.h"
#include "Gachan3DMatrixStack.h"




void Gachan3DColliStatic::Release()
{
    pool.Release();
}


void Gachan3DColliStatic::NextGrid(Vec& p,
                     int& xidx, int& yidx, int& zidx,
                     const Vec& src, const Vec& dst,
                     const Vec& dir, const Vec& invdir,
                     int addxidx, int addyidx, int addzidx
                     )
{
    Vec min, max;
    Gachan3DColliStatic::gridminmax(min, max, xidx, yidx, zidx);

    Val xdiff = (addxidx > 0)? max.x - p.x : min.x - p.x;
    Val ydiff = (addyidx > 0)? max.y - p.y : min.y - p.y;
    Val zdiff = (addzidx > 0)? max.z - p.z : min.z - p.z;
    
    Val ratiox = (Val)fabs(xdiff * (Val)invdir.x);
    Val ratioy = (Val)fabs(ydiff * (Val)invdir.y);
    Val ratioz = (Val)fabs(zdiff * (Val)invdir.z);
    
    //next grid
    //x,y,z方向のどこに移動するか判定
    bool addx, addy;
    addy = false;
    addx = (ratiox < ratioy);
    if (addx) {
        addx = (ratiox < ratioz);
    }
    else {
        addy = (ratioy < ratioz);
    }
    
    if (addx) {
        //left or right
        xidx += addxidx;
        p.x += xdiff;
        p.y += xdiff * (dir.y * invdir.x);
        p.z += xdiff * (dir.z * invdir.x);
    }
    else if (addy) {
        //up or down
        yidx += addyidx;
        p.x += ydiff * (dir.x * invdir.y);
        p.y += ydiff;
        p.z += ydiff * (dir.z * invdir.y);
    }
    else {
        zidx += addzidx;
        p.x += zdiff * (dir.x * invdir.z);
        p.y += zdiff * (dir.y * invdir.z);
        p.z += zdiff;
    }
#if 1
    //誤差修正
    Vec op;
    Val t;
    LinePoint(src, dst, p, op, t);
    op = p;
#endif
    
}


Val Gachan3DColliStatic::QuerySub(Col** c, Vec& op, const Vec& src, const Vec& dst, UInt flagmask, bool draw)
{
    Vec p, out;
    p   = src;
    out = dst;

    Vec diff;
    Vec dir;
    diff = dst - src;
    dir = diff;
    dir.SetUnit();
    
    int addxidx = (dir.x > 0.0)? 1 : -1;
    int addyidx = (dir.y > 0.0)? 1 : -1;
    int addzidx = (dir.z > 0.0)? 1 : -1;
    Vec invdir;
    invdir.x = (dir.x != 0.0)? 1.0f / (float)dir.x : ValMAX;
    invdir.y = (dir.y != 0.0)? 1.0f / (float)dir.y : ValMAX;
    invdir.z = (dir.z != 0.0)? 1.0f / (float)dir.z : ValMAX;

    int xidx, yidx, zidx;
    pos2grididx(xidx, yidx, zidx, src);


    
    Val distance2  = diff.GetLength2();
    
    //walk grids
    while (1) {
        
        Val gap = 0.02f;//少し余裕
        Val distance2psrc = (p - src).GetLength2();
        bool continuegrid = (distance2psrc < distance2 + gap);
        if (continuegrid) {
            
            if (draw) {
                DrawGrid(xidx, yidx, zidx);
            }

            Grid* e = getgrid(xidx, yidx, zidx);
            List* list = e->root;
            while (list) {
                Col* col = list->col;
                if (col) {
                    if (col->flag & flagmask &&
                        col->checkno != united->checkno) {
                        col->checkno = united->checkno;
                        Vec o;
                        if (checkcol(o, col, src, out)) {
                            out = o;
                            *c = col;
                            distance2 = (src - out).GetLength2();
                        }
                    }
                }
                list = list->next;
            }
        }
        else {
            break;
        }
        NextGrid(p, xidx, yidx, zidx, src, dst, dir, invdir, addxidx, addyidx, addzidx);
    }
    united->checkno++;
    //if (checkno == 0xFFFFFFFF) { /* ALL RESET */}
    op = out;
    return (src - op).GetLength2();//mt::Length2(src, op);
}

Val Gachan3DColliStatic::Query(Col** c, Vec& op, const Vec& src, const Vec& dst, UInt flagmask)
{
    return QuerySub(c, op, src, dst, flagmask, false);
}




void Gachan3DColliStatic::Register(const Vec& v0, const Vec& v1, const Vec& v2, UInt flag, void* ptr)
{
    Col* col = Col::Alloc(&pool);
    
    if (col == NULL) {
        SysLog("Gachan3DColliStatic Register Memory Error\n");
    }
    
    if (col) {
        col->v[0] = v0;
        col->v[1] = v1;
        col->v[2] = v2;
        col->checkno = 0;
        col->ptr = ptr;
        col->flag = flag;

        Vec a = v1 - v0;//col->v[1] - col->v[0];
        Vec b = v2 - v1;//col->v[2] - col->v[1];
        col->n = a * b;
        col->n.SetUnit();
        
        Val minx, maxx, miny, maxy, minz, maxz;
        minx = (v0.x < v1.x)? v0.x : v1.x;
        minx = (v2.x < minx)? v2.x : minx;
        maxx = (v0.x > v1.x)? v0.x : v1.x;
        maxx = (v2.x > maxx)? v2.x : maxx;
        miny = (v0.y < v1.y)? v0.y : v1.y;
        miny = (v2.y < miny)? v2.y : miny;
        maxy = (v0.y > v1.y)? v0.y : v1.y;
        maxy = (v2.y > maxy)? v2.y : maxy;
        minz = (v0.z < v1.z)? v0.z : v1.z;
        minz = (v2.z < minz)? v2.z : minz;
        maxz = (v0.z > v1.z)? v0.z : v1.z;
        maxz = (v2.z > maxz)? v2.z : maxz;

        int startx, starty, startz, endx, endy, endz;

        Vec pos;
        pos.x = minx;
        pos.y = miny;
        pos.z = minz;        
        pos2grididx(startx, starty, startz, pos);
        pos.x = maxx;
        pos.y = maxy;
        pos.z = maxz;
        pos2grididx(endx, endy, endz, pos);
        
        //register wall
        for (int x = startx; x <= endx; x++) {
            for (int y = starty; y <= endy; y++) {
                for (int z = startz; z <= endz; z++) {
                    if (iscolgrid(col, x, y, z)) {
                        Grid* e = getgrid(x, y, z);
                        List* list = List::Alloc(&pool);
                        if (list) {
                            list->col = col;
                            list->next = e->root;
                            e->root = list;
                            //printf("Added Col %d %d %d\n", x, y, z);
                        }
                        else {
                            SysLog("Gachan3DColliStatic Register Memory Error\n");
                        }
                    }
                }
            }
        }
    }
}





void Gachan3DColliStatic::RegisterObject(Object* obj)
{
    while (obj) {
        
        MatStack::Push();
        MatStack::Mul(obj->matrixpose);
        
        Mat44* mat = MatStack::Get();

        Model* m = obj->model;
        while(!m->isTerminator()) {
            
            UChar* vert  = (UChar*) m->vertex->vertex;
            UInt stride  = Vertex::Stride[m->vertex->vertextype];
            
            IndexType* idx = m->index;
            for (UInt i = 0; i < m->indexnum; i += 3){
                Vec* pv[3];
                pv[0] = (Vec*) (vert + idx[i]   * stride);
                pv[1] = (Vec*) (vert + idx[i+1] * stride);
                pv[2] = (Vec*) (vert + idx[i+2] * stride);
                Vec v[3];
                v[0] = *pv[0] * (*mat);
                v[1] = *pv[1] * (*mat);
                v[2] = *pv[2] * (*mat);
                Register(v[0], v[1], v[2], 1, (void*)m->material );
            }
            m++;
        }
        if (obj->child) {
            RegisterObject(obj->child);
        }
        MatStack::Pop();

        obj = obj->sibling;
    }
}



void Gachan3DColliStatic::SetGrids(UInt gridsx, UInt gridsy, UInt gridsz)
{
    united->xgrids = gridsx;
    united->ygrids = gridsy;
    united->zgrids = gridsz;

    gridall = (Grid*) pool.Alloc(sizeof(Grid) * gridsx * gridsy * gridsz);
    memset(gridall, 0, sizeof(Grid) * gridsx * gridsy * gridsz);
}

void Gachan3DColliStatic::SetMinMax(Vec min, Vec max)
{
    float gap = 0.2f;
    united->min.x = min.x-gap;
    united->min.y = min.y-gap;
    united->min.z = min.z-gap;
    united->max.x = max.x+gap;
    united->max.y = max.y+gap;
    united->max.z = max.z+gap;
    united->segx = (united->max.x - united->min.x) / (Val)united->xgrids;//引数のgridlengthから厳密には異なる
    united->segy = (united->max.y - united->min.y) / (Val)united->ygrids;
    united->segz = (united->max.z - united->min.z) / (Val)united->zgrids;
    united->invsegx = (Val)1.0 / united->segx;
    united->invsegy = (Val)1.0 / united->segy;
    united->invsegz = (Val)1.0 / united->segz;
    united->checkno = 0;
}



static void GetMinMaxObject(Object* obj, Vec& min, Vec& max)
{
    while (obj) {
        
        MatStack::Push();
        MatStack::Mul(obj->matrixpose);
        
        Mat44* mat = MatStack::Get();

        Model* m = obj->model;
        while(!m->isTerminator()) {
            
            UChar* vert  = (UChar*) m->vertex->vertex;
            UInt vertnum = m->vertex->vertexnum;
            UInt stride  = Vertex::Stride[m->vertex->vertextype];
            
            for (int i = 0; i < (int)vertnum; i++) {
                Vec* v = (Vec*) (vert + (i * stride));
                Vec gv = *v * (*mat);
                min.x = (gv.x < min.x)? gv.x : min.x;
                min.y = (gv.y < min.y)? gv.y : min.y;
                min.z = (gv.z < min.z)? gv.z : min.z;
                max.x = (gv.x > max.x)? gv.x : max.x;
                max.y = (gv.y > max.y)? gv.y : max.y;
                max.z = (gv.z > max.z)? gv.z : max.z;
            }
            m++;
        }
        if (obj->child) {
            GetMinMaxObject(obj->child, min, max);
        }
        
        MatStack::Pop();

        obj = obj->sibling;
    }
}

//Createを用意すれば色々なものから作れる。これはdx::Objectから。
void Gachan3DColliStatic::CreateFromObject(Val gridx, Val gridy, Val gridz, UInt poolsize, Object* obj)
{
    //ほんとは自動でサイズ確保やりたいのー。一回大きくとってやって、サイズがわかったらもう一度そのサイズで作り直すか？
    pool.Create(poolsize);
    
    united = (United*) pool.Alloc(sizeof(United));
    memset(united, 0, sizeof(United));
    
    united->margin = (Val)(-ValZERO);

        
    Vec min, max;
    min.Set(ValMAX, ValMAX, ValMAX);
    max.Set(ValMIN, ValMIN, ValMIN);
    GetMinMaxObject(obj, min, max);
    
    int base_xgrids = (int)((max.x - min.x) / gridx) + 1;
    int base_ygrids = (int)((max.y - min.y) / gridy) + 1;
    int base_zgrids = (int)((max.z - min.z) / gridz) + 1;

    SetGrids(base_xgrids, base_ygrids, base_zgrids);
    
    SetMinMax(min, max);
    
    RegisterObject(obj);
    
    SysLog("Gachan3DColliStatic MinMax (%.2f, %.2f, %.2f) - (%.2f, %.2f, %.2f)\n", min.x, min.y, min.z, max.x, max.y, max.z);
    SysLog("Gachan3DColliStatic Grids %d %d %d\n", united->xgrids, united->ygrids, united->zgrids);
    SysLog("Gachan3DColliStatic Segs  %.2f %.2f %.2f\n", united->segx, united->segy, united->segz);
    SysLog("Gachan3DColliStatic PoolSize %lld \n", pool.GetSize());
}



Val Gachan3DColliStatic::DrawQuery(Vec& op, const Vec& src, const Vec& dst)
{
    Col *col;
    Val distance2 = QuerySub(&col, op, src, dst, 0xFFFFFFFF, true);
    if (distance2 < (dst - src).GetLength2()) {
        Gachan3DPrimitive::DrawSphere(&op, 0.1f, 1.0f, 0.0f, 0.0f);
#if 0
        SysLog("Col (%.2f, %.2f, %.2f) (%.2f, %.2f, %.2f) (%.2f, %.2f, %.2f) Hit (%.2f, %.2f, %.2f)\n",
               col->v[0].x, col->v[0].y, col->v[0].z,
               col->v[1].x, col->v[1].y, col->v[1].z,
               col->v[2].x, col->v[2].y, col->v[2].z,
               op.x, op.y, op.z);
#endif
    }
    else {
        Gachan3DPrimitive::DrawSphere(&op, 0.1f, 1.0f, 1.0f, 1.0f);
    }
    Gachan3DPrimitive::DrawSphere(&src, 0.1f, 1.0f, 1.0f, 1.0f);
    Gachan3DPrimitive::DrawLine(&src, &op, 0.3f, 1.0f, 1.0f, 1.0f);
    return distance2;
}

void Gachan3DColliStatic::DrawGrid(int xidx, int yidx, int zidx)
{
    Grid* e = getgrid(xidx, yidx, zidx);
    if (e == NULL) {
        return;
    }
    
    Vec v[8];
    gridvertex(v, xidx, yidx, zidx);
    
    List* list = e->root;

    Val scale = 0.2f;
    Val r, g, b;
    r = 1.0f;
    g = 1.0f;
    b = 0.0f;

    while (list) {
        Col* col = list->col;
        Gachan3DPrimitive::DrawLine(&col->v[0], &col->v[1], scale, r, g, b);
        Gachan3DPrimitive::DrawLine(&col->v[1], &col->v[2], scale, r, g, b);
        Gachan3DPrimitive::DrawLine(&col->v[2], &col->v[0], scale, r, g, b);
        list = list->next;
    }

    r = 0.0f;
    g = 1.0f;
    b = 0.0f;
    Gachan3DPrimitive::DrawLine(&v[0], &v[1], scale, r, g, b);
    Gachan3DPrimitive::DrawLine(&v[1], &v[2], scale, r, g, b);
    Gachan3DPrimitive::DrawLine(&v[2], &v[3], scale, r, g, b);
    Gachan3DPrimitive::DrawLine(&v[3], &v[0], scale, r, g, b);
    Gachan3DPrimitive::DrawLine(&v[4], &v[5], scale, r, g, b);
    Gachan3DPrimitive::DrawLine(&v[5], &v[6], scale, r, g, b);
    Gachan3DPrimitive::DrawLine(&v[6], &v[7], scale, r, g, b);
    Gachan3DPrimitive::DrawLine(&v[7], &v[4], scale, r, g, b);
    Gachan3DPrimitive::DrawLine(&v[0], &v[4], scale, r, g, b);
    Gachan3DPrimitive::DrawLine(&v[1], &v[5], scale, r, g, b);
    Gachan3DPrimitive::DrawLine(&v[2], &v[6], scale, r, g, b);
    Gachan3DPrimitive::DrawLine(&v[3], &v[7], scale, r, g, b);

    
}









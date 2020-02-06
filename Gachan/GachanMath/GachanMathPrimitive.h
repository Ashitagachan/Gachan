//
// GachanMathPrimitive.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANMATHPRIMITIVE_H__
#define __GACHANMATHPRIMITIVE_H__


#include "GachanMathVector.h"
    


//--------------
// 2D
//--------------
//保留 Penging


//--------------
// 3D
//--------------


class GachanMathPlane
{
public:
    Vec p;
    Vec n;
};
typedef GachanMathPlane Plane;//Short Version


class GachanMathLine
{
public:
    Vec pa, pb;
};
typedef GachanMathLine Line;//Short Version


class GachanMathSphere
{
public:
    Vec    c;
    Val    r;
};
typedef GachanMathSphere Sphere;//Short Version


class GachanMathCapsule
{
public:
#if 0
    Sphere sa;
    Sphere sb;
#else
    //こっちにした理由->
    Vec c;
    Vec axis;
    Val length;
    Val ra, rb;
#endif
};
typedef GachanMathCapsule Capsule;//Short Version

class GachanMathBox
{
public:
    Vec pa;
    Vec pb;
};
typedef GachanMathBox Box;//Short Version




class GachanMathPrimitive
{
public:
    
    //-----------------------------
    // 汎用 For General
    //-----------------------------

    static inline void PointLine(Vec p, Line  l,  Vec& op, Val& t)
    {
        Vec v = (l.pb - l.pa);
        t = ((p ^ v) - (l.pa ^ v)) / (v ^ v);

        op = l.pa + (v * t);
    }
    
    static inline void PointPlane (Vec p, Plane pl, Vec& op, Val& t)
    {
        t = ((p ^ pl.n) - (pl.p ^ pl.n)) / (pl.n ^ pl.n);
        op = p - (pl.n * t);
    }

    static inline bool LineLine (Line la, Line lb, Vec& opa, Val& ta, Vec& opb, Val& tb)
    {
        Vec va, vb;
        va = la.pb - la.pa;
        vb = lb.pb - lb.pa;
        
        Val A11, A12, A21, A22, B1, B2;

        B1 = (la.pa^va) - (lb.pa^va);
        B2 = (la.pa^vb) - (lb.pa^vb);
        A11 =   va^va;
        A12 = -(vb^va);
        A21 =   va^vb;
        A22 = -(vb^vb);
        
        Val det = A12*A21 - A11*A22;
        if (fabs(det) > ValZERO) {
            tb = (B2*A11-B1*A21) / (A12*A21 - A11*A22);
            ta = (-B1-A12*tb) / A11;

            opa = la.pa + (va * ta);
            opb = lb.pa + (vb * tb);

            return true;
        }
        return false;
    }
    
    static inline bool LinePlane(Line l, Plane pl, Vec& op, Val& t)
    {
        Vec v = l.pb - l.pa;
        Val dot = pl.n ^ v;
        if (fabs(dot) > ValZERO) {
            t = (pl.n ^ (pl.p - l.pa)) / dot;
            op = l.pa + (v * t);
            return true;
        }
        return false;
    }
        
    //-----------------------------
    // 主にコリジョンモデルで使用する For Collision Model
    //-----------------------------
    //static inline bool PointInBox(Vec p, Box b);
    //static inline bool PointInSphere(Vec p, Sphere s);
    
    static inline bool PointInTraiangle2(Vec2 p, const Vec2 p0, const Vec2 p1, const Vec2 p2)//2D
    {
        Val vx0, vx1, vx2;
        vx0 = (p1-p0) * (p-p0);
        vx1 = (p2-p1) * (p-p1);

        Val inner = vx0*vx1;
        if (inner > (Val) 0.0) {
            vx2 = (p0-p2) * (p-p2);
            inner = vx1*vx2;
            if (inner > (Val) 0.0) {
                return true;
            }
        }
        return false;
    }
    
    static inline bool PointInTraiangle(Vec p, const Vec p0, const Vec p1, const Vec p2)
    {
        Vec vx0, vx1, vx2;
        vx0 = (p1-p0) * (p-p0);
        vx1 = (p2-p1) * (p-p1);

        Val inner = vx0^vx1;
        if (inner > (Val) 0.0) {
            vx2 = (p0-p2) * (p-p2);
            inner = vx1^vx2;
            if (inner > (Val) 0.0) {
                return true;
            }
        }
        return false;
    }
    
    
    static inline bool PointInSquare2(Vec2 p, const Vec2 p0, const Vec2 p1, const Vec2 p2, const Vec2 p3)//2D
    {
        Val vx0, vx1, vx2, vx3;
        vx0 = (p1-p0) * (p-p0);
        vx1 = (p2-p1) * (p-p1);

        Val inner = vx0*vx1;
        if (inner > (Val) 0.0) {
            vx2 = (p3-p2) * (p-p2);
            inner = vx1*vx2;
            if (inner > (Val) 0.0) {
                vx3 = (p0-p3) * (p-p3);
                inner = vx2*vx3;
                if (inner > (Val) 0.0) {
                    return true;
                }
            }
        }
        return false;
    }
    static inline bool PointInSquare(Vec p, const Vec p0, const Vec p1, const Vec p2, const Vec p3)
    {
        Vec vx0, vx1, vx2, vx3;
        vx0 = (p1-p0) * (p-p0);
        vx1 = (p2-p1) * (p-p1);

        Val inner = vx0^vx1;
        if (inner > (Val) 0.0) {
            vx2 = (p3-p2) * (p-p2);
            inner = vx1^vx2;
            if (inner > (Val) 0.0) {
                vx3 = (p0-p3) * (p-p3);
                inner = vx2^vx3;
                if (inner > (Val) 0.0) {
                    return true;
                }
            }
        }
        return false;
    }

    //--------------------------------------------
    // 表面までの移動量 主に揺れものの制約で使用する For Swing Object
    //--------------------------------------------
    static inline Vec PointSphere (Vec p, Sphere s)
    {
        Vec delta = p - s.c;
        Val distance = delta.GetLength();
        if (distance < s.r) {
            Vec delta_unit = delta / distance;
            return (s.r - distance) * delta_unit;
        }
        return VecZERO;
    }
    static inline Vec PointCapsule(Vec p, Capsule cap)
    {
        Vec delta = p - cap.c;
        Val l = CLAMP( (delta ^ cap.axis), 0, cap.length);
        Vec center = cap.c + l * cap.axis;
        Sphere s;
        s.c = center;
        s.r = LERP(cap.ra, cap.rb, l / cap.length);
        return PointSphere(p, s);
    }
    static inline Vec PointPlane  (Vec p, Plane pl)
    {
        Val t = ((p^pl.n) - (p^pl.n)) / (pl.n^pl.n);
        if (t < 0.0f) {
            return -(pl.n * t);
        }
        return VecZERO;
    }

};
typedef GachanMathPrimitive Prim;//Short Version









#endif




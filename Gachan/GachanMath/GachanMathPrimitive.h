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


#define MT_DETERMINANT_LIMIT  (0.0001f)


//注意　全てGachanMath***のショートバージョン...のつもり
    
//----------------------------------
//Functions 2D
//----------------------------------
    
class Line2
{
public:
    Vec2 p0, p1;
};

class Disc
{
public:
    Vec2 c;
    Val r;
};
    
inline bool DiscDisc(const Vec2& c0, Val r0, const Vec2& c1, Val r1)
{
    Vec2 diff;
    diff = c0 - c1;
    if (diff.GetLength2() < (r0+r1)*(r0+r1)) {
        return true;
    }
    return false;
}



//check point is inside triangle
inline bool PointInTriangle(const Vec2& p0, const Vec2& p1, const Vec2& p2, const Vec2& px, Val margin = (Val)0.0)
{
    Val vx0, vx1, vx2;
    vx0 = (p1-p0) * (px-p0);
    vx1 = (p2-p1) * (px-p1);

    Val inner = vx0*vx1;
    if (inner >= (Val) margin) {
        vx2 = (p0-p2) * (px-p2);
        inner = vx1*vx2;
        if (inner >= (Val) margin) {
            inner = vx2*vx0;
            if (inner >= (Val)margin) {
                return true;
            }
        }
    }
    return false;
}

//check point is inside square
inline bool PointInSquare(const Vec2& p0, const Vec2& p1, const Vec2& p2, const Vec2& p3, const Vec2& px, Val margin = (Val)0.0)
{
    Val vx0, vx1, vx2, vx3;
    vx0 = (p1-p0) * (px-p0);
    vx1 = (p2-p1) * (px-p1);

    Val inner = vx0*vx1;
    if (inner >= (Val) margin) {
        vx2 = (p3-p2) * (px-p2);
        inner = vx1*vx2;
        if (inner >= (Val) margin) {
            vx3 = (p0-p3) * (px-p3);
            inner = vx2*vx3;
            if (inner >= (Val) margin) {
                inner = vx3*vx0;
                if (inner >= (Val)margin) {
                    return true;
                }
            }
        }
    }
    return false;
}


    
//opa = point on the line a
//opb = point on the line b
//ta = ratio of opa position on line pa2-pa1
//tb = ratio of opb position on line pb2-pb1
inline bool LineLine(const Vec2& pa1, const Vec2& pa2, const Vec2& pb1, const Vec2& pb2, Vec2& opa, Vec2& opb, Val& ta, Val& tb, Val detlimit = MT_DETERMINANT_LIMIT)
{
    Vec2 va = pa2 - pa1;
    Vec2 vb = pb2 - pb1;
    
    //pa = va * ta + pa1;
    //pb = vb * tb + pb1;
    //
    //va * ta + pa1 = vb * tb + pb1
    //
    //va * ta - vb * tb = -pa1 + pb1
    //
    // |vax  -vbx||ta|   | -pa1x + pb1x |
    // |vay  -vby||tb| = | -pa1y + pb1y |
    //
    // |ta|   |vax  -vbx|-1 | -pa1x + pb1x |
    // |tb| = |vay  -vby|   | =pa1y + pb1y |
    //
    //
    
    Val det = va.x * (-vb.y) - (-vb.x) * va.y;

    if (fabs(det) < detlimit) {
        return false;//2lines is parallel
    }


    //
    //AT = B
    //
    
    Val A11 = va.x; Val A12 = -vb.x;
    Val A21 = va.y; Val A22 = -vb.y;
    
    Val Bx = -pa1.x + pb1.x;
    Val By = -pa1.y + pb1.y;
    
    //                   | A22 -A12||Bx|
    //T = A-1 B =  1/det |-A21  A11||By|
    //
    //
    //ta = 1/det ( A22 * Bx - A12 * By)
    //tb = 1/det (-A21 * Bx + A11 * By)

    ta = 1.0f / det * ( A22 * Bx - A12 * By);
    tb = 1.0f / det * (-A21 * Bx + A11 * By);

    opa = va * ta + pa1;
    opb = vb * tb + pb1;
    
    return true;

}

inline bool LineLineLimit(const Vec2& pa1, const Vec2& pa2, const Vec2& pb1, const Vec2& pb2, Vec2& opa, Vec2& opb, Val& ta, Val& tb, Val detlimit = MT_DETERMINANT_LIMIT)
{
    if (LineLine(pa1, pa2, pb1, pb2, opa, opb, ta, tb)) {
        return (0.0f < ta && ta < 1.0f && 0.0f < tb && tb < 1.0f);
    }
    return false;
}



//t = ratio of op position on line pa1 -> pa2
//op = point on line
inline void LinePoint(const Vec2& pa1, const Vec2& pa2, const Vec2& p, Vec2& op, Val& t)
{
    Vec2 pa = (pa2 - pa1);
    t = ((p ^ pa) - (pa1 ^ pa)) / (pa ^ pa);

    op = pa1 + (pa * t);
}

inline bool LineDisc(const Vec2& pa1, const Vec2& pa2, const Vec2& c, Val r, Vec2& op)
{
    Val t;
    LinePoint(pa1, pa2, c, op, t);
    
    return ((op - c).GetLength2() < r * r);
}

    
    
//----------------------------------
//Functions 3D
//----------------------------------
    
    
class Plane
{
public:
    Vec p;
    Vec n;
};

class Line
{
public:
    Vec p0, p1;
};

class Sphere
{
public:
    Vec    c;
    Val    r;
};

class Capsule
{
public:
    Vec c;
    Vec axis;
    Val length;
    Val r0, r1;
};
    

    
    

//FOR CLOTH and SWING
//return vector to point on the surface

inline Vec SpherePoint(const Vec& position, const Vec& center, Val radius)
{
    Vec delta = position - center;
    Val distance = delta.GetLength();
    if (distance < radius) {
        return (radius - distance) * delta / distance;
    }
    return Vec_Zero;
}

inline Vec CapsulePoint(const Vec& position, const Capsule& cap)
{
    Vec delta = position - cap.c;
    Val l = CLAMP( (delta ^ cap.axis), 0, cap.length);
    Vec center = cap.c + l * cap.axis;
    return SpherePoint(position, center, LERP(cap.r0, cap.r1, l / cap.length));
}


inline Vec PlanePoint(const Vec& p, const Vec& n, const Vec& px)
{
    Val t = ((px^n) - (p^n)) / (n^n);
    if (t < 0.0f) {
        return -(n * t);
    }
    return Vec_Zero;
}


//FOR GENERAL

//t = ratio of op position on line pa1 -> pa2
//op = point on line
inline void LinePoint(const Vec& pa1, const Vec& pa2, const Vec& p, Vec& op, Val& t)
{
    Vec pa = (pa2 - pa1);
    t = ((p ^ pa) - (pa1 ^ pa)) / (pa ^ pa);

    op = pa1 + (pa * t);
}


//t = distance
//op = point on the plane
inline void PlanePoint(const Vec& p, const Vec& n, const Vec& px, Vec& op, Val& t)
{
    t = ((px^n) - (p^n)) / (n^n);
    op = px - (n * t);
}

//t = ratio of position on line p0 -> p1
//op = point on the plane
inline bool PlaneLine(const Vec& p, const Vec& n, const Vec& p0, const Vec& p1, Vec& op, Val& t)
{
    Vec p01 = p1 - p0;
    Val np01 = n ^ p01;
    if (np01 != 0.0) {
        t = (n ^ (p - p0)) / np01;
        op = p0 + (p01 * t);
        return true;
    }
    return false;
}


//return nearest point
//opa = point on the line a
//opb = point on the line b
//ta = ratio of opa position on line pa2-pa1
//tb = ratio of opb position on line pb2-pb1
inline void LineLine(const Vec& pa1, const Vec& pa2, const Vec& pb1, const Vec& pb2, Vec& opa, Vec& opb, Val& ta, Val& tb)
{
    Vec pa, pb;
    pa = pa2 - pa1;
    pb = pb2 - pb1;
    
    Val A11, A12, A21, A22, B1, B2;

    B1 = (pa^pb1) - (pa^pa1);
    B2 = (pb^pb1) - (pb^pa1);
    A11 = pa^pb;
    A12 = -(pa^pa);
    A21 = pb^pb;
    A22 = -(pb^pa);

    tb = (((A22 * B1)/A12) - B2) / (A21 - ((A22 * A11)/A12));
    ta = -(B1 + A11 * tb) / A12;

    opa = pa1 + (pa * ta);
    opb = pb1 + (pb * tb);
}


 
//check point is inside triangle
inline bool PointInTriangle(const Vec& p0, const Vec& p1, const Vec& p2, const Vec& px, Val margin = (Val)0.0)
{
    Vec vx0, vx1, vx2;
    vx0 = (p1-p0) * (px-p0);
    vx1 = (p2-p1) * (px-p1);

    Val inner = vx0^vx1;
    if (inner >= (Val) margin) {
        vx2 = (p0-p2) * (px-p2);
        inner = vx1^vx2;
        if (inner >= (Val) margin) {
            inner = vx2^vx0;
            if (inner >= (Val)margin) {
                return true;
            }
        }
    }
    return false;
}

//check point is inside square
inline bool PointInSquare(const Vec& p0, const Vec& p1, const Vec& p2, const Vec& p3, const Vec& px, Val margin = (Val)0.0)
{
    Vec vx0, vx1, vx2, vx3;
    vx0 = (p1-p0) * (px-p0);
    vx1 = (p2-p1) * (px-p1);

    Val inner = vx0^vx1;
    if (inner >= (Val) margin) {
        vx2 = (p3-p2) * (px-p2);
        inner = vx1^vx2;
        if (inner >= (Val) margin) {
            vx3 = (p0-p3) * (px-p3);
            inner = vx2^vx3;
            if (inner >= (Val) margin) {
                inner = vx3^vx0;
                if (inner >= (Val)margin) {
                    return true;
                }
            }
        }
    }
    return false;
}

inline bool LineTriangle(const Vec& p0, const Vec& p1, const Vec& p2, const Vec& l0, const Vec& l1, Vec& op, Val margin = (Val)0.0 )
{
    Vec n = (p1 - p0) * (p2 - p1);
    if (n.SetUnit()) {
        Val t;
        if (PlaneLine(p0, n, l0, l1, op, t)) {
            if (0.0f < t && t < 1.0f) {
                return PointInTriangle(p0, p1, p2, op, margin);
            }
        }
    }
    return false;
}

inline bool LineSquere(const Vec& p0, const Vec& p1, const Vec& p2, const Vec& p3, const Vec& l0, const Vec& l1, Vec& op, Val margin = (Val)0.0 )
{
    Vec n = (p1 - p0) * (p2 - p1);
    if (n.SetUnit()) {
        Val t;
        if (PlaneLine(p0, n, l0, l1, op, t)) {
            if (0.0f < t && t < 1.0f) {
                return PointInSquare(p0, p1, p2, p3, op, margin);
            }
        }
    }
    return false;
}


inline bool PointInGrid(const Vec& p, const Vec& min, const Vec& max, Val margin = (Val)0.0)
{
    //注意:marginはマイナス値
    return ((min.x + margin <= p.x && p.x <= max.x - margin) &&
            (min.y + margin <= p.y && p.y <= max.y - margin) &&
            (min.z + margin <= p.z && p.z <= max.z - margin));
}
inline bool TriangleGrid(const Vec& t0, const Vec& t1, const Vec& t2, const Vec& min, const Vec& max, Val margin = (Val)0.0)
{
    //1
    if (PointInGrid(t0, min, max, margin) ||
        PointInGrid(t1, min, max, margin) ||
        PointInGrid(t2, min, max, margin)) {
        return true;
    }

    //2 Cubeの1辺が三角形の面を通る
    Vec cube[8];
    cube[0].Set(min.x, min.y, min.z);
    cube[1].Set(min.x, max.y, min.z);
    cube[2].Set(max.x, max.y, min.z);
    cube[3].Set(max.x, min.y, min.z);
    cube[4].Set(min.x, min.y, max.z);
    cube[5].Set(min.x, max.y, max.z);
    cube[6].Set(max.x, max.y, max.z);
    cube[7].Set(max.x, min.y, max.z);

    Vec op;
    if (LineTriangle(t0, t1, t2, cube[0], cube[1], op, margin) ||
        LineTriangle(t0, t1, t2, cube[1], cube[2], op, margin) ||
        LineTriangle(t0, t1, t2, cube[2], cube[3], op, margin) ||
        LineTriangle(t0, t1, t2, cube[3], cube[0], op, margin) ||
        LineTriangle(t0, t1, t2, cube[4], cube[5], op, margin) ||
        LineTriangle(t0, t1, t2, cube[5], cube[6], op, margin) ||
        LineTriangle(t0, t1, t2, cube[6], cube[7], op, margin) ||
        LineTriangle(t0, t1, t2, cube[7], cube[4], op, margin) ||
        LineTriangle(t0, t1, t2, cube[0], cube[4], op, margin) ||
        LineTriangle(t0, t1, t2, cube[1], cube[5], op, margin) ||
        LineTriangle(t0, t1, t2, cube[2], cube[6], op, margin) ||
        LineTriangle(t0, t1, t2, cube[3], cube[7], op, margin)) {
        return true;
    }
    
    //3 三角形の1辺が、Cubeの面を通る
    if (
        LineSquere(cube[0], cube[1], cube[2], cube[3], t0, t1, op, margin) ||
        LineSquere(cube[4], cube[5], cube[6], cube[7], t0, t1, op, margin) ||
        LineSquere(cube[1], cube[5], cube[6], cube[2], t0, t1, op, margin) ||
        LineSquere(cube[0], cube[4], cube[7], cube[3], t0, t1, op, margin) ||
        LineSquere(cube[0], cube[1], cube[5], cube[4], t0, t1, op, margin) ||
        LineSquere(cube[3], cube[2], cube[6], cube[7], t0, t1, op, margin) ||
        
        LineSquere(cube[0], cube[1], cube[2], cube[3], t1, t2, op, margin) ||
        LineSquere(cube[4], cube[5], cube[6], cube[7], t1, t2, op, margin) ||
        LineSquere(cube[1], cube[5], cube[6], cube[2], t1, t2, op, margin) ||
        LineSquere(cube[0], cube[4], cube[7], cube[3], t1, t2, op, margin) ||
        LineSquere(cube[0], cube[1], cube[5], cube[4], t1, t2, op, margin) ||
        LineSquere(cube[3], cube[2], cube[6], cube[7], t1, t2, op, margin) ||

        LineSquere(cube[0], cube[1], cube[2], cube[3], t2, t0, op, margin) ||
        LineSquere(cube[4], cube[5], cube[6], cube[7], t2, t0, op, margin) ||
        LineSquere(cube[1], cube[5], cube[6], cube[2], t2, t0, op, margin) ||
        LineSquere(cube[0], cube[4], cube[7], cube[3], t2, t0, op, margin) ||
        LineSquere(cube[0], cube[1], cube[5], cube[4], t2, t0, op, margin) ||
        LineSquere(cube[3], cube[2], cube[6], cube[7], t2, t0, op, margin)) {
        return true;
    }
        
    return false;
}

    

#endif


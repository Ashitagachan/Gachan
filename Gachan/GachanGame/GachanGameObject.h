//
// GachanGameObject.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANGAMEOBJECT_H__
#define __GACHANGAMEOBJECT_H__

#include "GachanGame.h"
#include "GachanMathVector.h"


//ゲームオブジェクト Game Object
class GachanGameObject
{
    void DrawSub(const char* utf8char);
    
    enum {
        FLAG_SETMATRIX = 1<<0,
    };
    void SetFlag(unsigned int f)
    {
        flag |= f;
    }
    void ResetFlag(unsigned int f)
    {
        flag &= ~f;
    }
    bool IsFlag(unsigned int f)
    {
        return (flag & f)? true : false;
    }
    
    unsigned int  flag;

    
public:
    enum OBJECT {
        NONE,
        USER,     //ユーザーオブジェクト
        TEXT,     //テキストオブジェクト

        GRID10x10,//グリッド 10x10
        GRID20x20,//グリッド 20x20
        CUBE,     //キューブ
        SPHERE,   //球
        CONE,     //コーン
        CYLINDER, //シリンダー
        PLANE,    //板
        PYRAMID,  //ピラミッド
        TORUS,    //トーラス
        SOLID,    //ソリッド球
        SPRING,   //スプリング
        
        MARUCHAN, //マルちゃん
        UNKOCHAN, //うんこちゃん
        TOGECHAN, //トゲちゃん
        STARCHAN, //ホシちゃん
        SLIMECHAN,//スライムちゃん
        
        ROCKET,   //ロケット
        ARROW,    //やじるし
        CURSOR,   //カーソル
        BALLOON,  //ふうせん
        MISSILE,  //ミサイル
        
        BRICKA,   //レンガA
        
        ARM_UPPER_R,
        ARM_LOWER_R,
        ARM_HAND_R,

        NUM
    };

    OBJECT        object;
    
    Vec           position;
    ROTATIONORDER rotationorder;
    Vec           rotation;
    Vec           scale;
    Mat           matrix;
    Vec4          color;
    
    
    

    void Clear();
    
    //オブジェクトのセット
    void SetObject(OBJECT object);
    
    //位置のセット
    void SetPosition(Vec pos);
    void SetPosition(Val posx, Val posy, Val posz);
    Vec  GetPosition();
    
    //回転のセット
    //＋からー方向を向いて右回り Turn clockwise at the direction from + to -.
    void SetRotation(ROTATIONORDER rotorder, Vec rot);
    void SetRotation(ROTATIONORDER rotorder, Val rotx, Val roty, Val rotz);
    Vec  GetRotation();
    
    //スケールのセット
    void SetScale(Vec scl);
    void SetScale(Val sclx, Val scly, Val sclz);
    Vec  GetScale();
    
    //位置・回転・スケールを反映した行列を取得
    void SetMatrix(Mat mat);
    Mat  GetMatrix();

    //色のセット
    void SetColor(GachanGame::COLOR color, Val a = 1.0f);
    void SetColor(Vec4 color);
    void SetColor(Val r, Val g, Val b, Val a = 1.0f);
    Vec4 GetColor();

    //------------------
    //for NORMAL OBJECT
    //------------------
    
    void Draw();
    
    
    //-----------------
    //for TEXT OBJECT
    //-----------------
    Val           textsize;        //大きさ率   ratio of size
    Val           textinterval;    //水平間隔率 ratio of vertical interval
    Val           textlineinterval;//垂直間隔率 ratio of horizontal interval
    
    void SetTextParameter(Val textsize = 1.0f, Val textinterval = 1.0f, Val textlineinterval = 1.0f);
    
    void Draw(const char* utf8char, ...);//テキスト描画 (注意:u8をつける require u8)
};







#endif


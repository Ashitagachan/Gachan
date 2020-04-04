//
// Sample003.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"

//SAMPLE003.cppをビルドするにはGachanNameSpace.hのNAMESPACE定義をSAMPLE003に置き換えてください。
//To build SAMPLE003.cpp, Replace NAMESPACE definition at GachanNameSpace.h with SAMPLE003.

//Gachanサンプル紹介000-003 Introduction to Sample000-003
//https://youtu.be/TByp95BtHJA

namespace Sample003
{
    const static int stageheight = 5;//必ず奇数にすること must be odd number
    const static int stagedepth  = 11;//必ず奇数にすること must be odd number
    const static int stagewidth  = 11;//必ず奇数にすること must be odd number
    const static int stageheightcenter = stageheight/2; // = 2
    const static int stagedepthcenter  = stagedepth/2;  // = 5
    const static int stagewidthcenter  = stagewidth/2;  // = 5
    
    int stage[stageheight][stagedepth][stagewidth] =
    {
        { //y 2 最上階
            //x
            //-5             0              +5
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1 },//z +5
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0 },
            { 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 },//z 0
            { 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }//z -5
        },
        {//y 1
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
        },
        {//y 0
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
        },
        {//y -1
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0 },
            { 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0 },
            { 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0 }
        },
        {//y -2
            { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
            { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
            { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
            { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
            { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
            { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
            { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
            { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
            { 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1 },
            { 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1 },
            { 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1 }
        },
    };
    int X2WidthIdx(int x)
    {
        return x + stagewidthcenter;
    }
    int Z2DepthIdx(int z)
    {
        return -z + stagedepthcenter;
    }
    int Y2HeightIdx(int y)
    {
        return -y + stageheightcenter;
    }

    int GetStage(Val P, Val R, int ret[2])
    {
        int A = floor(P + 0.5);
        
        if (P - R < A - 0.5) {
            ret[0] = A-1;
            ret[1] = A;
            return 2;
        }
        else if (A + 0.5 < P + R) {
            ret[0] = A;
            ret[1] = A+1;
            return 2;
        }
        else {
            ret[0] = A;
            return 1;
        }
    }
    
    
    
    class MyPlayer
    {
    public:
        GachanGameObject object;
        Vec              target;
        Vec              speed;
        bool             ground;
        
        //for collision
        Val              Ry;
        Val              Rxz;
        Val              Ry2;
        
        void Clear()
        {
            object.Clear();
            object.SetObject(GachanGameObject::OBJECT::TOGECHAN);
            object.SetPosition(0, 0, 0);
            object.SetColor(GachanGame::COLOR::CYAN);
            target = object.GetPosition();
            speed.Clear();
            Ry  = 0.5;
            Rxz = 0.25;
            Ry2 = Ry;//現状はRyと同じ値を使う。now uses the same value as Ry.
            ground = false;
        }
        void KeyUp()
        {
            target.z += 1;
            object.SetRotation(ROTATIONORDER::XYZ, 0, RADIAN(180), 0);
        }
        void KeyDown()
        {
            target.z -= 1;
            object.SetRotation(ROTATIONORDER::XYZ, 0, RADIAN(0), 0);
        }
        void KeyLeft()
        {
            target.x -= 1;
            object.SetRotation(ROTATIONORDER::XYZ, 0, RADIAN(90), 0);
        }
        void KeyRight()
        {
            target.x += 1;
            object.SetRotation(ROTATIONORDER::XYZ, 0, RADIAN(270), 0);
        }
        void Stick(Val x, Val z)
        {
            Val k = 0.15;

            target.x += x * k;
            target.z += z * k;
            
            Vec pos = object.GetPosition();
            Vec dir = target - pos;
            if (dir.GetLength2() > 0.1) {
                Val radian = atan2f(-dir.x, -dir.z);//atan2そのうちにGachanで提供する予定。今は標準関数。
                object.SetRotation(ROTATIONORDER::XYZ, 0, radian, 0);
            }
        }
        void KeySpace()
        {
            Jump();
        }
        void KeyEnter()
        {
            Clear();
        }
        
        //配列のインデックス範囲を超えた値かをチェックする
        //Check if the value is beyond the index range of the array.
        bool IsOverIndex(int heightidx, int depthidx, int widthidx)
        {
            if (heightidx < 0 || stageheight <= heightidx) {
                return true;
            }
            if (depthidx < 0 || stagedepth <= depthidx) {
                return true;
            }
            if (widthidx < 0 || stagewidth <= widthidx) {
                return true;
            }
            return false;
        }

        
        //コリジョン(衝突)のチェック。ちょっと長いけどやっていることは、
        //yの上下の二方向(CheckCollisionY)、
        //xの両側の二方向(CheckCollisionX)、
        //zの両側の二方向(CheckCollisionZ)
        //の6つの同じ処理をずらずら書いているだけ。。
        //違いはちょっとgroundの処理がCheckCollisionYに入っているくらいなので、このうちの一個理解すればあとは全部同じ。
        //
        //Collision checking. It's a bit long, but what I'm doing is
        // Two directions (CheckCollisionY) above and below y
        // Bidirectional (CheckCollisionX) on both sides of x
        // Bidirectional (CheckCollisionZ) on both sides of z
        //It's just writing the same six processes
        // The difference is that the processing of the ground is just in CheckCollisionY,
        // so if you understand one of these, the rest is the same.
        
        Val CheckCollisionY(Vec P)
        {
            ground = false;
            
            Val A = floor(P.y + 0.5);
            if (speed.y > 0.0) {
                if (A + 0.5 < P.y + Ry) {
                    int Yidx = A + 1;
                    int Xidx[2];
                    int Zidx[2];
                    int Xnum = GetStage(P.x, Rxz, Xidx);
                    int Znum = GetStage(P.z, Rxz, Zidx);
                    
                    for (int z = 0; z < Znum; z++)  {
                        for (int x = 0; x < Xnum; x++) {
                            int widthidx  = X2WidthIdx(Xidx[x]);
                            int depthidx  = Z2DepthIdx(Zidx[z]);
                            int heightidx = Y2HeightIdx(Yidx);

                            if (IsOverIndex(heightidx, depthidx, widthidx)) {
                                continue;
                            }

                            if (stage[heightidx][depthidx][widthidx]) {
                                speed.y = 0.0;
                                return (A + 0.5 - Ry);//押し戻した時の位置 Position when pushed back
                            }
                        }
                    }
                }
            }
            else {
                if (P.y - Ry < A - 0.5) {
                    int Yidx = A - 1;
                    int Xidx[2];
                    int Zidx[2];
                    int Xnum = GetStage(P.x, Rxz, Xidx);
                    int Znum = GetStage(P.z, Rxz, Zidx);
                    
                    for (int z = 0; z < Znum; z++)  {
                        for (int x = 0; x < Xnum; x++) {
                            int widthidx  = X2WidthIdx(Xidx[x]);
                            int depthidx  = Z2DepthIdx(Zidx[z]);
                            int heightidx = Y2HeightIdx(Yidx);
                            
                            if (IsOverIndex(heightidx, depthidx, widthidx)) {
                                continue;
                            }

                            if (stage[heightidx][depthidx][widthidx]) {
                                speed.y = 0.0;
                                ground = true;
                                return (A - 0.5 + Ry);//押し戻した時の位置 Position when pushed back
                            }
                        }
                    }
                }
            }
            return P.y;
        }
        
        Val CheckCollisionX(Vec P)
        {
            Val A = floor(P.x + 0.5);
            if (speed.x > 0.0) {
                if (A + 0.5 < P.x + Rxz) {
                    int Xidx = A + 1;
                    int Yidx[2];
                    int Zidx[2];
                    int Ynum = GetStage(P.y, Ry2, Yidx);
                    int Znum = GetStage(P.z, Rxz, Zidx);
                    
                    for (int z = 0; z < Znum; z++)  {
                        for (int y = 0; y < Ynum; y++) {
                            int widthidx  = X2WidthIdx(Xidx);
                            int depthidx  = Z2DepthIdx(Zidx[z]);
                            int heightidx = Y2HeightIdx(Yidx[y]);
                            
                            if (IsOverIndex(heightidx, depthidx, widthidx)) {
                                continue;
                            }

                            if (stage[heightidx][depthidx][widthidx]) {
                                float ret = (A + 0.5 - Rxz);//押し戻した時の位置 Position when pushed back
                                speed.x = 0.0;
                                target.x = ret;
                                return ret;
                            }
                        }
                    }
                }
            }
            else {
                if (P.x - Rxz < A - 0.5) {
                    int Xidx = A - 1;
                    int Yidx[2];
                    int Zidx[2];
                    int Ynum = GetStage(P.y, Ry2, Yidx);
                    int Znum = GetStage(P.z, Rxz, Zidx);
                    
                    for (int z = 0; z < Znum; z++)  {
                        for (int y = 0; y < Ynum; y++) {
                            int widthidx  = X2WidthIdx(Xidx);
                            int depthidx  = Z2DepthIdx(Zidx[z]);
                            int heightidx = Y2HeightIdx(Yidx[y]);
                            
                            if (IsOverIndex(heightidx, depthidx, widthidx)) {
                                continue;
                            }

                            if (stage[heightidx][depthidx][widthidx]) {
                                float ret = (A - 0.5 + Rxz);//押し戻した時の位置 Position when pushed back
                                speed.x = 0.0;
                                target.x = ret;
                                return ret;
                            }
                        }
                    }
                }
            }
            return P.x;
        }
        
        Val CheckCollisionZ(Vec P)
        {
            Val A = floor(P.z + 0.5);
            if (speed.z > 0.0) {
                if (A + 0.5 < P.z + Rxz) {
                    int Zidx = A + 1;
                    int Yidx[2];
                    int Xidx[2];
                    int Ynum = GetStage(P.y, Ry2, Yidx);
                    int Xnum = GetStage(P.x, Rxz, Xidx);
                    
                    for (int x = 0; x < Xnum; x++)  {
                        for (int y = 0; y < Ynum; y++) {
                            int widthidx  = X2WidthIdx(Xidx[x]);
                            int depthidx  = Z2DepthIdx(Zidx);
                            int heightidx = Y2HeightIdx(Yidx[y]);
                            
                            if (IsOverIndex(heightidx, depthidx, widthidx)) {
                                continue;
                            }

                            if (stage[heightidx][depthidx][widthidx]) {
                                float ret = (A + 0.5 - Rxz);//押し戻した時の位置 Position when pushed back
                                speed.z = 0.0;
                                target.z = ret;
                                return ret;
                            }
                        }
                    }
                }
            }
            else {
                if (P.z - Rxz < A - 0.5) {
                    int Zidx = A - 1;
                    int Yidx[2];
                    int Xidx[2];
                    int Ynum = GetStage(P.y, Ry2, Yidx);
                    int Xnum = GetStage(P.x, Rxz, Xidx);
                    
                    for (int x = 0; x < Xnum; x++)  {
                        for (int y = 0; y < Ynum; y++) {
                            int widthidx  = X2WidthIdx(Xidx[x]);
                            int depthidx  = Z2DepthIdx(Zidx);
                            int heightidx = Y2HeightIdx(Yidx[y]);
                            
                            if (IsOverIndex(heightidx, depthidx, widthidx)) {
                                continue;
                            }

                            if (stage[heightidx][depthidx][widthidx]) {
                                float ret = (A - 0.5 + Rxz);//押し戻した時の位置 Position when pushed back
                                speed.z = 0.0;
                                target.z = ret;
                                return ret;
                            }
                        }
                    }
                }
            }
            return P.z;
        }

        void Jump()
        {
            if (ground) {
                speed.y = 0.15;
            }
        }

        void Exec()
        {
            Vec pos = object.GetPosition();
            
            pos.y = CheckCollisionY(pos);
            pos.x = CheckCollisionX(pos);
            pos.z = CheckCollisionZ(pos);

            //--------------------------------
            //超簡単スムーズ移動!!
            //Super Simple Smooth Movement!!
            //
            //解説はこちら。 Explanation is here.
            // https://youtu.be/ncpIfvq3I98
            //--------------------------------
            Val smooth = 0.1;
            speed.x = (target.x - pos.x) * smooth;
            speed.z = (target.z - pos.z) * smooth;
            
            const Val gravity = 0.005;//重力加速度
            speed.y -= gravity;

            pos += speed;
            object.SetPosition(pos);
        }
        void Draw()
        {
            object.Draw();
        }
    };
    
    
    class Gachan
    {
    public:
        GachanGame game;
        GachanGameKeyboard keyboard;
		GachanGameController controller;
        GachanGameCamera camera;
        GachanGameLightAmbient lightambient;
        GachanGameLightDirection lightdirection;
        GachanGameObject block[stageheight][stagedepth][stagewidth];
        MyPlayer player;
    };
    static Gachan* gachan;
    

    

    void Initialize()
    {
    }

    void Create()
    {
        gachan = new Gachan;

        gachan->game.SetBackgroundColor(0.7, 0.7, 1);
        
        gachan->camera.SetPosition(0, 5, -17);
        gachan->camera.SetTarget(0, 0, 0);
        gachan->camera.SetAngle(RADIAN(30));
        
        gachan->lightambient.SetColor(0.4, 0.4, 0.4);
        
        gachan->lightdirection.SetColor(0.4, 0.4, 0.4);
        gachan->lightdirection.SetDirection(-1, -1, 1);

        for (int h = 0; h < stageheight; h++) {
            for (int d = 0; d < stagedepth; d++) {
                for (int w = 0; w < stagewidth; w++) {
                    gachan->block[h][d][w].Clear();
                    gachan->block[h][d][w].SetPosition(w-5, 2-h, 5-d);
                    gachan->block[h][d][w].SetObject(GachanGameObject::OBJECT::BRICKA);
                    gachan->block[h][d][w].SetColor(0.4, 0.1, 0.1);
                }
            }
        }
        gachan->player.Clear();
    }

    void Update()
    {
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::UP))  {
            gachan->player.KeyUp();
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::DOWN))  {
            gachan->player.KeyDown();
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::LEFT))  {
            gachan->player.KeyLeft();
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::RIGHT))  {
            gachan->player.KeyRight();
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::SPACE))  {
            gachan->player.KeySpace();
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::ENTER))  {
            gachan->player.KeyEnter();
        }
        if (gachan->controller.GetAvailable(0)) {
            Val x, y;
            x = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LX);
            y = gachan->controller.GetValue(0, GachanGameControllerDevice::STICK_LY);
            gachan->player.Stick(x, y);
            
            if (gachan->controller.GetPush(0, GachanGameControllerDevice::A)) {
                gachan->player.KeySpace();
            }
            if (gachan->controller.GetPush(0, GachanGameControllerDevice::B)) {
                gachan->player.KeyEnter();
            }
        }
        gachan->player.Exec();
    }

    void Render()
    {
        gachan->camera.SetCamera();

        gachan->lightambient  .SetLight();
        gachan->lightdirection.SetLight();

        for (int h = 0; h < stageheight; h++) {
            for (int d = 0; d < stagedepth; d++) {
                for (int w = 0; w < stagewidth; w++) {
                    if (stage[h][d][w])  {
                        gachan->block[h][d][w].Draw();
                    }
                }
            }
        }

        gachan->player.Draw();
    }

    void Release()
    {
        delete gachan;
    }

    void Finalize()
    {
    }
}





//
// MemoryAndTask.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan.h"

//MemoryAndTask.cppをビルドするにはGachanNameSpace.hのNAMESPACE定義をMemoryAndTaskに置き換えてください。
//To build MemoryAndTask.cpp, Replace NAMESPACE definition at GachanNameSpace.h with MemoryAndTask.



namespace MemoryAndTask
{




    class MyGameTaskChild : public GachanGameTask
    {
    public:
    
        GachanGameObject text;
        Vec3 speed;
        UInt time;
        UInt killtime;
    
        MyGameTaskChild()
        {
            GachanGame::Log("Constructor\n");
        }
        ~MyGameTaskChild()
        {
            GachanGame::Log("Destructor\n");
        }
    
        void Added()
        {
            GachanGame::Log("Added\n");
        }
        void Removed()
        {
            GachanGame::Log("Removed\n");
        }
    
        void Clear()
        {
            GachanGameTask::Clear();
        
            text.Clear();
            text.SetObject(GachanGameObject::OBJECT::TEXT);
            text.SetColor(GachanGame::COLOR::WHITE);
            text.SetTextParameter(0.5f);
        
            speed.Clear();
            time     = 0;
            killtime = 0;
        }

        void Exec(Int arg)
        {
            Vec3 pos = text.GetPosition();
            pos += speed;
            text.SetPosition(pos);
#if 1
            time++;
            if (time > killtime) {
                time = 0;
                SetKill();
            }
#endif
        }
        void Draw(Int arg)
        {
            text.Draw(u8"子");
        }
    };


    class MyGameTaskParent : public GachanGameTask
    {
    public:
    
        GachanGameObject text;
        Val  angle;
        UInt time;
    
        void Clear()
        {
            GachanGameTask::Clear();
        
            text.Clear();
            text.SetObject(GachanGameObject::OBJECT::TEXT);
            text.SetColor(GachanGame::COLOR::WHITE);
            text.SetTextParameter(0.5f);
        
            angle = 0.0f;
            time  = 0;
        }
    
        void Exec(Int arg)
        {
            angle += RADIAN(1.0f);
            if (angle > PI2) {
                angle -= PI2;
            }
        
            float r = 2.0f;
            Vec pos;
            pos.Clear();
            pos.x = r * cosf(angle);
            pos.y = r * sinf(angle);
            text.SetPosition(pos);

        
            time++;
            if (time > 30) {
                time = 0;
                //子供のタスクを生成 Create child task
                MyGameTaskChild* child = new(manager) MyGameTaskChild();
                if (child) {
                    child->Clear();
                    child->text.SetPosition(pos);
                    child->speed    = pos / 100.0f;
                    child->killtime = Math::RandomInt(1*60, 5*60);
                    child->AddToManager(1);
                }
            }
        }
        
        void Draw(Int arg)
        {
            text.Draw(u8"親");
        }
    };



    class Gachan
    {
    public:
        GachanGame game;
        GachanGameKeyboard keyboard;
        GachanGameController controller;
        GachanGameCamera camera;
        GachanGameObject text;

        GachanGameTaskManager taskmanager;
    };
    static Gachan* gachan;



    
    void Initialize()
    {
        //GachanGameMemory::Test();
    }
    
    void Create()
    {
        gachan = new Gachan;
        
        gachan->game.SetBackgroundColor(0.1, 0.1, 0.2);
        
        gachan->camera.SetPosition(0, 0, -10);
        gachan->camera.SetTarget(0, 0, 0);
        gachan->camera.SetAngle(RADIAN(45));
        
        gachan->text.Clear();
        gachan->text.SetObject(GachanGameObject::OBJECT::TEXT);
        gachan->text.SetColor(GachanGame::COLOR::WHITE);
        gachan->text.SetTextParameter(0.5f);
        gachan->text.SetPosition(-5, 2, 0.0);

        gachan->taskmanager.Create(sizeof(MyGameTaskParent) + sizeof(MyGameTaskChild) * 32);
        
        MyGameTaskParent* parent = new(&gachan->taskmanager) MyGameTaskParent;
        if (parent) {
            parent->Clear();
            parent->AddToManager(0);
        }
    }
    
    void Update()
    {
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::SPACE))  {
            GachanGame::Log("KillKind(1)\n");
            gachan->taskmanager.KillKind(1);
        }
        if (gachan->keyboard.GetSystemKey(GachanGameKeyboard::KEY::ENTER))  {
            GachanGame::Log("KillAll()\n");
            gachan->taskmanager.KillAll();
        }
        if (gachan->controller.GetAvailable(0)) {
            if (gachan->controller.GetPush(0, GachanGameControllerDevice::A)) {
                GachanGame::Log("KillKind(1)\n");
                gachan->taskmanager.KillKind(1);
            }
            if (gachan->controller.GetPush(0, GachanGameControllerDevice::B)) {
                GachanGame::Log("KillAll()\n");
                gachan->taskmanager.KillAll();
            }
        }
        
        gachan->taskmanager.Exec(0);
        gachan->taskmanager.Exec(1);

    }
    
    void Render()
    {
        gachan->camera.SetCamera();
        
        gachan->taskmanager.Draw(0);
        gachan->taskmanager.Draw(1);

        Int numtask0 = gachan->taskmanager.GetTaskNum(0);
        Int numtask1 = gachan->taskmanager.GetTaskNum(1);
        UInt usedmemory = gachan->taskmanager.Pool.GetUsedSize();
        UInt poolmemory = gachan->taskmanager.Pool.GetPoolSize();
        
        gachan->text.Draw(u8"TASK:%d MEMORY:%d/%d", numtask0 + numtask1, usedmemory, poolmemory);

    }
    
    void Release()
    {
        gachan->taskmanager.Release();

        delete gachan;
    }
    
    void Finalize()
    {
    }
}











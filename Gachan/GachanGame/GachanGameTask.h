//
// GachanGameTask.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANGAMETASK_H__
#define __GACHANGAMETASK_H__

#include "GachanGameMemory.h"


class GachanGameTaskManager;
class GachanGameTask
{
    friend class GachanGameTaskManager;
    
    //GachanGameTask継承クラスからは見えない
    //Invisible from GachanGameTask inheritance class
    
    Int kind;
    UInt flag;

    GachanGameTask* next;
    GachanGameTask* prev;
    
    GachanGameTaskManager* manager;
    
public:

    virtual ~GachanGameTask() {}
	
    void Clear();
    
    void AddToManager(int kind);
    void RemoveFromManager();
    
	virtual void Added() {}
    virtual void Removed() {}
    
    bool IsAdded();
    
    
    //タスク内部からはこちらを使う。タスクループでKIllされる。
    //Use this from within a task. This will be killed in the task loop.
    void SetKill()
    {
        SetFlag(FLAG_KILL);
    }
    
	virtual void Exec(Int arg) {}
	virtual void Draw(Int arg) {}

	enum {
		FLAG_NONE	= 0,
		FLAG_NOEXEC = 1<<0,
		FLAG_NODRAW = 1<<1,
		FLAG_KILL	= 1<<2,
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

	void* operator new(size_t size, void* manager) throw();//最近のC++のnewではNULLが返らないのでthrow()が必要
	void operator delete(void* ptr, void* manager) throw();//new引数の対delete
    
    void operator delete(void* ptr);//実際使うのはこっち
};


class GachanGameTaskManager
{
public:
    GachanGameMemoryPool Pool;

	bool Create(UInt size, unsigned long long align = 8);
	void Release();

	const static Int Kinds = 64;
	GachanGameTask* Root[Kinds];
    

	void Add(Int kind, GachanGameTask* task);//多重登録禁止 Multiple Registration Prohibited
	void Remove(GachanGameTask* task);
    
	bool IsAdded(GachanGameTask* task);
    bool IsAdded(Int kind, GachanGameTask* task);
    
    Int GetTaskNum(Int kind);

	void Exec(Int kind, Int arg = 0);
    
    void Kill(GachanGameTask* task);
    void KillKind(int kind);
    void KillAll();
    
	void Draw(Int kind, Int arg = 0);
};







#endif

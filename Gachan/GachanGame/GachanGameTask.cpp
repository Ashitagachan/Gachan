//
// GachanGameTask.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "GachanGame.h"
#include "GachanGameMemory.h"
#include "GachanGameTask.h"




void GachanGameTask::Clear()
{
	kind = -1;
	flag = 0;
	next = (GachanGameTask*) 0;
	prev = (GachanGameTask*) 0;
}

bool GachanGameTask::IsAdded()
{
    return (kind >= 0)? true : false;
}

void GachanGameTask::AddToManager(int kind)
{
    manager->Add(kind, this);
}
void GachanGameTask::RemoveFromManager()
{
    manager->Remove(this);
}



void* GachanGameTask::operator new(size_t size, void* manager) throw()
{
    GachanGameTask* task = (GachanGameTask*) ((GachanGameTaskManager*)manager)->Pool.Alloc(size);
    if (task) {
        task->manager = (GachanGameTaskManager*)manager;
    }
    return (void*)task;
}
void GachanGameTask::operator delete(void* ptr, void* manager) throw()
{
    if (manager) {
        ((GachanGameTaskManager*)manager)->Pool.Free(ptr);
    }
}

void GachanGameTask::operator delete(void* ptr)
{
    if (ptr) {
        GachanGameTask* task = (GachanGameTask*) ptr;
        GachanGameTaskManager* manager = task->manager;
        if (manager) {
            manager->Pool.Free(ptr);
        }
    }
}





bool GachanGameTaskManager::Create(UInt size, unsigned long long align)
{
	for (Int i = 0; i < GachanGameTaskManager::Kinds; i++) {
		Root[i] = NULL;
	}
	return Pool.Create(size, align);
}



void GachanGameTaskManager::Release()
{
	Pool.Release();
    
    for (Int i = 0; i < GachanGameTaskManager::Kinds; i++) {
        Root[i] = NULL;
    }
}

void GachanGameTaskManager::Add(Int kind, GachanGameTask* task)
{
#if 1
    //DEBUG
    if (task == NULL) {
        GachanGame::Log("GachanGameTaskManager::Add task == NULL\n");
        GACHANGAMESTOP;
    }
    if (task->manager == 0) {
        //デフォルトコンストラクタでゼロクリアされているか、そもそもnewされてないか
        GachanGame::Log("GachanGameTaskManager::Add task->manager == NULL\n");
        GACHANGAMESTOP;
    }
#endif
    
	if (task && task->kind == -1 && task->manager == this) {
        //listに存在しない
        task->kind = kind;
        if (Root[kind]) {
            Root[kind]->prev = task;
            task->next = Root[kind];
            task->prev = (GachanGameTask*) 0;
            Root[kind] = task;
        }
        else {
            Root[kind] = task;
            Root[kind]->next = (GachanGameTask*) 0;
            Root[kind]->prev = (GachanGameTask*) 0;
        }
        task->Added();
	}
}

void GachanGameTaskManager::Remove(GachanGameTask* task)
{
	if (task && task->kind >= 0 && task->manager == this) {
		Int kind = task->kind;
		if (Root[kind] == task) {
			Root[kind] = Root[kind]->next;
			if (Root[kind]) {
				Root[kind]->prev = (GachanGameTask*) 0;
			}
		}
		else {
			if (task->prev) {
				task->prev->next = task->next;
                if (task->next) {
                    task->next->prev = task->prev;
                }
			}
            else {
                //listに存在しない
                return;
            }
		}
        task->Clear();
        task->Removed();
	}
}



bool GachanGameTaskManager::IsAdded(Int kind, GachanGameTask* task)
{
	GachanGameTask* taskloop = Root[kind];
	while (taskloop) {
		if (taskloop == task) {
			return true;
		}
		taskloop = taskloop->next;
	}
	return false;
}
bool GachanGameTaskManager::IsAdded(GachanGameTask* task)
{
    if (task && task->kind >= 0) {
        return IsAdded(task->kind, task);
    }
    return false;
}

Int GachanGameTaskManager::GetTaskNum(Int kind)
{
    Int ret = 0;
    GachanGameTask* taskloop = Root[kind];
    while (taskloop) {
        ret++;
        taskloop = taskloop->next;
    }
    return ret;
}



void GachanGameTaskManager::Exec(Int kind, Int arg)
{
	GachanGameTask* taskloop = Root[kind];
	while (taskloop) {
		if (taskloop->IsFlag(GachanGameTask::FLAG_NOEXEC) == false) {
			taskloop->Exec(arg);
		}
		if (taskloop->IsFlag(GachanGameTask::FLAG_KILL)) {
			GachanGameTask* taskkill = taskloop;
			taskloop = taskloop->next;
            Kill(taskkill);
			continue;
		}
		taskloop = taskloop->next;
	}
}



void GachanGameTaskManager::Kill(GachanGameTask* taskkill)
{
    if (taskkill) {
        if (taskkill->IsAdded()) {
            Remove(taskkill);
        }
		delete taskkill;
    }
}

void GachanGameTaskManager::KillKind(int kind)
{
    //Exec()のFLAG_KILLと同じ
    GachanGameTask* taskloop = Root[kind];
    while (taskloop) {
        GachanGameTask* taskkill = taskloop;
        taskloop = taskloop->next;
        Kill(taskkill);
    }
}

void GachanGameTaskManager::KillAll()
{
    for (int kind = 0; kind < Kinds; kind++) {
        if (Root[kind]) {
            KillKind(kind);
        }
    }
}


void GachanGameTaskManager::Draw(Int kind, Int arg)
{
	GachanGameTask* taskloop = Root[kind];
	while (taskloop) {
		if (taskloop->IsFlag(GachanGameTask::FLAG_NODRAW) == false) {
			taskloop->Draw(arg);
		}
		taskloop = taskloop->next;
	}
}








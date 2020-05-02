//
// GachanGameMemory.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include <stdlib.h>
#include <memory.h>
#include "GachanGame.h"
#include "GachanGameMemory.h"





bool GachanGameMemory::Create(UInt size, unsigned long long align)
{
	pool = (UChar*) malloc(size);
	poolsize  = size;
	alignment = align;

	GachanGameMemoryHead* headroot = (GachanGameMemoryHead*) pool;
	headroot->size = 0;
	headroot->next = 0;
	headroot->addr = (UChar*)headroot + sizeof(GachanGameMemoryHead);

	return (pool != (UChar*) 0);
}

void GachanGameMemory::Release()
{
	if (pool) {
		free(pool); 
		pool = (UChar*) 0;
	}
}

void* GachanGameMemory::Alloc(size_t size)
{
	GachanGameMemoryHead* headwalk = (GachanGameMemoryHead*) pool;

	while (headwalk) {
		UChar* nexthead = headwalk->next;
		if (nexthead == (UChar*)0) {
			nexthead = pool + poolsize;
		}
		UChar* empaddr = (UChar*)headwalk->addr + headwalk->size; 
		if ((UInt)((UChar*)nexthead - empaddr) > sizeof(GachanGameMemoryHead) + alignment + (UInt)size ) {
			GachanGameMemoryHead* head	= (GachanGameMemoryHead*) empaddr;
			head->size		= (UInt)size;
			head->next		= headwalk->next;
			headwalk->next	= (UChar*)head;
            
            //unsigned long is 64bit on 64bit environment
			//head->addr = (UChar*) (((ULong)head + sizeof(GachanGameMemoryHead) + (alignment-1)) & ~(alignment-1));
            
            //use (unsigned long long) because (unsigned long) has different byte size between windows(intel) and iOS(arm)
            head->addr = (UChar*) (((unsigned long long)head + sizeof(GachanGameMemoryHead) + (alignment-1)) & ~(alignment-1));

			return (void*)head->addr;
		}
		headwalk = (GachanGameMemoryHead*)headwalk->next;
	}
	return (void*)0;
}

void GachanGameMemory::Free(void* ptr)
{
	if (!ptr) {
		return;
	}
	GachanGameMemoryHead* headprev = (GachanGameMemoryHead*) pool;
	GachanGameMemoryHead* headwalk = (GachanGameMemoryHead*) headprev->next;

	while (headwalk) {
		if (ptr == headwalk->addr) {
			headprev->next = headwalk->next;
			break;
		}
		headprev = headwalk;
		headwalk = (GachanGameMemoryHead*)headwalk->next;
	}
}

UInt GachanGameMemory::GetUsedSize()
{
    UInt used = 0;
    GachanGameMemoryHead* headwalk = (GachanGameMemoryHead*) pool;

    while (headwalk) {
        used += sizeof(GachanGameMemoryHead);
        used += headwalk->size;
        headwalk = (GachanGameMemoryHead*)headwalk->next;
    }
    return used;
}

UInt GachanGameMemory::GetPoolSize()
{
    return poolsize;
}



void GachanGameMemory::Test()
{
    struct Table
    {
        void* addr;
        UInt  size;
    };
    
    const static int poolsize = 1024;
    const static int tablenum = 128;
    const static int maxsize  = 256;
    const static int maxtest  = 1024 * 16;

    GachanGameMemory testmemory;
    testmemory.Create(poolsize);

    Table table[tablenum];
    memset(table, 0, sizeof(table));
    
    for (int test = 0; test < maxtest; test++) {
        
        int index = RandomInt(0, tablenum-1);

        bool change = false;
        if (table[index].addr) {
            testmemory.Free(table[index].addr);
            GachanGame::Log("%d: -%d", test, table[index].size);
            table[index].addr = NULL;
            table[index].size = 0;
            change = true;
        }
        else {
            int size = RandomInt(1, maxsize);
            table[index].addr = testmemory.Alloc(size);
            if (table[index].addr) {
                table[index].size = size;
                memset(table[index].addr, 0xFF, table[index].size);
                GachanGame::Log("%d +%d", test, table[index].size);
                change = true;
            }
            else {
                //printf(" +0");
            }
        }
        if (change) {
            UInt used = testmemory.GetUsedSize();
            GachanGame::Log(" => %d\n", used);
        }
    }
    
    GachanGame::Log("END TEST\n");

    for (int index = 0; index < tablenum; index++) {
        if (table[index].addr) {
            testmemory.Free(table[index].addr);
            table[index].addr = NULL;
            table[index].size = 0;
        }
    }
    UInt used = testmemory.GetUsedSize();
    GachanGame::Log("FINAL %d\n", used);

    testmemory.Release();

    
    
}



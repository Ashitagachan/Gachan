//
// GachanGameMemory.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include <stdlib.h>
#include <memory.h>
#include "GachanGameMemory.h"





bool GachanGameMemoryPool::Create(UInt size, unsigned long long align)
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

void GachanGameMemoryPool::Release()
{
	if (pool) {
		free(pool); 
		pool = (UChar*) 0;
	}
}

void* GachanGameMemoryPool::Alloc(size_t size)
{
	GachanGameMemoryHead* headwalk = (GachanGameMemoryHead*) pool;

	while (headwalk) {
		UChar* nexthead = headwalk->next;
		if (nexthead == (UChar*)0) {
			nexthead = pool + poolsize;
		}
		UChar* empaddr = (UChar*)headwalk->addr + headwalk->size; 
		if ((UInt)((UChar*)nexthead - empaddr) > (UInt)size + alignment ) {
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

void GachanGameMemoryPool::Free(void* ptr)
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

UInt GachanGameMemoryPool::GetUsedSize()
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

UInt GachanGameMemoryPool::GetPoolSize()
{
    return poolsize;
}



//
// GachanGameMemory.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANGAMEMEMORY_H__
#define __GACHANGAMEMEMORY_H__

#include "GachanMath.h"



class GachanGameMemoryHead
{
public:
	UInt size;
	UChar* next;
	UChar* addr;
};

class GachanGameMemory
{
	UChar* pool;
	UInt poolsize;
	unsigned long long alignment;
public:
	bool Create(UInt size, unsigned long long align = 8);
	void Release();

	void* Alloc(size_t size);
	void Free(void* ptr);
    
    UInt GetUsedSize();
    UInt GetPoolSize();
};







#endif

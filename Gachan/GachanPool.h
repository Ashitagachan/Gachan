//
// GachanPool.h  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANPOOL_H__
#define __GACHANPOOL_H__

#include <stdlib.h>

class GachanPool
{
    unsigned long long totalsize;
    unsigned char* pool;
    unsigned char* ptr;
public:

    void Create(unsigned int size)
    {
        totalsize = size;
        pool = (unsigned char*)malloc((size_t)totalsize);
        ptr = pool;
    }

    void Release()
    {
        if (pool) {
            free(pool);
            pool = NULL;
        }
    }

    void* Alloc(unsigned long long size)
    {
        void* ret;
        
        if ((unsigned long long)(ptr+size) < (unsigned long long)(pool+totalsize)) {
            ret = (void*) ptr;
            ptr += size;
            return ret;
        }
        else {
            return NULL;
        }
    }
    void FreeAll()
    {
        ptr = pool;
    }
    UInt64 GetSize()
    {
        return (UInt64) (ptr - pool);
    }
};

#endif

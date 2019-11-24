//
// GachanMETALVertexIndex.mm
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#if MAC
#import <Cocoa/Cocoa.h>
#else
#import <UIKit/UIKit.h>
#endif
#include <Metal/Metal.h>

#include "GachanMETALBase.h"
#include "Gachan3DObject.h"



#define BUFFER_OFFSET(i) ((char *)NULL + (i))



    
    
    void Gachan3DVertex::Create()
    {
        if (vif == 0) {
            
            unsigned int vertsize = vertexnum * Gachan3DVertex::Stride[vertextype];
            
            id<MTLDevice> device = [[GachanMetalBase sharedInstance] getDevice];
            
            //macの時は、SharedからPrivateへ転送した方が良い。
            //Metal Best Practices Guide
            //https://developer.apple.com/library/archive/documentation/3DDrawing/Conceptual/MTLBestPracticesGuide/ResourceOptions.html#//apple_ref/doc/uid/TP40016642-CH17-SW1
            id<MTLBuffer> vb = [device newBufferWithLength:vertsize options:MTLResourceStorageModeShared];
            
            // Copy the vertex data into the vertex buffer by accessing a pointer via
            // the buffer's `contents` property
            //unsigned long is 64bit on 64bit environment
            unsigned char* v = (unsigned char*) vertex;
            VertexVN* vertexbuffer = (VertexVN*) v;
            memcpy(vb.contents, vertexbuffer, vertsize);
            
            //NSLog(@"vb %@", vb);
            
            vif = (__bridge_retained void*) vb;
            
            //NSLog(@"vif %llx", (unsigned long long)vif);
            
            //注意　これを生かしてしまうと、retainedしたのが解放されてしまう。。
            //id<MTLBuffer> testvb = (__bridge_transfer id<MTLBuffer>) vif;
            //NSLog(@"testvb %@", testvb);
        }
    }
    
    void Gachan3DVertex::Release()
    {
        if (vif) {
            id<MTLBuffer> vb = (__bridge_transfer id<MTLBuffer>) vif;
            vb = NULL;
            vif = 0;
        }
    }
    
    
    int Gachan3DIndex::Size()
    {
        return sizeof(Gachan3DIndexType);
    }
    
    
    void* Gachan3DIndex::Create(Gachan3DIndexType* index, unsigned int indexnum)
    {
        void* iif;

        unsigned int indexsize = indexnum * Gachan3DIndex::Size();
        
        id<MTLDevice> device = [[GachanMetalBase sharedInstance] getDevice];
        
        //macの時は、SharedからPrivateへ転送した方が良い。
        //Metal Best Practices Guide
        //https://developer.apple.com/library/archive/documentation/3DDrawing/Conceptual/MTLBestPracticesGuide/ResourceOptions.html#//apple_ref/doc/uid/TP40016642-CH17-SW1
        id<MTLBuffer> ib = [device newBufferWithLength:indexsize options:MTLResourceStorageModeShared];
        
        //unsigned long is 64bit on 64bit environment
        unsigned char* i = (unsigned char*) index;
        GLushort* indexbuffer = (GLushort*) i;
        memcpy(ib.contents, indexbuffer, indexsize);
        iif = (__bridge_retained void*) ib;
        
        return iif;
    }
    
    void Gachan3DIndex::Release(void* iif)
    {
        id<MTLBuffer> ib = (__bridge_transfer id<MTLBuffer>) iif;
        ib = NULL;
        iif = (void*) 0;//これは意味ないけどNULLクリアは呼び出し元で行っている。
    }
    
    
    
    










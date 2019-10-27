//
// GachanMETALBase.h
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//


#ifndef __GACHANMETALBASE_H__
#define __GACHANMETALBASE_H__

#if MAC
#import <Cocoa/Cocoa.h>
#else
#import <UIKit/UIKit.h>
#endif
#import <Metal/Metal.h>
#import <QuartzCore/QuartzCore.h>



@interface GachanMetalBase : NSObject
{
}

+ (GachanMetalBase *)sharedInstance;
+ (void) releaseInstance;

//注意：iOSの場合、実機でないとCAMetalLayerが定義されていないとエラーになるので実機をつないで実機ターゲットを選ぶ必要あり。。これ不便なんですけど。。
#if MAC
- (CAMetalLayer*) metalWithView:(NSView*)view target:(id)target action:(SEL)action;
#else
- (CAMetalLayer*) metalWithView:(UIView*)view target:(id)target action:(SEL)action;
#endif
- (id<MTLDevice>) getDevice;
- (CAMetalLayer*) getLayer;
- (CGSize)        getSize;
- (void)          start;
- (void)          end;

@end




#endif








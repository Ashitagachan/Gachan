//
// GachanMETALBase.mm
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "GachanMETALPass.h"
#include "GachanMETALBase.h"
#include "Gachan3DCamera.h"


@implementation GachanMetalBase
{
    id<MTLDevice>              device;
    id<MTLCommandQueue>        commandQueue;
    CAMetalLayer*              metalLayer;
#if MAC
    CVDisplayLinkRef           displayLink;
#else
    CADisplayLink*             displayLink;
#endif
    
    SEL renderFuncCallback;
#ifdef NOUSE_ARC
    id renderLoopTarget;
#else
    id __weak renderFuncTarget;
#endif
}

static GachanMetalBase* GachanMetalBaseSharedInstance;
+ (GachanMetalBase *)sharedInstance
{
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        GachanMetalBaseSharedInstance = [[GachanMetalBase alloc] init];
    });
    return GachanMetalBaseSharedInstance;
}
+ (void) releaseInstance
{
    GachanMetalBaseSharedInstance = nil;
}

- (id)init
{
    self = [super init];
    return self;
}

- (void) dealloc
{
    GachanMetalPass::Release();
    metalLayer = NULL;
}

#if MAC
//macOSにはiOSにあるCADisplayLinkは存在しなくて、代わりにCVDisplayLinkなるものを使う。
static CVReturn renderloop(CVDisplayLinkRef displayLink,
                           const CVTimeStamp *inNow,
                           const CVTimeStamp *inOutputTime,
                           CVOptionFlags flagsIn,
                           CVOptionFlags *flagsOut,
                           void *displayLinkContext);
- (CAMetalLayer*) metalWithView:(NSView*)view target:(id)target action:(SEL)action
#else
- (CAMetalLayer*) metalWithView:(UIView*)view target:(id)target action:(SEL)action
#endif
{
    renderFuncTarget   = target;
    renderFuncCallback = action;
    
    // MTLDeivceの生成
    device = MTLCreateSystemDefaultDevice();
    
    // CAMetalLayerの生成
    metalLayer = [CAMetalLayer layer];
    metalLayer.device          = device;
    metalLayer.pixelFormat     = MTLPixelFormatBGRA8Unorm;
    metalLayer.framebufferOnly = YES;
#if MAC
    metalLayer.frame           = view.layer.frame;
#else
    metalLayer.frame           = view.frame;
    
    UIScreen* screen = [UIScreen mainScreen];
    CGSize drawableSize = view.bounds.size;
    drawableSize.width  *= screen.nativeScale;
    drawableSize.height *= screen.nativeScale;
    metalLayer.drawableSize = drawableSize;
#endif
    
    [view.layer addSublayer:metalLayer];
    
    
    GachanMetalPass::Create();
    
    return metalLayer;
}

- (void) start
{
    //DISPLAY LINK
#if MAC
    //CVDisplayLinkRef    displayLink;
    CGDirectDisplayID   displayID = CGMainDisplayID();
    CVReturn            error = kCVReturnSuccess;
    error = CVDisplayLinkCreateWithCGDisplay(displayID, &displayLink);
    if (error) {
        NSLog(@"DisplayLink created with error:%d", error);
        displayLink = NULL;
    }
    CVDisplayLinkSetOutputCallback(displayLink, renderloop, (__bridge void *)self);
    CVDisplayLinkStart(displayLink);
#else
    displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(renderloop)];
    [displayLink addToRunLoop:NSRunLoop.mainRunLoop forMode:NSDefaultRunLoopMode];
#endif
}

- (void) end
{
#if MAC
    CVDisplayLinkStop(displayLink);
#else
    [displayLink invalidate];
    //[displayLink removeFromRunLoop:NSRunLoop.mainRunLoop forMode:NSDefaultRunLoopMode];
#endif
    renderFuncTarget = nil;
}

- (id<MTLDevice>) getDevice
{
    return metalLayer.device;
}

- (CAMetalLayer*) getLayer
{
    return metalLayer;
}
- (CGSize) getSize
{
    return metalLayer.drawableSize;
}


- (void) render
{
    if (renderFuncTarget == nil) {
        return;
    }
    
    Gachan3DCamera::SetScreen(metalLayer.drawableSize.width, metalLayer.drawableSize.height);

    GachanMetalPass::Start();
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    [renderFuncTarget performSelector:renderFuncCallback  withObject:self];
#pragma clang diagnostic pop
    
    
    GachanMetalPass::End();
}

#if MAC
static CVReturn renderloop(CVDisplayLinkRef displayLink,
                           const CVTimeStamp *inNow,
                           const CVTimeStamp *inOutputTime,
                           CVOptionFlags flagsIn,
                           CVOptionFlags *flagsOut,
                           void *displayLinkContext)
{
    if (displayLinkContext) {
        GachanMetalBase* metalbase = (__bridge GachanMetalBase*)displayLinkContext;
        
        @autoreleasepool {
            [metalbase render];
        }
    }
    return kCVReturnSuccess;
}
#else
- (void)renderloop
{
    @autoreleasepool {
        [self render];
    }
}
#endif

@end







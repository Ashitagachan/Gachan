//
// GachanAudioMACIOSEngine.h ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#ifndef __GACHANAUDIOMACIOSENGINE_H__
#define __GACHANAUDIOMACIOSENGINE_H__

#import "Foundation/Foundation.h"
#import "AVFoundation/AVFoundation.h"



@interface GachanAudioEngine : NSObject
{
@public
AVAudioEngine*                      engine;
AVAudioEnvironmentNode*             environment;
    
AVAudioFormat*                      format3D;//mono
AVAudioFormat*                      format;//stereo
    
AVAudioFormat*                      format3Duser;//mono ユーザ用
AVAudioFormat*                      formatuser;//stereo ユーザ用
    
bool                                multichannelOutputEnabled;
    

// mananging session and configuration changes
BOOL                    isSessionInterrupted;
BOOL                    isConfigChangePending;
}
@property (nonatomic, getter=isRunning) BOOL running;



+ (GachanAudioEngine *)sharedInstance;
+ (void) releaseInstance;

- (void)updateListenerPosition:(AVAudio3DPoint)position Orientation:(AVAudio3DVectorOrientation)orientation;



@end



#endif


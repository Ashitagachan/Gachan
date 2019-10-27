//
// GachanAudioMACIOS.mm ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "GachanAudio.h"
#import "GachanAudioMACIOSEngine.h"



    static NSBundle* Bundle = NULL;

    
    //AVAudio3Dは単位メートル  dxは単位10cm
    const float DX3DToAVAudio = 0.1f;

    
    
    class GachanGachanAudioBufferData
    {
    public:
        void* buffer;
        bool loop;
    };

    
    static void* LoadWAV(NSString* filename, bool use3D)
    {
        NSError *error;
        BOOL success = NO;
        
        // load the collision sound into a buffer
        NSURL *soundFileURL = [NSURL URLWithString:[Bundle pathForResource:filename ofType:nil]];
        //NSAssert(soundFileURL, @"Error creating URL to sound file");
        
        AVAudioFile *soundFile = [[AVAudioFile alloc] initForReading:soundFileURL commonFormat:AVAudioPCMFormatFloat32 interleaved:NO error:&error];
        //NSAssert(soundFile != nil, @"Error creating soundFile, %@", error.localizedDescription);
        
        AVAudioPCMBuffer *outputBuffer = [[AVAudioPCMBuffer alloc] initWithPCMFormat:soundFile.processingFormat frameCapacity:(AVAudioFrameCount)soundFile.length];
        success = [soundFile readIntoBuffer:outputBuffer error:&error];
        //NSAssert(success, @"Error reading file into buffer, %@", error.localizedDescription);

        //--------------------------------
        //added toshi
        //最初のバッファのフォーマットを基準にする。バッファは全部同じフォーマットとする。
        GachanAudioEngine* engine = [GachanAudioEngine sharedInstance];
        if (use3D) {
            if (engine->format3D == nil) {
                engine->format3D = outputBuffer.format;//MONO
            }
        }
        else {
            if (engine->format == nil) {
                engine->format = outputBuffer.format;//STEREO
            }
        }
        //--------------------------------

        void* ret = (__bridge_retained void*)outputBuffer;//metalmodelvert.mmと同じ
        return ret;
    }
    
void GachanAudio3DBuffer::Create(const char* filename)
{
    NSString* filenamestr = [NSString stringWithUTF8String:filename];
    buffer = LoadWAV(filenamestr, true);
}
void GachanAudio3DBuffer::Release()
{
    AVAudioPCMBuffer* p = (__bridge_transfer AVAudioPCMBuffer*)buffer;//metalmodelvert.mmと同じ
    p = NULL;
    buffer = NULL;
}
    
void GachanAudioBuffer::Create(const char* filename)
{
    NSString* filenamestr = [NSString stringWithUTF8String:filename];
    buffer = LoadWAV(filenamestr, false);
}
void GachanAudioBuffer::Release()
{
    AVAudioPCMBuffer* p = (__bridge_transfer AVAudioPCMBuffer*)buffer;//metalmodelvert.mmと同じ
    p = NULL;
    buffer = NULL;
}

    
    

    
void GachanAudio3DPlayer::Create()
{
    GachanAudioEngine* engine = [GachanAudioEngine sharedInstance];
    
    // create a new player and connect it to the environment node
    AVAudioPlayerNode *newPlayer = [[AVAudioPlayerNode alloc] init];
    [engine->engine attachNode:newPlayer];
    [engine->engine connect:newPlayer to:engine->environment format:engine->format3D];
    
    // pick a rendering algorithm based on the rendering format
    AVAudio3DMixingRenderingAlgorithm renderingAlgo = engine->multichannelOutputEnabled ? AVAudio3DMixingRenderingAlgorithmSoundField : AVAudio3DMixingRenderingAlgorithmEqualPowerPanning;
    newPlayer.renderingAlgorithm = renderingAlgo;
    
    // turn up the reverb blend for this player
    newPlayer.reverbBlend = 0.3;
    
    player = (__bridge_retained void*)newPlayer;//metalmodelvert.mmと同じ
    used = false;
}
void GachanAudio3DPlayer::Release()
{
    GachanAudioEngine* engine = [GachanAudioEngine sharedInstance];

    AVAudioPlayerNode *p = (__bridge_transfer AVAudioPlayerNode*)player;//metalmodelvert.mmと同じ
    [p stop];
    [engine->engine disconnectNodeOutput:p];

    p = NULL;
    player = NULL;
    used = false;
}

void GachanAudio3DPlayer::SetBuffer(GachanAudio3DBuffer* buffer, bool loop)
{
    AVAudioPlayerNode* p      = (__bridge AVAudioPlayerNode*)player;//metalmodelvert.mmと同じ
    AVAudioPCMBuffer* buf     = (__bridge AVAudioPCMBuffer*)buffer->buffer;
    
    if (p && buf)  {
        AVAudioPlayerNodeBufferOptions option = AVAudioPlayerNodeBufferInterrupts;
        option |= (loop)? AVAudioPlayerNodeBufferLoops : 0;
        
        [p scheduleBuffer:buf atTime:nil options:option completionHandler:nil];
    }
}
    void GachanAudio3DPlayer::SetVolume(Val volume)
    {
        AVAudioPlayerNode* p = (__bridge AVAudioPlayerNode*)player;
        if (p) {
            p.volume = volume;
        }
    }
    void GachanAudio3DPlayer::SetPosition(Vec pos)
    {
        AVAudioPlayerNode* p = (__bridge AVAudioPlayerNode*)player;
        if (p) {
            //AVAudio3Dは、単位メートル
            AVAudio3DPoint newpos;
            newpos.x = pos.x * DX3DToAVAudio;
            newpos.y = pos.y * DX3DToAVAudio;
            newpos.z = -pos.z * DX3DToAVAudio;//AVAudio3Dは、右手座標系
            p.position = newpos;
        }
    }

void GachanAudio3DPlayer::Play()
{
    GachanAudioEngine* engine = [GachanAudioEngine sharedInstance];

    if (engine->engine.isRunning) {
        AVAudioPlayerNode* p = (__bridge AVAudioPlayerNode*)player;//metalmodelvert.mmと同じ
        if (p)  {
            p.rate = 1.0f;//rate;
            [p play];
        }
    }
}
void GachanAudio3DPlayer::Stop()
{
    AVAudioPlayerNode* p = (__bridge AVAudioPlayerNode*)player;
    if (p) {
        [p stop];
    }
}



    void GachanAudioPlayer::Create()
    {
        GachanAudioEngine* engine = [GachanAudioEngine sharedInstance];
        
        // create a new player and connect it to the environment node
        AVAudioPlayerNode *newPlayer = [[AVAudioPlayerNode alloc] init];
        [engine->engine attachNode:newPlayer];
        [engine->engine connect:newPlayer to:engine->environment format:engine->format];
        
        // pick a rendering algorithm based on the rendering format
        AVAudio3DMixingRenderingAlgorithm renderingAlgo = engine->multichannelOutputEnabled ? AVAudio3DMixingRenderingAlgorithmSoundField : AVAudio3DMixingRenderingAlgorithmEqualPowerPanning;
        newPlayer.renderingAlgorithm = renderingAlgo;
        
        // turn up the reverb blend for this player
        newPlayer.reverbBlend = 0.3;
        
        player = (__bridge_retained void*)newPlayer;//metalmodelvert.mmと同じ
        used = false;
    }
    void GachanAudioPlayer::Release()
    {
        GachanAudioEngine* engine = [GachanAudioEngine sharedInstance];
        
        AVAudioPlayerNode *p = (__bridge_transfer AVAudioPlayerNode*)player;//metalmodelvert.mmと同じ
        [p stop];
        [engine->engine disconnectNodeOutput:p];
        
        p = NULL;
        player = NULL;
        used = false;
    }
    
    void GachanAudioPlayer::SetBuffer(GachanAudioBuffer* buffer, bool loop)
    {
        AVAudioPlayerNode* p  = (__bridge AVAudioPlayerNode*)player;//metalmodelvert.mmと同じ
        AVAudioPCMBuffer* buf = (__bridge AVAudioPCMBuffer*)buffer->buffer;
        
        if (p && buf) {
            AVAudioPlayerNodeBufferOptions option = AVAudioPlayerNodeBufferInterrupts;
            option |= (loop)? AVAudioPlayerNodeBufferLoops : 0;
            
            [p scheduleBuffer:buf atTime:nil options:option completionHandler:nil];
        }
    }
    void GachanAudioPlayer::SetVolume(Val volume)
    {
        AVAudioPlayerNode* p = (__bridge AVAudioPlayerNode*)player;
        if (p) {
            p.volume = volume;
        }
    }

    void GachanAudioPlayer::Play()
    {
        GachanAudioEngine* engine = [GachanAudioEngine sharedInstance];
        
        if (engine->engine.isRunning) {
            AVAudioPlayerNode* p = (__bridge AVAudioPlayerNode*)player;//metalmodelvert.mmと同じ
            if (p) {
                p.rate = 1.0f;
                [p play];
            }
        }
    }
    void GachanAudioPlayer::Stop()
    {
        AVAudioPlayerNode* p = (__bridge AVAudioPlayerNode*)player;
        if (p) {
            [p stop];
        }
    }

    
    
    
    
    
    
void GachanAudio::Create(const char* bundleID)
{
    if (bundleID) {
        NSString* bundlepath = [NSString stringWithUTF8String:bundleID];
        Bundle = [NSBundle bundleWithPath:bundlepath];
    }
    else {
        Bundle = [NSBundle mainBundle];
    }
    
    [GachanAudioEngine sharedInstance];
}
    
void GachanAudio::Release()
{
    [GachanAudioEngine releaseInstance];
    Bundle = NULL;
}

    
void GachanAudio::SetListener(Vec pos, Vec front, Vec up)
{
    GachanAudioEngine* engine = [GachanAudioEngine sharedInstance];

    //AVAudio3Dは、単位メートル
    AVAudio3DPoint newpos;
    newpos.x = pos.x * DX3DToAVAudio;
    newpos.y = pos.y * DX3DToAVAudio;
    newpos.z = -pos.z * DX3DToAVAudio;//AVAudio3Dは、右手座標系
    
    AVAudio3DVectorOrientation neworientation;
    neworientation.forward.x = front.x;
    neworientation.forward.y = front.y;
    neworientation.forward.z = -front.z;//AVAudio3Dは、右手座標系
    neworientation.up.x = up.x;
    neworientation.up.y = up.y;
    neworientation.up.z = -up.z;//AVAudio3Dは、右手座標系

    [engine updateListenerPosition:newpos Orientation:neworientation];
}

    



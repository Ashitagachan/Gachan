//
// GachanAudioMACIOSEngine.cpp ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#import "GachanAudioMACIOSEngine.h"


@implementation GachanAudioEngine


static GachanAudioEngine* GachanAudioEngineSharedInstance;
+ (GachanAudioEngine *)sharedInstance
{
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        GachanAudioEngineSharedInstance = [[GachanAudioEngine alloc] init];
    });
    return GachanAudioEngineSharedInstance;
}

+ (void) releaseInstance
{
    GachanAudioEngineSharedInstance = nil;
}


- (BOOL)isRunning
{
    return engine.isRunning;
}

- (instancetype)init
{
    if (self = [super init]) {
        
#if TARGET_OS_IOS || TARGET_OS_SIMULATOR
        [self initAVAudioSession];
#endif
        isSessionInterrupted = NO;
        isConfigChangePending = NO;
        
        engine = [[AVAudioEngine alloc] init];
        environment = [[AVAudioEnvironmentNode alloc] init];
        
#if 0   //added CUSTOM ATTENUATION PARAMETER
#if 0
        typedef NS_ENUM(NSInteger, AVAudioEnvironmentDistanceAttenuationModel) {
            AVAudioEnvironmentDistanceAttenuationModelExponential   = 1,
            AVAudioEnvironmentDistanceAttenuationModelInverse       = 2,//default 2
            AVAudioEnvironmentDistanceAttenuationModelLinear        = 3
        }
        //https://developer.apple.com/documentation/avfoundation/avaudioenvironmentdistanceattenuationmodel?language=objc
#endif
        environment.distanceAttenuationParameters.distanceAttenuationModel = AVAudioEnvironmentDistanceAttenuationModelLinear;
        environment.distanceAttenuationParameters.referenceDistance = 1.0f;//meter  default 1.0
        environment.distanceAttenuationParameters.maximumDistance = 1000.0f;//meter default 100000.00
        environment.distanceAttenuationParameters.rolloffFactor   = 1.0f;//         default 1.0
#endif
#if 0
        NSLog(@"AttenuationParameter %d min %.2f meter  max %.2f meter  rolloffFactor %.2f",
              (int)environment.distanceAttenuationParameters.distanceAttenuationModel,
              environment.distanceAttenuationParameters.referenceDistance,
              environment.distanceAttenuationParameters.maximumDistance,
              environment.distanceAttenuationParameters.rolloffFactor);
#endif
        [engine attachNode:environment];
        
        
        // wire everything up
        [self makeEngineConnections];
        
        // sign up for notifications about changes in output configuration
        [[NSNotificationCenter defaultCenter] addObserverForName:AVAudioEngineConfigurationChangeNotification object:engine queue:nil usingBlock: ^(NSNotification *note) {
         
            // if we've received this notification, something has changed and the engine has been stopped
            // re-wire all the connections and start the engine

            self->isConfigChangePending = YES;
         
            if (!self->isSessionInterrupted) {
                NSLog(@"Received a %@ notification!", AVAudioEngineConfigurationChangeNotification);
                NSLog(@"Re-wiring connections and starting once again");
                [self makeEngineConnections];
                [self startEngine];
            }
            else {
                NSLog(@"Session is interrupted, deferring changes");
            }
         }];
        
        // turn on the environment reverb
        environment.reverbParameters.enable = YES;
        environment.reverbParameters.level = -20.0;
        [environment.reverbParameters loadFactoryReverbPreset:AVAudioUnitReverbPresetLargeHall];
        
        // we're ready to start rendering so start the engine
        [self startEngine];
    }
    return self;
}

- (void)makeEngineConnections
{
    [engine connect:environment to:engine.outputNode format:[self constructOutputConnectionFormatForEnvironment]];
}

- (void)startEngine
{
    NSError *error;
    BOOL success = NO;
    success = [engine startAndReturnError:&error];
    NSAssert(success, @"Error starting engine, %@", error.localizedDescription);
}

- (AVAudioFormat *)constructOutputConnectionFormatForEnvironment
{
    AVAudioFormat *environmentOutputConnectionFormat = nil;
    AVAudioChannelCount numHardwareOutputChannels = [engine.outputNode outputFormatForBus:0].channelCount;
    const double hardwareSampleRate = [engine.outputNode outputFormatForBus:0].sampleRate;
    
    // if we're connected to multichannel hardware, create a compatible multichannel format for the environment node
    if (numHardwareOutputChannels > 2 && numHardwareOutputChannels != 3) {
        if (numHardwareOutputChannels > 8) numHardwareOutputChannels = 8;
            
            // find an AudioChannelLayoutTag that the environment node knows how to render to
            // this is documented in AVAudioEnvironmentNode.h
            AudioChannelLayoutTag environmentOutputLayoutTag;
        switch (numHardwareOutputChannels) {
            case 4:
                environmentOutputLayoutTag = kAudioChannelLayoutTag_AudioUnit_4;
                break;
                
            case 5:
                environmentOutputLayoutTag = kAudioChannelLayoutTag_AudioUnit_5_0;
                break;
                
            case 6:
                environmentOutputLayoutTag = kAudioChannelLayoutTag_AudioUnit_6_0;
                break;
                
            case 7:
                environmentOutputLayoutTag = kAudioChannelLayoutTag_AudioUnit_7_0;
                break;
                
            case 8:
                environmentOutputLayoutTag = kAudioChannelLayoutTag_AudioUnit_8;
                break;
                
            default:
                // based on our logic, we shouldn't hit this case
                environmentOutputLayoutTag = kAudioChannelLayoutTag_Stereo;
                break;
        }
        
        // using that layout tag, now construct a format
        AVAudioChannelLayout *environmentOutputChannelLayout = [[AVAudioChannelLayout alloc] initWithLayoutTag:environmentOutputLayoutTag];
        environmentOutputConnectionFormat = [[AVAudioFormat alloc] initStandardFormatWithSampleRate:hardwareSampleRate channelLayout:environmentOutputChannelLayout];
        multichannelOutputEnabled = true;
    }
    else {
        // stereo rendering format, this is the common case
        environmentOutputConnectionFormat = [[AVAudioFormat alloc] initStandardFormatWithSampleRate:hardwareSampleRate channels:2];
        multichannelOutputEnabled = false;
    }
    
    return environmentOutputConnectionFormat;
}



- (void)updateListenerPosition:(AVAudio3DPoint)position Orientation:(AVAudio3DVectorOrientation)orientation
{
    environment.listenerPosition = position;
    environment.listenerVectorOrientation = orientation;
}



#pragma mark AVAudioSession

#if TARGET_OS_IOS || TARGET_OS_SIMULATOR
- (void)initAVAudioSession
{
    NSError *error;
    
    // Configure the audio session
    AVAudioSession *sessionInstance = [AVAudioSession sharedInstance];
    
    // set the session category
    bool success = [sessionInstance setCategory:AVAudioSessionCategoryPlayback error:&error];
    if (!success) NSLog(@"Error setting AVAudioSession category! %@\n", [error localizedDescription]);
        
        const NSInteger desiredNumChannels = 8; // for 7.1 rendering
        const NSInteger maxChannels = sessionInstance.maximumOutputNumberOfChannels;
        if (maxChannels >= desiredNumChannels) {
            success = [sessionInstance setPreferredOutputNumberOfChannels:desiredNumChannels error:&error];
            if (!success) NSLog(@"Error setting PreferredOuputNumberOfChannels! %@", [error localizedDescription]);
                }
    
    
    // add interruption handler
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleInterruption:)
                                                 name:AVAudioSessionInterruptionNotification
                                               object:sessionInstance];
    
    // we don't do anything special in the route change notification
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleRouteChange:)
                                                 name:AVAudioSessionRouteChangeNotification
                                               object:sessionInstance];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleMediaServicesReset:)
                                                 name:AVAudioSessionMediaServicesWereResetNotification
                                               object:sessionInstance];
    
    // activate the audio session
    success = [sessionInstance setActive:YES error:&error];
    if (!success) NSLog(@"Error setting session active! %@\n", [error localizedDescription]);
        }

- (void)handleInterruption:(NSNotification *)notification
{
    UInt8 theInterruptionType = [[notification.userInfo valueForKey:AVAudioSessionInterruptionTypeKey] intValue];
    
    NSLog(@"Session interrupted > --- %s ---\n", theInterruptionType == AVAudioSessionInterruptionTypeBegan ? "Begin Interruption" : "End Interruption");
    
    if (theInterruptionType == AVAudioSessionInterruptionTypeBegan) {
        isSessionInterrupted = YES;
        
        //stop the playback of the nodes
        //here
        //必要があればdx::Audio***Objectのリストを作って、全部Stopする。
        
        
    }
    if (theInterruptionType == AVAudioSessionInterruptionTypeEnded) {
        // make sure to activate the session
        NSError *error;
        bool success = [[AVAudioSession sharedInstance] setActive:YES error:&error];
        if (!success)
            NSLog(@"AVAudioSession set active failed with error: %@", [error localizedDescription]);
            else {
                isSessionInterrupted = NO;
                if (isConfigChangePending) {
                    //there is a pending config changed notification
                    NSLog(@"Responding to earlier engine config changed notification. Re-wiring connections and starting once again");
                    [self makeEngineConnections];
                    [self startEngine];
                    
                    isConfigChangePending = NO;
                }
                else {
                    // start the engine once again
                    [self startEngine];
                }
            }
    }
}

- (void)handleRouteChange:(NSNotification *)notification
{
    UInt8 reasonValue = [[notification.userInfo valueForKey:AVAudioSessionRouteChangeReasonKey] intValue];
    AVAudioSessionRouteDescription *routeDescription = [notification.userInfo valueForKey:AVAudioSessionRouteChangePreviousRouteKey];
    
    NSLog(@"Route change:");
    switch (reasonValue) {
        case AVAudioSessionRouteChangeReasonNewDeviceAvailable:
            NSLog(@"     NewDeviceAvailable");
            break;
        case AVAudioSessionRouteChangeReasonOldDeviceUnavailable:
            NSLog(@"     OldDeviceUnavailable");
            break;
        case AVAudioSessionRouteChangeReasonCategoryChange:
            NSLog(@"     CategoryChange");
            NSLog(@"     New Category: %@", [[AVAudioSession sharedInstance] category]);
            break;
        case AVAudioSessionRouteChangeReasonOverride:
            NSLog(@"     Override");
            break;
        case AVAudioSessionRouteChangeReasonWakeFromSleep:
            NSLog(@"     WakeFromSleep");
            break;
        case AVAudioSessionRouteChangeReasonNoSuitableRouteForCategory:
            NSLog(@"     NoSuitableRouteForCategory");
            break;
        default:
            NSLog(@"     ReasonUnknown");
    }
    
    NSLog(@"Previous route:\n");
    NSLog(@"%@", routeDescription);
}

- (void)handleMediaServicesReset:(NSNotification *)notification
{
    // if we've received this notification, the media server has been reset
    // re-wire all the connections and start the engine
    NSLog(@"Media services have been reset!");
    NSLog(@"Re-wiring connections and starting once again");
    
    [self initAVAudioSession];
    [self createEngineAndAttachNodes];
    [self makeEngineConnections];
    [self startEngine];
}

- (void)createEngineAndAttachNodes
{
    engine = [[AVAudioEngine alloc] init];    
    [engine attachNode:environment];
}

#endif


@end



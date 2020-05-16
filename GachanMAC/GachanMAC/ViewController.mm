//
// ViewController.mm
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#import "ViewController.h"
#import  "GachanMetalBase.h"
#include "GachanGameKeyboard.h"
#include "GachanNameSpace.h"

namespace NAMESPACE
{
void Initialize();
void Create();
void Update();
void Render();
void Release();
void Finalize();
}


@interface InputView : NSView
@end
@implementation InputView
- (BOOL)acceptsFirstResponder
{
    return YES;
}
-(void) keyDown:(NSEvent *)event
{
    switch (event.keyCode)
    {
        case 126:
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::UP);
            break;
        case 125:
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::DOWN);
            break;
        case 123:
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::LEFT);
            break;
        case 124:
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::RIGHT);
            break;
        case 49:
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::SPACE);
            break;
        case 36:
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::ENTER);
            break;
            
        case 29://0
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM0);
            break;
        case 18://1
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM1);
            break;
        case 19://2
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM2);
            break;
        case 20://3
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM3);
            break;
        case 21://4
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM4);
            break;
        case 23://5
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM5);
            break;
        case 22://6
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM6);
            break;
        case 26://7
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM7);
            break;
        case 28://8
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM8);
            break;
        case 25://9
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM9);
            break;
            
        case 0://A
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::A);
            break;
        case 1://S
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::S);
            break;
        case 2://D
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::D);
            break;
        case 13://w
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::W);
            break;
        case 15:
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::R);
            break;
        case 3:
            GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::F);
            break;
    }
    //NSLog(@"key %d", event.keyCode);
}
@end


void GachanGameCreate();
void GachanGameRelease();
void GachanGameUpdate();

@implementation ViewController
{
    InputView* inputview;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(willTerminate)
                                                 name:NSApplicationWillTerminateNotification
                                               object:nil];

    inputview = [[InputView alloc] init];
    inputview.frame = self.view.frame;
    [self.view addSubview:inputview];

    
    NAMESPACE::Initialize();
    
    [[GachanMetalBase sharedInstance] metalWithView:self.view target:self update:@selector(update:) render:@selector(render:)];
    
    GachanGameCreate();
    
    NAMESPACE::Create();
    
    [[GachanMetalBase sharedInstance] start];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    // Update the view, if already loaded.
}

- (void)update:(id)update
{
    GachanGameUpdate();
    
    NAMESPACE::Update();

    GachanGameKeyboard::ResetSystemKey();
}

- (void)render:(id)sender
{
    NAMESPACE::Render();
}

- (void) willTerminate
{
    [[GachanMetalBase sharedInstance] end];

    NAMESPACE::Release();
    NAMESPACE::Finalize();
    
    GachanGameRelease();
    
    [GachanMetalBase releaseInstance];
}

@end

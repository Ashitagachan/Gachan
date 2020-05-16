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


@interface ViewController ()

@end

@implementation ViewController

-(void) upKeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::UP);
}
-(void) downKeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::DOWN);
}
-(void) leftKeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::LEFT);
}
-(void) rightKeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::RIGHT);
}
-(void) spaceKeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::SPACE);
}
-(void) enterKeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::ENTER);
}
-(void) num0KeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM0);
}
-(void) num1KeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM1);
}
-(void) num2KeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM2);
}
-(void) num3KeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM3);
}
-(void) num4KeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM4);
}
-(void) num5KeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM5);
}
-(void) num6KeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM6);
}
-(void) num7KeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM7);
}
-(void) num8KeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM8);
}
-(void) num9KeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM9);
}
-(void) numAKeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::A);
}
-(void) numSKeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::S);
}
-(void) numDKeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::D);
}
-(void) numWKeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::W);
}
-(void) numRKeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::R);
}
-(void) numFKeyPress
{
    GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::F);
}
- (NSArray *)keyCommands {
    return @[
             [UIKeyCommand keyCommandWithInput:UIKeyInputUpArrow    modifierFlags:0 action:@selector(upKeyPress)   ],
             [UIKeyCommand keyCommandWithInput:UIKeyInputDownArrow  modifierFlags:0 action:@selector(downKeyPress) ],
             [UIKeyCommand keyCommandWithInput:UIKeyInputLeftArrow  modifierFlags:0 action:@selector(leftKeyPress) ],
             [UIKeyCommand keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0 action:@selector(rightKeyPress)],
             [UIKeyCommand keyCommandWithInput:@" "                 modifierFlags:0 action:@selector(spaceKeyPress)],
             [UIKeyCommand keyCommandWithInput:@"\r"                modifierFlags:0 action:@selector(enterKeyPress)],
             [UIKeyCommand keyCommandWithInput:@"0"                 modifierFlags:0 action:@selector(num0KeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"1"                 modifierFlags:0 action:@selector(num1KeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"2"                 modifierFlags:0 action:@selector(num2KeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"3"                 modifierFlags:0 action:@selector(num3KeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"4"                 modifierFlags:0 action:@selector(num4KeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"5"                 modifierFlags:0 action:@selector(num5KeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"6"                 modifierFlags:0 action:@selector(num6KeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"7"                 modifierFlags:0 action:@selector(num7KeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"8"                 modifierFlags:0 action:@selector(num8KeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"9"                 modifierFlags:0 action:@selector(num9KeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"A"                 modifierFlags:0 action:@selector(numAKeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"S"                 modifierFlags:0 action:@selector(numSKeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"D"                 modifierFlags:0 action:@selector(numDKeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"W"                 modifierFlags:0 action:@selector(numWKeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"R"                 modifierFlags:0 action:@selector(numRKeyPress) ],
             [UIKeyCommand keyCommandWithInput:@"F"                 modifierFlags:0 action:@selector(numFKeyPress) ],
             ];
}


- (BOOL)shouldAutorotate
{
    return NO;
}
- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}
-(BOOL) prefersHomeIndicatorAutoHidden
{
    return YES;
}

void GachanGameCreate();
void GachanGameRelease();
void GachanGameUpdate();

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(willTerminate)
                                                 name:UIApplicationWillTerminateNotification
                                               object:nil];
    

    NAMESPACE::Initialize();

    [[GachanMetalBase sharedInstance] metalWithView:self.view target:self update:@selector(update:) render:@selector(render:)];
    
    GachanGameCreate();

    NAMESPACE::Create();

    [[GachanMetalBase sharedInstance] start];
}

- (void)update:(id)sender
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

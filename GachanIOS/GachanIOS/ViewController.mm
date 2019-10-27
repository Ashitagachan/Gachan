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
- (NSArray *)keyCommands {
    return @[
             [UIKeyCommand keyCommandWithInput:UIKeyInputUpArrow    modifierFlags:0 action:@selector(upKeyPress)    discoverabilityTitle:@"Up"],
             [UIKeyCommand keyCommandWithInput:UIKeyInputDownArrow  modifierFlags:0 action:@selector(downKeyPress)  discoverabilityTitle:@"Down"],
             [UIKeyCommand keyCommandWithInput:UIKeyInputLeftArrow  modifierFlags:0 action:@selector(leftKeyPress)  discoverabilityTitle:@"Left"],
             [UIKeyCommand keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0 action:@selector(rightKeyPress) discoverabilityTitle:@"Right"],
             [UIKeyCommand keyCommandWithInput:@" "                 modifierFlags:0 action:@selector(spaceKeyPress) discoverabilityTitle:@"Space"],
             [UIKeyCommand keyCommandWithInput:@"\r"                modifierFlags:0 action:@selector(enterKeyPress) discoverabilityTitle:@"Enter"],
             [UIKeyCommand keyCommandWithInput:@"0"                 modifierFlags:0 action:@selector(num0KeyPress)  discoverabilityTitle:@"0"],
             [UIKeyCommand keyCommandWithInput:@"1"                 modifierFlags:0 action:@selector(num1KeyPress)  discoverabilityTitle:@"1"],
             [UIKeyCommand keyCommandWithInput:@"2"                 modifierFlags:0 action:@selector(num2KeyPress)  discoverabilityTitle:@"2"],
             [UIKeyCommand keyCommandWithInput:@"3"                 modifierFlags:0 action:@selector(num3KeyPress)  discoverabilityTitle:@"3"],
             [UIKeyCommand keyCommandWithInput:@"4"                 modifierFlags:0 action:@selector(num4KeyPress)  discoverabilityTitle:@"4"],
             [UIKeyCommand keyCommandWithInput:@"5"                 modifierFlags:0 action:@selector(num5KeyPress)  discoverabilityTitle:@"5"],
             [UIKeyCommand keyCommandWithInput:@"6"                 modifierFlags:0 action:@selector(num6KeyPress)  discoverabilityTitle:@"6"],
             [UIKeyCommand keyCommandWithInput:@"7"                 modifierFlags:0 action:@selector(num7KeyPress)  discoverabilityTitle:@"7"],
             [UIKeyCommand keyCommandWithInput:@"8"                 modifierFlags:0 action:@selector(num8KeyPress)  discoverabilityTitle:@"8"],
             [UIKeyCommand keyCommandWithInput:@"9"                 modifierFlags:0 action:@selector(num9KeyPress)  discoverabilityTitle:@"9"],
             [UIKeyCommand keyCommandWithInput:@"A"                 modifierFlags:0 action:@selector(numAKeyPress)  discoverabilityTitle:@"A"],
             [UIKeyCommand keyCommandWithInput:@"S"                 modifierFlags:0 action:@selector(numSKeyPress)  discoverabilityTitle:@"S"],
             [UIKeyCommand keyCommandWithInput:@"D"                 modifierFlags:0 action:@selector(numDKeyPress)  discoverabilityTitle:@"D"],
             [UIKeyCommand keyCommandWithInput:@"W"                 modifierFlags:0 action:@selector(numWKeyPress)  discoverabilityTitle:@"W"],
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

    [[GachanMetalBase sharedInstance] metalWithView:self.view target:self action:@selector(render:)];
    
    GachanGameCreate();

    NAMESPACE::Create();

    [[GachanMetalBase sharedInstance] start];
}

- (void)render:(id)sender
{
    GachanGameUpdate();
    
    NAMESPACE::Update();
    
    GachanGameKeyboard::ResetSystemKey();

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

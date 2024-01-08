//
//  OLDebugWindow.m
//  ObjectiveLauncher
//
//  Created by Ki MNO on 2024/1/8.
//

#import "OLDebugWindow.h"
#import "SAConnectPanel.h"

@interface OLDebugWindow ()
{
}

@property (nonatomic, strong) SAConnectPanel* controlPanel;

@end

@implementation OLDebugWindow

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    _controlPanel = [[SAConnectPanel alloc] initWithNibName:@"SAConnectPanel" bundle:[NSBundle mainBundle]];
    
    
}
- (IBAction)btnClickedGo:(id)sender {
    NSLog(@"Go");
    NSWindow* wnd = [NSWindow new];
    wnd.contentViewController = _controlPanel;
    //[wnd makeKeyAndOrderFront:self];
    //NSWindowController* ctr = [NSWindowController new];
    //ctr.window = wnd;
    //[ctr showWindow:self];
    //[self.contentViewController presentViewControllerAsSheet:_controlPanel];
    [self.window beginSheet:wnd completionHandler:^(NSModalResponse md){
        
    }];
}

@end

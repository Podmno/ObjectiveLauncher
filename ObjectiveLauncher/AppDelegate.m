//
//  AppDelegate.m
//  ObjectiveLauncher
//
//  Created by Ki MNO on 2024/1/6.
//

#import "AppDelegate.h"
#import "OLDebugWindow.h"

@interface AppDelegate ()
{
    OLDebugWindow* debugWindow;
}

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    debugWindow = [[OLDebugWindow alloc] initWithWindowNibName:@"OLDebugWindow"];
    [debugWindow showWindow:nil];
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end

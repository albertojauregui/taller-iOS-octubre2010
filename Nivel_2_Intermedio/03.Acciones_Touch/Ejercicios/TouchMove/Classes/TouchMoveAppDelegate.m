//
//  TouchMoveAppDelegate.m
//  TouchMove
//
//  Created by Rene Cruz Flores on 21/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "TouchMoveAppDelegate.h"
#import "TouchMoveViewController.h"

@implementation TouchMoveAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end

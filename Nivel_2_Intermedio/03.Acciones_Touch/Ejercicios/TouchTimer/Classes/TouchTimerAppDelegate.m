//
//  TouchTimerAppDelegate.m
//  TouchTimer
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "TouchTimerAppDelegate.h"
#import "TouchTimerViewController.h"

@implementation TouchTimerAppDelegate

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

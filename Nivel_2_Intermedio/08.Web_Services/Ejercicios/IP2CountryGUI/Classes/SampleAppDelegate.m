//
//  SampleAppDelegate.m
//  Sample
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "SampleAppDelegate.h"
#import "SampleViewController.h"

@implementation SampleAppDelegate

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

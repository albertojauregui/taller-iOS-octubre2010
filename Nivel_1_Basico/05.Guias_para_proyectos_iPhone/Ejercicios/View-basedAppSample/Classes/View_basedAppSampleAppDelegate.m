//
//  View_basedAppSampleAppDelegate.m
//  View-basedAppSample
//
//  Created by Rene Cruz Flores on 16/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "View_basedAppSampleAppDelegate.h"
#import "View_basedAppSampleViewController.h"

@implementation View_basedAppSampleAppDelegate

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

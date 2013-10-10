//
//  PickerViewAppDelegate.m
//  PickerView
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "PickerViewAppDelegate.h"
#import "PickerViewViewController.h"

@implementation PickerViewAppDelegate

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

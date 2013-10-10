//
//  AnimacionAppDelegate.m
//  Animacion
//
//  Created by Rene Cruz Flores on 20/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "AnimacionAppDelegate.h"
#import "AnimacionViewController.h"

@implementation AnimacionAppDelegate

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

//
//  TouchZoomAppDelegate.m
//  TouchZoom
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "TouchZoomAppDelegate.h"

@implementation TouchZoomAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	[application setStatusBarStyle:UIStatusBarStyleBlackOpaque];
	
	TouchView *touchView = [[[TouchView alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
	
	[window addSubview:touchView];	
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end

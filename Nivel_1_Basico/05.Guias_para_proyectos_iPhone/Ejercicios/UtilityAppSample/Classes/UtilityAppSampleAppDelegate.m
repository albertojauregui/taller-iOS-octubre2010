//
//  UtilityAppSampleAppDelegate.m
//  UtilityAppSample
//
//  Created by Rene Cruz Flores on 16/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "UtilityAppSampleAppDelegate.h"
#import "MainViewController.h"

@implementation UtilityAppSampleAppDelegate


@synthesize window;
@synthesize mainViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
	MainViewController *aController = [[MainViewController alloc] initWithNibName:@"MainView" bundle:nil];
	self.mainViewController = aController;
	[aController release];
	
    mainViewController.view.frame = [UIScreen mainScreen].applicationFrame;
	[window addSubview:[mainViewController view]];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [mainViewController release];
    [window release];
    [super dealloc];
}

@end

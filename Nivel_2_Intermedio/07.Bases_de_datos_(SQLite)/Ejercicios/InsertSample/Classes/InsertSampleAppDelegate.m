//
//  InsertSampleAppDelegate.m
//  InsertSample
//
//  Created by Rene Cruz Flores on 24/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "InsertSampleAppDelegate.h"
#import "InsertSampleViewController.h"

@implementation InsertSampleAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
	
    // Override point for customization after app launch 
	[self createEditableCopyOfDatabaBaseIfNeeded];
	
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}

-(void)createEditableCopyOfDatabaBaseIfNeeded {
	BOOL success;
	NSFileManager *fileManager = [NSFileManager defaultManager];
	NSError *error;
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	NSString *writableDBPath = [documentsDirectory stringByAppendingPathComponent:@"ejemplo1.sqlite"];
	success = [fileManager fileExistsAtPath:writableDBPath];
	if (success) return;
	
	//Si la base de datos no existe, la copia por default a la ubicación apropiada
	NSString *defaultDBPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"ejemplo1.sqlite"];
	success = [fileManager copyItemAtPath:defaultDBPath toPath:writableDBPath error:&error];
	if (!success) {
		NSAssert1(0, @"Fallo al abrir el archivo de base de datos: ", [error localizedDescription]);
	} else {
		NSLog(@"Acceso a la base de datos ok!");
	}
}


@end

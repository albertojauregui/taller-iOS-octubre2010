//
//  PropiedadesViewController.m
//  Propiedades
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "PropiedadesViewController.h"

@implementation PropiedadesViewController
@synthesize texto, picker;

-(NSString *)rutaArchivoSalvar{
	NSArray *datosRuta = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	return [[datosRuta objectAtIndex:0] stringByAppendingPathComponent:@"datos.plist"];
}

-(void)applicationWillTerminate:(UIApplication *)application {
	NSArray *valores = [[NSArray alloc] initWithObjects:texto.text, picker.date, nil];
	[valores writeToFile:[self rutaArchivoSalvar] atomically:YES];
	[valores release];
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	NSString *miRuta = [self rutaArchivoSalvar];
	BOOL existeArchivo = [[NSFileManager defaultManager] fileExistsAtPath:miRuta];
	if (existeArchivo) {
		NSArray *valores = [[NSArray alloc] initWithContentsOfFile:miRuta];
		texto.text = [valores objectAtIndex:0];
		picker.date = [valores objectAtIndex:1];
		[valores release];
	}
	
	UIApplication *miApp = [UIApplication sharedApplication];
	[[NSNotificationCenter defaultCenter] addObserver:self 
											selector:@selector(applicationWillTerminate:) 
											name:UIApplicationWillTerminateNotification 
											object:miApp];
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end

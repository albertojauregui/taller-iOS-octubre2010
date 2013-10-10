//
//  ToolBarViewController.m
//  ToolBar
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "ToolBarViewController.h"

@implementation ToolBarViewController

-(IBAction) botonSeleccionado:(id) sender {
	UIBarButtonItem *boton = (UIBarButtonItem *) sender;
	NSString *msg = [[NSString alloc] initWithFormat:@"Selecciono boton %d", boton.tag];
	UIAlertView *alerta = [[UIAlertView alloc] 
						   initWithTitle:@"ToolBar" 
						   message:msg 
						   delegate:nil 
						   cancelButtonTitle:@"OK" 
						   otherButtonTitles:nil];
	[alerta show];
	[alerta release];
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


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


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

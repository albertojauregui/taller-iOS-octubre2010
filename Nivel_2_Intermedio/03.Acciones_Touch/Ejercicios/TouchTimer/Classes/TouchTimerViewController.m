//
//  TouchTimerViewController.m
//  TouchTimer
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "TouchTimerViewController.h"

@implementation TouchTimerViewController
@synthesize imagen;

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	
	NSSet *allTouches = [event allTouches];
	
	switch ([allTouches count]) {
		case 1: { //Simple touch
			
			UITouch *touch = [[allTouches allObjects] objectAtIndex:0];
			
			switch ([touch tapCount])
			{
				case 1: //Simple tap
				{
					//comenzar un timer de 2 seg.
					timer = [NSTimer scheduledTimerWithTimeInterval:1 
										target:self 
										selector:@selector(showAlertView) 
										userInfo:nil repeats:NO];
					
					[timer retain];
				} break;
				case 2: //Doble tap.
					break;
			}
		} break;
		case 2: { //Doble touch
			
		} break;
		default:
			break;
	}
	
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event { 
	if([timer isValid])	[timer invalidate];
}	

-(void)showAlertView {
	UIAlertView *alerta = [[UIAlertView alloc] 
						   initWithTitle:@"Galería" 
						   message:@"¿Comprar este cuadro?" 
						   delegate:nil 
						   cancelButtonTitle:@"Comprar!" 
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
	[timer release];
    [super dealloc];
}

@end

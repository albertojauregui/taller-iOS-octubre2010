//
//  AnimacionViewController.m
//  Animacion
//
//  Created by Rene Cruz Flores on 20/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "AnimacionViewController.h"

@implementation AnimacionViewController
@synthesize moverView, escalarView, degradarView;

-(IBAction) mover{
	[UIView beginAnimations:nil context:NULL];
	
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationRepeatCount:10];
	[UIView setAnimationRepeatAutoreverses:YES];
	
	CGPoint pos = moverView.center;
	pos.y = 220.0f;
	moverView.center = pos;
	
    [UIView commitAnimations];    
}

-(IBAction) escalar{
	NSLog(@"escalando..");
    [UIView beginAnimations:nil context:NULL];
	
	[UIView setAnimationDuration:0.5];
	[UIView setAnimationRepeatCount:5];
	[UIView setAnimationRepeatAutoreverses:YES];
	
	CGRect b = escalarView.bounds;
	b.size.height = 200;
	b.size.width = 200;
	escalarView.bounds =  b;
    
    [UIView commitAnimations]; 
}

-(IBAction) degradar{
	[UIView beginAnimations:nil context:nil];
	
	[UIView setAnimationDuration:1];
	[UIView setAnimationRepeatCount:5];
	[UIView setAnimationRepeatAutoreverses:YES];
	
	degradarView.backgroundColor = [UIColor blackColor];
	
	[UIView commitAnimations];
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

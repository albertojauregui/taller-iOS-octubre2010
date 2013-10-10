//
//  MultiTouchViewController.m
//  MultiTouch
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "MultiTouchViewController.h"

@implementation MultiTouchViewController
@synthesize imagen;

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event { 
	
	
	NSSet *allTouches = [event allTouches];
	
	int toques = [allTouches count];
	switch (toques)
	{
		case 1:
		{
			//primer toque
			UITouch *touch = [[allTouches allObjects] objectAtIndex:0];
			int toquesEvento = [touch tapCount];
			switch(toquesEvento)
			{
				case 1://un tap
					imagen.contentMode = UIViewContentModeScaleAspectFit;
					break;
				case 2://doble tap.
					imagen.contentMode = UIViewContentModeCenter;
					break;
			}
		}	
			break;
	}
	
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
	[[UIApplication sharedApplication] setStatusBarHidden:YES];
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

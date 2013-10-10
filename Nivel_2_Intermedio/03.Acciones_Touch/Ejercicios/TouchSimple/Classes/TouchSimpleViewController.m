//
//  TouchSimpleViewController.m
//  TouchSimple
//
//  Created by Rene Cruz Flores on 21/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "TouchSimpleViewController.h"

@implementation TouchSimpleViewController
@synthesize imagen, dona, player;

-(IBAction) respondeTouch{
	
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	[self.player play];
	
	
	UITouch *touch = [touches anyObject];
	CGPoint puntoTouch = [touch locationInView:imagen];
	NSLog(@"punto X: %f, Y: %f", puntoTouch.x, puntoTouch.y);
	
	self.dona.center = puntoTouch;
	self.dona.hidden = NO;
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
}

- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{
	self.dona.hidden = YES;
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
	[[UIApplication sharedApplication] setStatusBarHidden:YES animated:NO];
	NSString *ruta = [[NSBundle mainBundle] pathForResource:@"chirp" ofType:@"caf"];
	NSURL *archivo = [[NSURL alloc] initFileURLWithPath:ruta];
    
	AVAudioPlayer *p = [[AVAudioPlayer alloc] initWithContentsOfURL:archivo error:nil];
	
	[archivo release];
	
	self.player = p;
	[p release];
	[player prepareToPlay];
	[player setDelegate:self];
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

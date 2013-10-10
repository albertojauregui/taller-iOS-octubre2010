//
//  AudioViewController.m
//  Audio
//
//  Created by Rene Cruz Flores on 21/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "AudioViewController.h"

@implementation AudioViewController

@synthesize player, playButton;

- (IBAction) play {
	self.playButton.enabled = NO;
	[self.player play];
}

- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag {
	if (flag == YES) {
		self.playButton.enabled = YES;
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
	NSString *ruta = [[NSBundle mainBundle] pathForResource:@"blip" ofType:@"caf"];
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

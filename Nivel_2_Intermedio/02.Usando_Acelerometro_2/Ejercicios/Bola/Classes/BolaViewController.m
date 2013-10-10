//
//  BolaViewController.m
//  Bola
//
//  Created by Rene Cruz Flores on 21/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "BolaViewController.h"
#define BOLA_RADIO 25

@implementation BolaViewController
@synthesize bola, ejeX, ejeY, player, playX, playY;
// 460x320
-(void)accelerometer:(UIAccelerometer *)accelerometer 
didAccelerate:(UIAcceleration *)acceleration {
	ejeX = acceleration.x * 30.0;
	ejeY = acceleration.y * 30.0;
	
	int newX = (int)(bola.center.x + ejeX);
	int newY = (int)(bola.center.y - ejeY);
	
	if (newX > 320-BOLA_RADIO) {
		newX = 320-BOLA_RADIO;
		if (playX) {
			[self.player play];
			playX = NO;
		}
 	} else if (newX < BOLA_RADIO) {
		newX = BOLA_RADIO;
		if (playX) {
			[self.player play];
			playX = NO;
		}
	} else if (newX > BOLA_RADIO || newX < 320-BOLA_RADIO) {
		playX = YES;
	}
	
	if(newY < BOLA_RADIO) {
		newY = BOLA_RADIO;
		if (playY) {
			[self.player play];
			playY = NO;		
		}
	} else if (newY > 480 - BOLA_RADIO) {
		newY = 480 - BOLA_RADIO;
		if (playY) {
			[self.player play];
			playY = NO;		
		}
	} else if (newY < 480-BOLA_RADIO || newY > BOLA_RADIO) {
		playY = YES;
	}
		
	
	CGPoint centro = CGPointMake(newX, newY);	
	bola.center = centro;
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
 //super.hidesBottomBarWhenPushed = YES;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
	
	[[UIAccelerometer sharedAccelerometer] setUpdateInterval:(1.0f/30.0f)];
	[[UIAccelerometer sharedAccelerometer] setDelegate:self];
	self.playX = YES;
	self.playY = YES;
	
	NSString *ruta = [[NSBundle mainBundle] pathForResource:@"bubble1" ofType:@"caf"];
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

//
//  TouchMoveViewController.m
//  TouchMove
//
//  Created by Rene Cruz Flores on 21/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "TouchMoveViewController.h"

@implementation TouchMoveViewController
@synthesize martillo, clavo, desarmador, tornillo, fondo;
float oldX, oldY;
BOOL martilloActivo = NO;
BOOL desarmadorActivo = NO;
BOOL tornilloActivo = NO;
BOOL clavoActivo = NO;
CGPoint centroMartillo;
CGPoint centroDesarmador;
CGPoint centroTornillo;
CGPoint centroClavo;

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [touches anyObject];
	CGPoint puntoTouch = [touch locationInView:fondo];
	oldX = puntoTouch.x;
	oldY = puntoTouch.y;
	
	if (puntoTouch.x > martillo.frame.origin.x && puntoTouch.x < (martillo.frame.origin.x + martillo.frame.size.width) && 
		puntoTouch.y > martillo.frame.origin.y && puntoTouch.y < (martillo.frame.origin.y + martillo.frame.size.height)) {
		martilloActivo = YES;
	} 
	else if  (puntoTouch.x > tornillo.frame.origin.x && puntoTouch.x < (tornillo.frame.origin.x + tornillo.frame.size.width) && 
			  puntoTouch.y > tornillo.frame.origin.y && puntoTouch.y < (tornillo.frame.origin.y + tornillo.frame.size.height)) {
		tornilloActivo = YES;
	} 
	else if (puntoTouch.x > clavo.frame.origin.x && puntoTouch.x < (clavo.frame.origin.x + clavo.frame.size.width) && 
			 puntoTouch.y > clavo.frame.origin.y && puntoTouch.y < (clavo.frame.origin.y + clavo.frame.size.height)) {
		clavoActivo = YES;
	} 
	else if (puntoTouch.x > desarmador.frame.origin.x && puntoTouch.x < (desarmador.frame.origin.x + desarmador.frame.size.width) && 
			 puntoTouch.y > desarmador.frame.origin.y && puntoTouch.y < (desarmador.frame.origin.y + desarmador.frame.size.height)) {
		desarmadorActivo = YES;
	}
	
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [touches anyObject];
	CGPoint puntoTouch = [touch locationInView:fondo];
	
	if (puntoTouch.x > martillo.frame.origin.x && puntoTouch.x < (martillo.frame.origin.x + martillo.frame.size.width) && 
		puntoTouch.y > martillo.frame.origin.y && puntoTouch.y < (martillo.frame.origin.y + martillo.frame.size.height) && martilloActivo) {
			float nX = martillo.center.x + (puntoTouch.x - oldX);
			float nY = martillo.center.y + (puntoTouch.y - oldY);
			CGPoint nCenter = CGPointMake(nX,nY);
			martillo.center = nCenter;
			oldX = puntoTouch.x;
			oldY = puntoTouch.y;
		} 
	else if  (puntoTouch.x > tornillo.frame.origin.x && puntoTouch.x < (tornillo.frame.origin.x + tornillo.frame.size.width) && 
			  puntoTouch.y > tornillo.frame.origin.y && puntoTouch.y < (tornillo.frame.origin.y + tornillo.frame.size.height) && tornilloActivo) {
		float nX = tornillo.center.x + (puntoTouch.x - oldX);
		float nY = tornillo.center.y + (puntoTouch.y - oldY);
		CGPoint nCenter = CGPointMake(nX,nY);
		tornillo.center = nCenter;
		oldX = puntoTouch.x;
		oldY = puntoTouch.y;
	} 
	else if (puntoTouch.x > clavo.frame.origin.x && puntoTouch.x < (clavo.frame.origin.x + clavo.frame.size.width) && 
			 puntoTouch.y > clavo.frame.origin.y && puntoTouch.y < (clavo.frame.origin.y + clavo.frame.size.height) && clavoActivo) {
		float nX = clavo.center.x + (puntoTouch.x - oldX);
		float nY = clavo.center.y + (puntoTouch.y - oldY);
		CGPoint nCenter = CGPointMake(nX,nY);
		clavo.center = nCenter;
		oldX = puntoTouch.x;
		oldY = puntoTouch.y;
	} 
	else if (puntoTouch.x > desarmador.frame.origin.x && puntoTouch.x < (desarmador.frame.origin.x + desarmador.frame.size.width) && 
			 puntoTouch.y > desarmador.frame.origin.y && puntoTouch.y < (desarmador.frame.origin.y + desarmador.frame.size.height) && desarmadorActivo) {
		float nX = desarmador.center.x + (puntoTouch.x - oldX);
		float nY = desarmador.center.y + (puntoTouch.y - oldY);
		CGPoint nCenter = CGPointMake(nX,nY);
		desarmador.center = nCenter;
		oldX = puntoTouch.x;
		oldY = puntoTouch.y;
	}
		
	
	NSLog(@"touchMoved X: %f, Y: %f", puntoTouch.x, puntoTouch.y);
	NSLog(@"Martillo X: %f, Y: %f", martillo.frame.size.height, martillo.frame.size.width);
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	martilloActivo = NO;
	desarmadorActivo = NO;
	tornilloActivo = NO;
	clavoActivo = NO;
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
	martilloActivo = NO;
	desarmadorActivo = NO;
	tornilloActivo = NO;
	clavoActivo = NO;
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
	if (event.subtype == UIEventSubtypeMotionShake) {
		martillo.center = centroMartillo;
		desarmador.center = centroDesarmador;
		tornillo.center = centroTornillo;
		clavo.center = centroClavo;
	}
}

- (BOOL) canBecomeFirstResponder {
	return YES;
}

-(void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	[self becomeFirstResponder];
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
	centroMartillo = martillo.center;
	centroDesarmador = desarmador.center;
	centroTornillo = tornillo.center;
	centroClavo = clavo.center;
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

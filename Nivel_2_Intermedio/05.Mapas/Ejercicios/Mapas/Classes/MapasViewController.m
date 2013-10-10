//
//  MapasViewController.m
//  Mapas
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "MapasViewController.h"

@implementation MapasViewController
@synthesize mapa, funcionMapa;

- (IBAction) cambiaVistaMapa{
	if (funcionMapa.selectedSegmentIndex == 0) {	
		mapa.mapType=MKMapTypeSatellite;
	}
	if (funcionMapa.selectedSegmentIndex == 1) {	
		mapa.showsUserLocation=TRUE;
		mapa.mapType=MKMapTypeStandard;
		MKCoordinateRegion region;
        MKCoordinateSpan span;
        span.latitudeDelta=5.2;
        span.longitudeDelta=5.2;
		CLLocationCoordinate2D location = [self addressLocation];
        region.span=span;
        region.center=location;
		
		[mapa setRegion:region animated:TRUE];
        [mapa regionThatFits:region];

		
	
	}
}

-(CLLocationCoordinate2D) addressLocation {
    NSString *urlString = [NSString stringWithFormat:@"http://maps.google.com/maps/geo?q=Chihuahua&output=csv"];
	NSString *locationString = [NSString stringWithContentsOfURL:[NSURL URLWithString:urlString] 
														encoding:NSASCIIStringEncoding error:NULL];
    NSArray *listItems = [locationString componentsSeparatedByString:@","];
	
    double latitude = 0.0;
    double longitude = 0.0;
	
    if([listItems count] >= 4 && [[listItems objectAtIndex:0] isEqualToString:@"200"]) {
        latitude = [[listItems objectAtIndex:2] doubleValue];
        longitude = [[listItems objectAtIndex:3] doubleValue];
    }
    else {
		//error
    }
    CLLocationCoordinate2D location;
    location.latitude = latitude;
    location.longitude = longitude;
	
    return location;
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
	mapa.mapType = MKMapTypeHybrid;
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

//
//  PickerViewViewController.m
//  PickerView
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "PickerViewViewController.h"

@implementation PickerViewViewController
@synthesize picker;

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView 
			numberOfRowsInComponent:(NSInteger)component {
	return [generos count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView 
			 titleForRow:(NSInteger)row 
			forComponent:(NSInteger)componen {
	return [generos objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView 
	  didSelectRow:(NSInteger)row 
	   inComponent:(NSInteger)component {
	NSString *str = [[NSString alloc] initWithFormat:@"Prefiero %@",[generos objectAtIndex:row]];
	UIAlertView *alerta = [[UIAlertView alloc] 
						   initWithTitle:@"Gustos musicales" 
						   message:str 
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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	generos = [[NSArray alloc] initWithObjects:
			   @"Rock",@"Salsa", @"Balada", 
			   @"Ranchera", @"Heavy Metal", 
			   @"Infantil", @"Merengue", nil];
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

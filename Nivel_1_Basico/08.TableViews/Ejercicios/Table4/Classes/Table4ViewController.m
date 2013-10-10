//
//  Table4ViewController.m
//  Table4
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "Table4ViewController.h"

@implementation Table4ViewController

@synthesize nombre, cargo, foto;

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section {
	return [nombre count];
}

- (NSString *)tableView:(UITableView *)tableView 
titleForHeaderInSection:(NSInteger)section {
		return @"Personal de Edumat-TI";
}

- (UITableViewCell *)tableView:(UITableView *)tableView 
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	UITableViewCell *celda =  [[UITableViewCell alloc] 
				 initWithStyle:UITableViewCellStyleSubtitle	
				 reuseIdentifier:@"algunID"];
	
	NSString *imgFile = [[NSBundle mainBundle] 
						 pathForResource:[foto objectAtIndex:indexPath.row] 
						 ofType:@"png"];
	UIImage *imagen = [[UIImage alloc] initWithContentsOfFile:imgFile];
	
	celda.textLabel.text = [nombre objectAtIndex:indexPath.row];
	celda.detailTextLabel.text = [cargo objectAtIndex:indexPath.row];
	celda.imageView.image = imagen;

	celda.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
		
	
	return celda;
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
	nombre = [[NSArray alloc] initWithObjects:@"Araceli", @"Emmanuelle", @"Rosendo", nil];
	cargo = [[NSArray alloc] initWithObjects:@"Tesista", @"Profesor", @"Colaborador", nil];
	foto = [[NSArray alloc] initWithObjects:@"araceli", @"emma", @"chendo", nil];
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

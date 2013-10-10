//
//  Table3ViewController.m
//  Table3
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "Table3ViewController.h"

@implementation Table3ViewController

@synthesize agenda;

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 3;
}

- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section {
	if (section == 0) return 2;
	else if (section == 1) return 3;
	else if (section == 2) return 3;
	else return 0;
}

- (NSString *)tableView:(UITableView *)tableView 
titleForHeaderInSection:(NSInteger)section {
	if (section == 0) return @"Amigos";
	else if (section == 1) return @"Familiares";
	else if (section == 2) return @"Compañeros de trabajo";
	return @"";
}

- (UITableViewCell *)tableView:(UITableView *)tableView 
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	 
	UITableViewCell *celda = [tableView dequeueReusableCellWithIdentifier:@"algunID"];
	
	if (celda == nil) {
		celda = [[UITableViewCell alloc] 
				 initWithStyle:UITableViewCellStyleDefault	
				 reuseIdentifier:@"algunID"];
		int renglon = indexPath.row;
		if (indexPath.section == 0) renglon += 0;
		else if (indexPath.section == 1) renglon += 2;
		else if (indexPath.section == 2) renglon += 5;
		
		celda.textLabel.text = [agenda objectAtIndex:renglon];
	}
	
	return celda;
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
	NSArray *secciones = [[NSArray alloc] initWithObjects:@"Amigos", @"Familiares", @"Compañeros de trabajo", nil];
	return secciones;
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
	agenda = [[NSArray alloc] initWithObjects:@"Juan", @"Ana", 
			  @"Pedro", @"Alicia", @"Neo", @"Homero", @"Harry", @"Eva", nil];
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

//
//  Table2ViewController.m
//  Table2
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "Table2ViewController.h"

@implementation Table2ViewController

@synthesize pelis;

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section {
	NSLog(@"renglones: %d", [pelis count]);
	return [pelis count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView 
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	UITableViewCell *celda = [tableView dequeueReusableCellWithIdentifier:@"algunID"];
	
	if (celda == nil) {
		celda = [[UITableViewCell alloc] 
							  initWithStyle:UITableViewCellStyleDefault	
							  reuseIdentifier:@"algunID"];
		celda.textLabel.text = [pelis objectAtIndex:indexPath.row];
	}
	
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
	NSString *archivo = [[NSBundle mainBundle] 
						 pathForResource:@"Peliculas" ofType:@"plist"];
	pelis = [[NSArray alloc] initWithContentsOfFile:archivo];
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

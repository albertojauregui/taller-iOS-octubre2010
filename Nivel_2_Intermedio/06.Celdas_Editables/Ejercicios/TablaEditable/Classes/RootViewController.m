//
//  RootViewController.m
//  TablaEditable
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "RootViewController.h"
#import "NewPelicula.h"

@implementation RootViewController
@synthesize peliculas;

NSIndexPath *ultimaCelda;

- (void)viewDidLoad {
    [super viewDidLoad];
	peliculas = [[Peliculas alloc] init];
	[peliculas loadPeliculas];
	self.navigationItem.title = [[NSString alloc] initWithFormat:@"Peliculas (%d)",[peliculas count]];
	self.navigationItem.rightBarButtonItem = self.editButtonItem;

}



- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
	self.navigationItem.title = [[NSString alloc] initWithFormat:@"Peliculas (%d)",[peliculas count]];
	[self.tableView reloadData];
}

/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release anything that can be recreated in viewDidLoad or on demand.
	// e.g. self.myOutlet = nil;
}


#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [peliculas count] + 1; //Agregamos una celda para "agregar" una peli mas
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {

	[super setEditing:editing animated:animated];
	[self.navigationItem setHidesBackButton:editing animated:YES];
	[self.tableView beginUpdates];
	
	if (editing) {
		UITableViewCell *celda = [self.tableView cellForRowAtIndexPath:ultimaCelda];
		celda.userInteractionEnabled = YES;
		NSLog(@"Editando");
	}
	else {
		[self.tableView cellForRowAtIndexPath:ultimaCelda].userInteractionEnabled = NO;		
		NSLog(@"finish edicion");
	}
	[self.tableView endUpdates];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.
	if (indexPath.row < [peliculas count]) {
		cell.textLabel.text = [peliculas getPelicula:indexPath.row];
		cell.editingAccessoryType = UITableViewCellAccessoryNone;
	}
	else {
		cell.editingAccessoryType = UITableViewCellAccessoryDisclosureIndicator;
		if (!self.editing)
			cell.userInteractionEnabled = NO;
			
		ultimaCelda = indexPath;
	}
    return cell;
}




// Override to support row selection in the table view.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	if (indexPath.row == [peliculas count]) {
		// Navigation logic may go here -- for example, create and push another view controller.
		NewPelicula *anotherViewController = [[NewPelicula alloc] initWithNibName:@"NewPelicula" bundle:nil];
		anotherViewController.peliculas = peliculas;
		[self.navigationController pushViewController:anotherViewController animated:YES];
		[anotherViewController release];
	}
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
	if (indexPath.row == [peliculas count]) {		
		UITableViewCell *celda = [tableView cellForRowAtIndexPath:indexPath];
		celda.userInteractionEnabled = YES;
		return UITableViewCellEditingStyleInsert;
	}
	return UITableViewCellEditingStyleDelete;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
		[peliculas removePelicula:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
		self.navigationItem.title = [[NSString alloc] initWithFormat:@"Peliculas (%d)",[peliculas count]];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
		[tableView cellForRowAtIndexPath:indexPath].userInteractionEnabled = YES;
	} 
	//ç	
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


- (void)dealloc {
    [super dealloc];
}


@end


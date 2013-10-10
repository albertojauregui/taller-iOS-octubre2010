//
//  RootViewController.m
//  CeldaEditable
//
//  Created by Rene Cruz Flores on 24/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "RootViewController.h"
#import "MiCelda.h"

@implementation RootViewController
@synthesize profesores;


- (void)viewDidLoad {
    [super viewDidLoad];
	
	profesores = [[NSArray alloc] 
				  initWithObjects:@"Alberto Morales", @"Enrique Gaona", @"Antonio Arellano", @"Jorge Ibarra", nil];
	
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
	self.navigationItem.rightBarButtonItem = self.editButtonItem;
	self.title = @"Profesores";
}


/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
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
    return [profesores count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[MiCelda alloc] initWithFrame:CGRectMake(0, 0, 0, 0) reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.
	((MiCelda *) cell).txtCaja.text = [profesores objectAtIndex:indexPath.row];
	((MiCelda *) cell).celdaIndexPath = indexPath;
	((MiCelda *) cell).controlador = self;
    return cell;
}

//Quita recoracion de edicion (boton rojo o verde)
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
	return UITableViewCellEditingStyleNone;
}

//Impide la identación al editar
- (BOOL)tableView:(UITableView *)tableView shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO; 
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
	
	[super setEditing:editing animated:animated];
	[self.navigationItem setHidesBackButton:editing animated:YES];
	[self.tableView beginUpdates];
	
	if (editing) {
		
		NSLog(@"Editando");
	}
	else {
		NSLog(@"No edita");
	}
	
	[self.tableView endUpdates];
}	

- (void)updateText:(NSString *)text atIndexPath:(NSIndexPath *)indexPath
{
	[profesores replaceObjectAtIndex:indexPath.row withObject:text];
}

/*
// Override to support row selection in the table view.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    // Navigation logic may go here -- for example, create and push another view controller.
	// AnotherViewController *anotherViewController = [[AnotherViewController alloc] initWithNibName:@"AnotherView" bundle:nil];
	// [self.navigationController pushViewController:anotherViewController animated:YES];
	// [anotherViewController release];
}
*/


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/


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


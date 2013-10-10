//
//  RootViewController.m
//  Libros
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "RootViewController.h"
#import "Detalle.h"

@implementation RootViewController
@synthesize titulos, autores, resumenes, tabla, currentElement;

-(void) doParsing{
	titulos = [[NSMutableArray alloc] init];
	autores = [[NSMutableArray alloc] init];
	resumenes = [[NSMutableArray alloc] init];
	
	
	//
	NSURL *url = [[NSURL alloc] initWithString:@"http://sites.google.com/site/iphonesdktutorials/xml/Books.xml"];
	NSXMLParser *parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
	
	
    // Esta misma clase sera la delegate implicita del parser (no se necesita agregar protocolo en el header)
    [parser setDelegate:self];
	
    // Para el tipo de parseo que hacemos, desactivamos algunas funciones del parser
    [parser setShouldProcessNamespaces:NO];
    [parser setShouldReportNamespacePrefixes:NO];
    [parser setShouldResolveExternalEntities:NO];
	
    //Realiza parsing
	[parser parse];
	
	//Libera recurso
    [parser release];
	
}


- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI 
 qualifiedName:(NSString *)qName {
	if ([elementName isEqual:@"title"]) {
		[titulos addObject:[[NSString alloc] initWithString:currentElement]];
	} else if ([elementName isEqual:@"author"]) {
		[autores addObject:[[NSString alloc] initWithString:currentElement]];
	} else if ([elementName isEqual:@"summary"]) {
		[resumenes addObject:[[NSString alloc] initWithString:currentElement]];
	}
	
	[currentElement setString:@""];
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
	if (!currentElement) {
		currentElement = [[NSMutableString alloc] initWithString:string];
		
	} else{
		[currentElement appendString:string];
	}
}


- (void)viewDidLoad {
	
	self.title = @"Libros";
	[self doParsing];
    [super viewDidLoad];

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
    return [titulos count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.
	cell.textLabel.text = [titulos objectAtIndex:indexPath.row];
	cell.detailTextLabel.text = [autores objectAtIndex:indexPath.row];
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	
    return cell;
}




// Override to support row selection in the table view.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    // Navigation logic may go here -- for example, create and push another view controller.
	 Detalle *anotherViewController = [[Detalle alloc] initWithNibName:@"Detalle" bundle:nil];
	Libro *currentLibro = [[Libro alloc] init];
	currentLibro.titulo = [titulos objectAtIndex:indexPath.row];
	currentLibro.autor = [autores objectAtIndex:indexPath.row];
	currentLibro.resumen = [resumenes objectAtIndex:indexPath.row];
	anotherViewController.libro = currentLibro;
	
	 [self.navigationController pushViewController:anotherViewController animated:YES];
	 
	 [anotherViewController release];
}



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


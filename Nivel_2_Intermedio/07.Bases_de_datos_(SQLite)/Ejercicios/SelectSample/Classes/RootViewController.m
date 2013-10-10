//
//  RootViewController.m
//  SelectSample
//
//  Created by Rene Cruz Flores on 24/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "RootViewController.h"
#import <sqlite3.h>

@implementation RootViewController
@synthesize ids, nombres, emails, telefonos;

static sqlite3_stmt *init_statement = nil;
static sqlite3_stmt *deleteStmt = nil;
static sqlite3 *database;

-(void) initDatabase{
	
	//La base de datos esta almacenada en el paquete de la app.
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	NSString *path = [documentsDirectory stringByAppendingPathComponent:@"ejemplo1.sqlite"];
	//Abrir la base de datos
	if (sqlite3_open([path UTF8String], &database) == SQLITE_OK) {
		NSLog(@"Exito al abrir la base de datos!");
	}
	else {
		//Incluso si falla, hay que limpiar los recursos
		sqlite3_close(database);
		NSAssert1(0,@"Fallo al abrir la base de datos: '%s'.", sqlite3_errmsg(database));
		
	}
	
}

-(void) listar{

	char *sql = "SELECT * FROM contacto";
	
	//Preparamos la sentencia para compilar la consulta
	// el 3er. paramtro es la longitud de la cadena SQL, si es -1 entonces se detiene al encontrar el primer nulo
	if (sqlite3_prepare(database, sql, -1, &init_statement, NULL) == SQLITE_OK) {
		//recorremos el resulset uno a uno
		while (sqlite3_step(init_statement) == SQLITE_ROW) {
			// el segundo parametro indica el indice de la columna que queremos
			int primaryKey = sqlite3_column_int(init_statement, 0);
			NSString *nombre = [NSString stringWithUTF8String:(char *)sqlite3_column_text(init_statement, 1)];
			NSString *email = [NSString stringWithUTF8String:(char *)sqlite3_column_text(init_statement, 2)];
			NSString *telefono = [NSString stringWithUTF8String:(char *)sqlite3_column_text(init_statement, 3)];
			NSNumber *oNum = [NSNumber numberWithInt:primaryKey];

			[ids addObject:oNum];
			[nombres addObject:nombre];
			[emails	 addObject:email];
			[telefonos addObject:telefono];
			
			NSLog(@"clave: %d, Nombre: %@, Email: %@, Telefono %@",primaryKey, nombre, email, telefono);
			
		}
	}
	//Finalizamos la sentencia y liberamos los recursos asociados a la operacion
	sqlite3_finalize(init_statement);

}



- (void)viewDidLoad {
    [super viewDidLoad];
	ids = [[NSMutableArray alloc] init];
	nombres = [[NSMutableArray alloc] init];
	emails = [[NSMutableArray alloc] init];
	telefonos = [[NSMutableArray alloc] init];
	
	[self initDatabase];
	[self listar];
	
	self.title = @"Contactos";
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
	[super setEditing:editing animated:animated];
	
	[self.tableView beginUpdates];
	
	//Codigo de edicion de celdas
	if (editing) {
		NSLog(@"inicio de edicion");
	} else {
		NSLog(@"fin de edicion");
	}
	
	[self.tableView endUpdates];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
	NSLog(@"commit");
	
	[self removeContacto:indexPath.row];

	
	[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
	
	//[tableView reloadData];
}

-(void)removeContacto:(int) row {
	
	//el signo ? se sustituira con una variable posteriormente
	const char *sql = "delete from contacto where id = ?";
	if (sqlite3_prepare_v2(database, sql, -1, &deleteStmt, NULL) !=  SQLITE_OK) {
		NSAssert1(0,@"Error al en la sentencia: %@.", sqlite3_errmsg(database));
	} else {
		NSLog(@"Sentencia SQL ok!");
	}
	
	sqlite3_bind_int(deleteStmt,1, [[ids objectAtIndex:row] intValue]); 
	
	if(SQLITE_DONE != sqlite3_step(deleteStmt))
		NSAssert1(0, @"Error al borrar dato. '%s'", sqlite3_errmsg(database));
	else {			
		NSLog(@"Registor Borrado con ID: %@", [ids objectAtIndex:row]); 
	}
	//Reset the add statement.
	sqlite3_reset(deleteStmt);
	
	[ids removeAllObjects];
	[nombres removeAllObjects];
	[emails removeAllObjects];
	[telefonos removeAllObjects];
	
	[self listar];
	
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
    return [nombres count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.
	cell.textLabel.text = [nombres objectAtIndex:indexPath.row];
	
	NSString *detalle = [[NSString alloc] initWithFormat:@"Email: %@, Tel: %@", [emails objectAtIndex:indexPath.row], 
						 [telefonos objectAtIndex:indexPath.row]];
	cell.detailTextLabel.text = detalle;
    
	return cell;
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


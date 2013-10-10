//
//  InsertSampleViewController.m
//  InsertSample
//
//  Created by Rene Cruz Flores on 24/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "InsertSampleViewController.h"

@implementation InsertSampleViewController
@synthesize txtNombre, txtEmail, txtTelefono;

sqlite3_stmt *init_statement = nil;
sqlite3 *database;


-(IBAction) addContacto{
	[self initDatabase];
	if (init_statement == nil) {
		//el signo ? se sustituira con una variable posteriormente
		char *sql = "INSERT INTO contacto (nombre, email, telefono) VALUES (?,?,?)";
		if (sqlite3_prepare_v2(database, sql, -1, &init_statement, NULL) !=  SQLITE_OK) {
			NSAssert1(0,@"Error al en la sentencia: %@.", sqlite3_errmsg(database));
		} else {
			NSLog(@"Sentencia SQL ok!");
		}
		
		sqlite3_bind_text(init_statement, 1, [txtNombre.text UTF8String], -1, SQLITE_TRANSIENT);
		sqlite3_bind_text(init_statement, 2, [txtEmail.text UTF8String], -1, SQLITE_TRANSIENT);
		sqlite3_bind_text(init_statement, 3, [txtTelefono.text UTF8String], -1, SQLITE_TRANSIENT);		
		
		if(SQLITE_DONE != sqlite3_step(init_statement))
			NSAssert1(0, @"Error al insertar dato. '%s'", sqlite3_errmsg(database));
		else {
			//SQLite provides a method to get the last primary key inserted by using sqlite3_last_insert_rowid
			int contactoID = sqlite3_last_insert_rowid(database);
			NSLog(@"Registor insertado con ID: %d", contactoID);
		}
		//Reset the add statement.
		sqlite3_reset(init_statement);
		init_statement = nil;
		[self listar];
	}
}

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
			//primaryKey++;
			NSLog(@"clave: %d, Nombre: %@, Email: %@, Telefono %@",primaryKey, nombre, email, telefono);
			
		}
	}
	//Finalizamos la sentencia y liberamos los recursos asociados a la operacion
	sqlite3_finalize(init_statement);
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


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


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

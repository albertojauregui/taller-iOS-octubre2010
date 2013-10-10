//
//  LeerArchivoViewController.m
//  LeerArchivo
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "LeerArchivoViewController.h"

@implementation LeerArchivoViewController
@synthesize texto;

-(IBAction) leerArchivo{
	//
	//http://azul.iing.mxl.uabc.mx/~renecruz/media/playlist.xml
	NSString *archivo = [[NSString alloc] 
						 initWithFormat:@"http://azul.iing.mxl.uabc.mx/~renecruz/share/datos.txt"];
	NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:archivo]];
	NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
	if (conn) {
		contenido = [[NSMutableData alloc] retain]; 
	} else {
		NSLog(@"Error al abrir el archivo...");
	}
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
	[contenido setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
	[contenido appendData:data];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
	[connection release];
	[contenido release];
	NSLog(@"Ocurrio un error al leer");
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
	[connection release];
	NSString *txt = [[NSString alloc] initWithData:contenido encoding:NSASCIIStringEncoding];
	texto.text = txt;
	NSLog(@"Conexion terminada");
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

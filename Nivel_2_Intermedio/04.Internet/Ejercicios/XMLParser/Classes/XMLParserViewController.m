//
//  XMLParserViewController.m
//  XMLParser
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "XMLParserViewController.h"
#import <Foundation/Foundation.h>
#import <Foundation/NSXMLParser.h>

@implementation XMLParserViewController
@synthesize texto;
int countElements;

-(IBAction) leerXML{
	titulos = [[NSMutableArray alloc] init];
	NSString *url = [[NSString alloc] 
					 initWithString:@"http://sites.google.com/site/iphonesdktutorials/xml/Books.xml"];
	[self parseXMLFileAtURL:url];
}

- (void)parserDidStartDocument:(NSXMLParser *)parser{	
	//Inicio del parsing...
}

- (void)parserDidEndDocument:(NSXMLParser *)parser {
	//Fin del parsing...
	NSLog(@"Titulos: %d", [titulos count]);
	NSString *rotulo = [[NSString alloc] initWithFormat:@"Libros encontrados: %d\n", [titulos count]];
	NSMutableString *strTexto = [[NSMutableString alloc] initWithString:rotulo];
	for (int x=0; x < [titulos count]; x++) {
		[strTexto appendString:[titulos objectAtIndex:x]];
		[strTexto appendString:@"\n"];
		NSLog(@"%@",[titulos objectAtIndex:x]);
		
	}
	texto.text = strTexto;
}

- (void)parseXMLFileAtURL:(NSString *)URL { //URL is the file path (i.e. /Applications/MyExample.app/MyFile.xml)

    //Generamos las URL y creamos un NSXMLParser con el contenido de URL
	//http://azul.iing.mxl.uabc.mx/~renecruz/share/equipos.xml
	//http://sites.google.com/site/iphonesdktutorials/xml/Books.xml
	NSURL *url = [[NSURL alloc] initWithString:@"http://sites.google.com/site/iphonesdktutorials/xml/Books.xml"];
	//NSURL *url = [[NSURL alloc] initWithString:@"http://azul.iing.mxl.uabc.mx/~renecruz/share/equipos.xml"];
	NSXMLParser *parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
	
	//NSString *xml = [[NSString alloc] initWithString:@"<?xml version='1.0'?><IPAddressService><country>United States</country></IPAddressService>"];
	//NSData *xmlData = [xml dataUsingEncoding:NSASCIIStringEncoding];
	//NSXMLParser *parser = [[NSXMLParser alloc] initWithData:xmlData];    // Esta misma clase sera la delegate implicita del parser (no se necesita agregar protocolo en el header)

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

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{			
    //Encontro un elemento del arbol, comienza a analizar su contenido
	
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{     
	//Finalizo de analizar un elemento del arbol, es un buen momento para borrar la cadena leida
	//if ([elementName isEqual:@"m:sName"])
	if ([elementName isEqual:@"title"])
		[titulos addObject:[[NSString alloc] initWithFormat:@"%@",currentElementValue]]; //Creamos un nuevo objeto por que el valor actual es mutable
	
	[currentElementValue setString:@""];
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
	//Si encontro una cadena en una rama del arbol
	if(!currentElementValue) 
		currentElementValue = [[NSMutableString alloc] initWithString:string];
	else
		[currentElementValue appendString:string];
	
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

//
//  Parser.m
//  Sample
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import "Parser.h"


@implementation Parser


- (NSString *)parseXMLTOSring:(NSString *)xmlString { //URL is the file path (i.e. /Applications/MyExample.app/MyFile.xml)
	
	NSData *xmlData = [xmlString dataUsingEncoding:NSASCIIStringEncoding];
	NSXMLParser *parser = [[NSXMLParser alloc] initWithData:xmlData];    // Esta misma clase sera la delegate implicita del parser (no se necesita agregar protocolo en el header)
	
    [parser setDelegate:self];
	
    // Para el tipo de parseo que hacemos, desactivamos algunas funciones del parser
    [parser setShouldProcessNamespaces:NO];
    [parser setShouldReportNamespacePrefixes:NO];
    [parser setShouldResolveExternalEntities:NO];
	
    //Realiza parsing
	[parser parse];
	
	//Libera recurso
    [parser release];
	return pais;
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{     
	//Finalizo de analizar un elemento del arbol, es un buen momento para borrar la cadena leida
	if ([elementName isEqual:@"country"])
		pais = [[NSString alloc] initWithString:currentElementValue]; //Creamos un nuevo objeto por que el valor actual es mutable
	
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
	//Si encontro una cadena en una rama del arbol
	if(!currentElementValue) 
		currentElementValue = [[NSMutableString alloc] initWithString:string];
	else
		[currentElementValue appendString:string];
}

@end

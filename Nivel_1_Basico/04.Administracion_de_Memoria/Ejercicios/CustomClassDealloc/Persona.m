//
//  Persona.m
//  CustomClass
//
//  Created by Rene Cruz Flores on 16/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import "Persona.h"


@implementation Persona

- (void) saludar {
	NSLog(@"Hola, soy %@", nombre);
}

- (void) setNombre: (NSString *) n {
	nombre = n;
}

- (void) dealloc {
	NSLog(@"Objeto destruido");
	[super dealloc];
}
@end

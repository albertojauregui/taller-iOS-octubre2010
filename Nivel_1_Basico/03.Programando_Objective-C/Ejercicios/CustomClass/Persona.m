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
	NSLog(@"Hola, soy %@, tu edad es: %d", nombre, edad);
}

- (void) setDatos: (NSString *) n Edad:(int) e{
	nombre = n;
	edad = e;
}

@end

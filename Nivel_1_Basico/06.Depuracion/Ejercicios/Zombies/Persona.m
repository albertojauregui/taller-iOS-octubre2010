//
//  Persona.m
//  Zombies
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import "Persona.h"


@implementation Persona

-(void) setDatos:(int) e nombre:(NSString *) n{
	edad = e;
	nombre = n;
}

-(void) verInfo{
	NSLog(@"Nombre: %@, Edad: %d", nombre, edad);
}

@end

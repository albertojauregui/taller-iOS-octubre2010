//
//  Contacto.m
//  Agenda
//
//  Created by Rene Cruz Flores on 16/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import "Contacto.h"


@implementation Contacto

-(void) imprimeDatos{
	NSLog(@"Contacto: %@, Correo: %@, Tel. %@",nombre, email, telefono);
}

-(void) setDatos:(NSString *) n emailString:(NSString *) e telefonoString:(NSString *) t {
	nombre = n;
	email = e;
	telefono = t;
	
}

@end

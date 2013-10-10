//
//  Contacto.h
//  Agenda
//
//  Created by Rene Cruz Flores on 16/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Contacto : NSObject {
	NSString *nombre;
	NSString *email;
	NSString *telefono;
}

-(void) imprimeDatos;

-(void) setDatos:(NSString *) n emailString:(NSString *) e telefonoString:(NSString *) t;

@end

//
//  Persona.h
//  CustomClass
//
//  Created by Rene Cruz Flores on 16/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Persona : NSObject {

	//vars
	int edad;
	NSString *nombre;
}

//metodos publicos
- (void) saludar;
- (void) setNombre: (NSString *) n;

@end

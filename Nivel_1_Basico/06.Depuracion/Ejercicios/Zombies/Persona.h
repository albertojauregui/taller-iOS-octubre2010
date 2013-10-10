//
//  Persona.h
//  Zombies
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Persona : NSObject {
	int edad;
	NSString *nombre;
}

-(void) setDatos:(int) e nombre:(NSString *) n;
-(void) verInfo;

@end

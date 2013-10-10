//
//  Saludar.m
//  ClimaInfo
//
//  Created by Rene Cruz Flores on 05/07/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import "Saludar.h"


@implementation Saludar

-(void) saludar:(NSString *) nombre idEdad:(int) edad {
	NSLog(@"Hola %@, tu edad es: %d.", nombre, edad);
}

@end

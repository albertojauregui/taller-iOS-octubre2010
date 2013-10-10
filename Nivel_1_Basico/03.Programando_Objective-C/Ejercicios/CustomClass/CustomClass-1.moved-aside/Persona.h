//
//  Persona.h
//  CustomClass
//
//  Created by Rene Cruz Flores on 16/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Persona : UITableViewController {
	//vars
	int edad;
	NSString *nombre;
}

//metodos publicos
- (void) saludar;
- (void) setNombre: (NSString *) n;
@end

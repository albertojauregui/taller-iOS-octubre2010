//
//  NewPelicula.h
//  TablaEditable
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Peliculas.h"

@interface NewPelicula : UIViewController {
	Peliculas *peliculas;
	IBOutlet UITextField *texto;
}

@property (nonatomic, retain) Peliculas *peliculas;
@property (nonatomic, retain) UITextField *texto;

-(IBAction) save;

@end

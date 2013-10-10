//
//  Detalle.h
//  Libros
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Libro.h"

@interface Detalle : UIViewController {
	IBOutlet UITextField *titulo;
	IBOutlet UITextField *autor;
	IBOutlet UITextView *resumen;
	Libro *libro;
}

@property (nonatomic, retain) UITextField *titulo;
@property (nonatomic, retain) UITextField *autor;
@property (nonatomic, retain) UITextView *resumen;
@property (nonatomic, retain) Libro *libro;
@end

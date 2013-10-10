//
//  MiCelda.h
//  CeldaEditable
//
//  Created by Rene Cruz Flores on 24/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"

@interface MiCelda : UITableViewCell {
	UITextField *txtCaja;
	NSIndexPath *celdaIndexPath;
	RootViewController *controlador;
}
@property (readwrite, retain) UITextField *txtCaja;
@property (readwrite, retain) NSIndexPath *celdaIndexPath;
@property (readwrite, assign) RootViewController *controlador;
@end

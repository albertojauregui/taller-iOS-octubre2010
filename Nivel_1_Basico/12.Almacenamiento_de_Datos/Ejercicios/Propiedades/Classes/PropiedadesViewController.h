//
//  PropiedadesViewController.h
//  Propiedades
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PropiedadesViewController : UIViewController {
	IBOutlet UITextField *texto;
	IBOutlet UIDatePicker *picker;
}
@property(nonatomic, retain) UITextField *texto;
@property(nonatomic, retain) UIDatePicker *picker;

@end


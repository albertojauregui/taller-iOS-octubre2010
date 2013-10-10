//
//  PickerViewController.h
//  Picker
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController {
	IBOutlet UIDatePicker *picker;
}
@property (nonatomic, retain) UIDatePicker *picker;

-(IBAction)mostrarDia;

@end


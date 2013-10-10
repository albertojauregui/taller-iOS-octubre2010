//
//  PickerViewViewController.h
//  PickerView
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewViewController : UIViewController 
<UIPickerViewDelegate, UIPickerViewDataSource>{
	NSArray *generos;
	IBOutlet UIPickerView *picker;
}
@property (nonatomic, retain) UIPickerView *picker;

@end


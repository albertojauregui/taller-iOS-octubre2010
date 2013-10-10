//
//  ImagePickerViewController.h
//  ImagePicker
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImagePickerViewController : UIViewController 
<UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
	UIImagePickerController *control; 
	IBOutlet UIImageView *vista;
}
@property (nonatomic, retain) UIImageView *vista;

-(IBAction) selectCamara;

@end


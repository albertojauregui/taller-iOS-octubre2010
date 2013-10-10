//
//  ImagePickerAppDelegate.h
//  ImagePicker
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ImagePickerViewController;

@interface ImagePickerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ImagePickerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ImagePickerViewController *viewController;

@end


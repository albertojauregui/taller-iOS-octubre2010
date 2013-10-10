//
//  PickerAppDelegate.h
//  Picker
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PickerViewController;

@interface PickerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PickerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PickerViewController *viewController;

@end


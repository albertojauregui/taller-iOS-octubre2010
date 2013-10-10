//
//  PickerViewAppDelegate.h
//  PickerView
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PickerViewViewController;

@interface PickerViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PickerViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PickerViewViewController *viewController;

@end


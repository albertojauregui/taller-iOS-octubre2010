//
//  PhoneAppDelegate.h
//  Phone
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PhoneViewController;

@interface PhoneAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PhoneViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PhoneViewController *viewController;

@end


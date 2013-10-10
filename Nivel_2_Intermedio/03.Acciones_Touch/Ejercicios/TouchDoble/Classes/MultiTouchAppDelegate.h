//
//  MultiTouchAppDelegate.h
//  MultiTouch
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MultiTouchViewController;

@interface MultiTouchAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MultiTouchViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MultiTouchViewController *viewController;

@end


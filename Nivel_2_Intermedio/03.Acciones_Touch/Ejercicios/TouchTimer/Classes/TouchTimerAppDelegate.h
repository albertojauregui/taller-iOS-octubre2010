//
//  TouchTimerAppDelegate.h
//  TouchTimer
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TouchTimerViewController;

@interface TouchTimerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TouchTimerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TouchTimerViewController *viewController;

@end


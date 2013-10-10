//
//  ToDebugAppDelegate.h
//  ToDebug
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ToDebugViewController;

@interface ToDebugAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ToDebugViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ToDebugViewController *viewController;

@end


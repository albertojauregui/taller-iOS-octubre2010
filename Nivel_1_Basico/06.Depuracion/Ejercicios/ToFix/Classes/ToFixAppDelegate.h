//
//  ToFixAppDelegate.h
//  ToFix
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ToFixViewController;

@interface ToFixAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ToFixViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ToFixViewController *viewController;

@end


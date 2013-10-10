//
//  ShakeAppDelegate.h
//  Shake
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ShakeViewController;

@interface ShakeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ShakeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ShakeViewController *viewController;

@end


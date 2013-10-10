//
//  TouchMoveAppDelegate.h
//  TouchMove
//
//  Created by Rene Cruz Flores on 21/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TouchMoveViewController;

@interface TouchMoveAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TouchMoveViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TouchMoveViewController *viewController;

@end


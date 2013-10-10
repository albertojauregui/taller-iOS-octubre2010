//
//  TouchSimpleAppDelegate.h
//  TouchSimple
//
//  Created by Rene Cruz Flores on 21/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TouchSimpleViewController;

@interface TouchSimpleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TouchSimpleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TouchSimpleViewController *viewController;

@end


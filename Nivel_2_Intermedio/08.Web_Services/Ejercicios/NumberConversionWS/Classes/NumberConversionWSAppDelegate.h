//
//  NumberConversionWSAppDelegate.h
//  NumberConversionWS
//
//  Created by Rene Cruz Flores on 17/10/10.
//  Copyright G-Cross Studio 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NumberConversionWSViewController;

@interface NumberConversionWSAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    NumberConversionWSViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet NumberConversionWSViewController *viewController;

@end


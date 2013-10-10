//
//  TestAppDelegate.h
//  Test
//
//  Created by Rene Cruz Flores on 15/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TestViewController;

@interface TestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TestViewController *viewController;

@end


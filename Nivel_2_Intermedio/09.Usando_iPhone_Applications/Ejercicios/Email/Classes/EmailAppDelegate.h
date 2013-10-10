//
//  EmailAppDelegate.h
//  Email
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EmailViewController;

@interface EmailAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    EmailViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EmailViewController *viewController;

@end


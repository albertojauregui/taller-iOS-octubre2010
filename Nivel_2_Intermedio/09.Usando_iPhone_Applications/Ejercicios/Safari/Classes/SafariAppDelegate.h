//
//  SafariAppDelegate.h
//  Safari
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SafariViewController;

@interface SafariAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SafariViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SafariViewController *viewController;

@end


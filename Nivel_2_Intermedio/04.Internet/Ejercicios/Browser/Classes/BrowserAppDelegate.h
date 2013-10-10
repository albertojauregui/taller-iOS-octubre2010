//
//  BrowserAppDelegate.h
//  Browser
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BrowserViewController;

@interface BrowserAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    BrowserViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet BrowserViewController *viewController;

@end


//
//  IconAppAppDelegate.h
//  IconApp
//
//  Created by Rene Cruz Flores on 16/10/10.
//  Copyright G-Cross Studio 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IconAppViewController;

@interface IconAppAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    IconAppViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet IconAppViewController *viewController;

@end


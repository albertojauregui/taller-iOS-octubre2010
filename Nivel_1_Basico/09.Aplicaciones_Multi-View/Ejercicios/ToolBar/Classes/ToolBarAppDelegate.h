//
//  ToolBarAppDelegate.h
//  ToolBar
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ToolBarViewController;

@interface ToolBarAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ToolBarViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ToolBarViewController *viewController;

@end


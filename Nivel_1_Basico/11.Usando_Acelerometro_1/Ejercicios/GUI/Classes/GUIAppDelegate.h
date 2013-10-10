//
//  GUIAppDelegate.h
//  GUI
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GUIViewController;

@interface GUIAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GUIViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GUIViewController *viewController;

@end


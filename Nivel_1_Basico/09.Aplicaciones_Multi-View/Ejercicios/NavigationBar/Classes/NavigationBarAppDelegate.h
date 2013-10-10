//
//  NavigationBarAppDelegate.h
//  NavigationBar
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

@interface NavigationBarAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end


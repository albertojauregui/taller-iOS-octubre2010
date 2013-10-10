//
//  BolaAppDelegate.h
//  Bola
//
//  Created by Rene Cruz Flores on 21/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BolaViewController;

@interface BolaAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    BolaViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet BolaViewController *viewController;

@end


//
//  ColoresAppDelegate.h
//  Colores
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ColoresViewController;

@interface ColoresAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ColoresViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ColoresViewController *viewController;

@end


//
//  AcelerometroAppDelegate.h
//  Acelerometro
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AcelerometroViewController;

@interface AcelerometroAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AcelerometroViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AcelerometroViewController *viewController;

@end


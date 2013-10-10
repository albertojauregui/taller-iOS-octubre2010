//
//  AlertSampleAppDelegate.h
//  AlertSample
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AlertSampleViewController;

@interface AlertSampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AlertSampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AlertSampleViewController *viewController;

@end


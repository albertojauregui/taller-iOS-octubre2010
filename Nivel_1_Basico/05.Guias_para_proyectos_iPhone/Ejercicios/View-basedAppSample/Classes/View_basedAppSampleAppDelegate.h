//
//  View_basedAppSampleAppDelegate.h
//  View-basedAppSample
//
//  Created by Rene Cruz Flores on 16/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class View_basedAppSampleViewController;

@interface View_basedAppSampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    View_basedAppSampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet View_basedAppSampleViewController *viewController;

@end


//
//  MVCSampleAppDelegate.h
//  MVCSample
//
//  Created by Rene Cruz Flores on 16/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MVCSampleViewController;

@interface MVCSampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MVCSampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MVCSampleViewController *viewController;

@end


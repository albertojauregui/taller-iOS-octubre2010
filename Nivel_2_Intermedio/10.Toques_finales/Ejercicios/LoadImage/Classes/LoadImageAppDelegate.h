//
//  LoadImageAppDelegate.h
//  LoadImage
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LoadImageViewController;

@interface LoadImageAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    LoadImageViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet LoadImageViewController *viewController;

@end


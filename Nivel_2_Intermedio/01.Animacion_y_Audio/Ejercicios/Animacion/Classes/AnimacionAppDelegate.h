//
//  AnimacionAppDelegate.h
//  Animacion
//
//  Created by Rene Cruz Flores on 20/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AnimacionViewController;

@interface AnimacionAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AnimacionViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AnimacionViewController *viewController;

@end


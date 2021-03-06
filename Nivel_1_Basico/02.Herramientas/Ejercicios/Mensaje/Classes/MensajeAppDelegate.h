//
//  MensajeAppDelegate.h
//  Mensaje
//
//  Created by Rene Cruz Flores on 15/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MensajeViewController;

@interface MensajeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MensajeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MensajeViewController *viewController;

@end


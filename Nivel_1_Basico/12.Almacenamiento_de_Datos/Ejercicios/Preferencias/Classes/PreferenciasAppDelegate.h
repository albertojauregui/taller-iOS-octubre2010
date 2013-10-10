//
//  PreferenciasAppDelegate.h
//  Preferencias
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PreferenciasViewController;

@interface PreferenciasAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PreferenciasViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PreferenciasViewController *viewController;

@end


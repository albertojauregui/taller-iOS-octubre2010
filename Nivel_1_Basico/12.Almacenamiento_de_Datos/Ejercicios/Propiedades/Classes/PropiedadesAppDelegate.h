//
//  PropiedadesAppDelegate.h
//  Propiedades
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PropiedadesViewController;

@interface PropiedadesAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PropiedadesViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PropiedadesViewController *viewController;

@end


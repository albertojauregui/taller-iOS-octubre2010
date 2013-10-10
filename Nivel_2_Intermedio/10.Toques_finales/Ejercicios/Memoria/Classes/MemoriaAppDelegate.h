//
//  MemoriaAppDelegate.h
//  Memoria
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MemoriaViewController;

@interface MemoriaAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MemoriaViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MemoriaViewController *viewController;

@end


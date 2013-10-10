//
//  LeerArchivoAppDelegate.h
//  LeerArchivo
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LeerArchivoViewController;

@interface LeerArchivoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    LeerArchivoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet LeerArchivoViewController *viewController;

@end


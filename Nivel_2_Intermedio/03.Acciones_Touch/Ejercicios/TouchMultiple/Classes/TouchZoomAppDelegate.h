//
//  TouchZoomAppDelegate.h
//  TouchZoom
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TouchView.h"

@interface TouchZoomAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end


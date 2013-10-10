//
//  AudioAppDelegate.h
//  Audio
//
//  Created by Rene Cruz Flores on 21/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AudioViewController;

@interface AudioAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AudioViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AudioViewController *viewController;

@end


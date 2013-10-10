//
//  Table4AppDelegate.h
//  Table4
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Table4ViewController;

@interface Table4AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Table4ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Table4ViewController *viewController;

@end


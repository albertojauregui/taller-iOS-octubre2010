//
//  Table2AppDelegate.h
//  Table2
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Table2ViewController;

@interface Table2AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Table2ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Table2ViewController *viewController;

@end


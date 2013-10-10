//
//  Table3AppDelegate.h
//  Table3
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Table3ViewController;

@interface Table3AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Table3ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Table3ViewController *viewController;

@end


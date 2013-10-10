//
//  Table1AppDelegate.h
//  Table1
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Table1ViewController;

@interface Table1AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Table1ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Table1ViewController *viewController;

@end


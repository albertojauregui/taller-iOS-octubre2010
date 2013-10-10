//
//  InsertSampleAppDelegate.h
//  InsertSample
//
//  Created by Rene Cruz Flores on 24/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class InsertSampleViewController;

@interface InsertSampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    InsertSampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet InsertSampleViewController *viewController;
-(void)createEditableCopyOfDatabaBaseIfNeeded;

@end


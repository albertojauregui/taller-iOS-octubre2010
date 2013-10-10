//
//  SelectSampleAppDelegate.h
//  SelectSample
//
//  Created by Rene Cruz Flores on 24/06/10.
//  Copyright UABC 2010. All rights reserved.
//

@interface SelectSampleAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
-(void)createEditableCopyOfDatabaBaseIfNeeded;
@end


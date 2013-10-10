//
//  XMLParserAppDelegate.h
//  XMLParser
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XMLParserViewController;

@interface XMLParserAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    XMLParserViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet XMLParserViewController *viewController;

@end


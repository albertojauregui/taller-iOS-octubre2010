//
//  BrowserViewController.h
//  Browser
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BrowserViewController : UIViewController 
<UISearchBarDelegate>{
	IBOutlet UIWebView *webView;
	IBOutlet UISearchBar *sBar;
	IBOutlet UIActivityIndicatorView *activity;
}
@property (nonatomic, retain) UIWebView *webView;
@property (nonatomic, retain) UISearchBar *sBar;
@property (nonatomic, retain) UIActivityIndicatorView *activity;
@end


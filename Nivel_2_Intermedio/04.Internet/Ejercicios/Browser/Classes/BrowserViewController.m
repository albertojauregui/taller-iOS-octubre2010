//
//  BrowserViewController.m
//  Browser
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import "BrowserViewController.h"

@implementation BrowserViewController

@synthesize webView, sBar, activity;

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
	[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[searchBar text]]]];
	[searchBar resignFirstResponder];
}

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
	[searchBar setText:@"http://"];
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
	[activity startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
	[activity stopAnimating];
}
/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	NSString *urlAddress = @"http://www.amazon.com";
	
	//Creamos un objeto URL
	NSURL *url = [NSURL URLWithString:urlAddress];
	
	//Creamos un objeto Request a partir del URL
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
	
	//Cargamos el request en la vista
	[webView loadRequest:requestObj];
	
	
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end

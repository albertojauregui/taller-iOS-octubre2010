//
//  Table2ViewController.h
//  Table2
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Table2ViewController : UIViewController
	<UITableViewDelegate, UITableViewDataSource>{
		NSArray *pelis;
	}
	
@property(nonatomic, retain) NSArray *pelis;

@end


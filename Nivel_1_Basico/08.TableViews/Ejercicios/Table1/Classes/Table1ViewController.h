//
//  Table1ViewController.h
//  Table1
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Table1ViewController : UIViewController 
	<UITableViewDelegate, UITableViewDataSource>{
		NSArray *productos;
}

@property(nonatomic, retain) NSArray *productos;
@end


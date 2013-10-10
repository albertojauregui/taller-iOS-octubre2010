//
//  Table3ViewController.h
//  Table3
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Table3ViewController : UIViewController 
	<UITableViewDelegate, UITableViewDataSource>{
		NSArray *agenda;
}
@property(nonatomic, retain) NSArray *agenda;

@end


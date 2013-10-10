//
//  RootViewController.h
//  NavigationBar
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

@interface RootViewController : UITableViewController 
	<UITableViewDataSource>{
		NSArray *datos;
}
@property(nonatomic, retain) NSArray *datos;
@end

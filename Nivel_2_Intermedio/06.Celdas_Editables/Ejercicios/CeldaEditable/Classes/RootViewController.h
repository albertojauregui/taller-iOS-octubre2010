//
//  RootViewController.h
//  CeldaEditable
//
//  Created by Rene Cruz Flores on 24/06/10.
//  Copyright UABC 2010. All rights reserved.
//

@interface RootViewController : UITableViewController {
	NSMutableArray *profesores;
}
@property (nonatomic, retain) NSMutableArray *profesores;
- (void)updateText:(NSString *)text atIndexPath:(NSIndexPath *)indexPath;
@end

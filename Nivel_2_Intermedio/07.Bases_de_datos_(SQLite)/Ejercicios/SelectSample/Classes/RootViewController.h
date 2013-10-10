//
//  RootViewController.h
//  SelectSample
//
//  Created by Rene Cruz Flores on 24/06/10.
//  Copyright UABC 2010. All rights reserved.
//
#import <sqlite3.h>

@interface RootViewController : UITableViewController {
	NSMutableArray *ids;
	NSMutableArray *nombres;
	NSMutableArray *emails;
	NSMutableArray *telefonos;
}
@property (nonatomic, retain) NSMutableArray *ids;
@property (nonatomic, retain) NSMutableArray *nombres;
@property (nonatomic, retain) NSMutableArray *emails;
@property (nonatomic, retain) NSMutableArray *telefonos;
-(void) initDatabase;
-(void) listar;
-(void)removeContacto:(int) row;
@end

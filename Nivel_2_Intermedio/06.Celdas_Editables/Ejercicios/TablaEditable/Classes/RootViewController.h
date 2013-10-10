//
//  RootViewController.h
//  TablaEditable
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright UABC 2010. All rights reserved.
//
#import "Peliculas.h"
@interface RootViewController : UITableViewController <UITableViewDelegate>{
	Peliculas *peliculas;
}
@property (nonatomic, retain) Peliculas *peliculas;
@end

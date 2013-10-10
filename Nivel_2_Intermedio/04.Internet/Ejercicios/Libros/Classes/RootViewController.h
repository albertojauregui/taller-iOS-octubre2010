//
//  RootViewController.h
//  Libros
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright UABC 2010. All rights reserved.
//

@interface RootViewController : UITableViewController 
<UITableViewDelegate,UITableViewDataSource, NSXMLParserDelegate>{
	IBOutlet UITableView *tabla;
	NSMutableArray *titulos;
	NSMutableArray *autores;
	NSMutableArray *resumenes;
	NSMutableString *currentElement;
	
}
@property (nonatomic, retain) UITableView *tabla;
@property (nonatomic, retain) NSMutableArray *titulos;
@property (nonatomic, retain) NSMutableArray *autores;
@property (nonatomic, retain) NSMutableArray *resumenes;
@property (nonatomic, retain) NSMutableString *currentElement;
@end

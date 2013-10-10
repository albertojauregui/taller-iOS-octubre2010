//
//  InsertSampleViewController.h
//  InsertSample
//
//  Created by Rene Cruz Flores on 24/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface InsertSampleViewController : UIViewController {
	IBOutlet UITextField *txtNombre;
	IBOutlet UITextField *txtEmail;
	IBOutlet UITextField *txtTelefono;
}
@property (nonatomic, retain) UITextField *txtNombre;
@property (nonatomic, retain) UITextField *txtEmail;
@property (nonatomic, retain) UITextField *txtTelefono;

-(IBAction) addContacto;
-(void) initDatabase;
-(void) listar;
@end


//
//  LeerArchivoViewController.h
//  LeerArchivo
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeerArchivoViewController : UIViewController {
	IBOutlet UITextView *texto;
	NSMutableData *contenido;
}
@property (nonatomic, retain) UITextView *texto;
-(IBAction) leerArchivo;

@end


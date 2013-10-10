//
//  SafariViewController.h
//  Safari
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SafariViewController : UIViewController {
	IBOutlet UITextField *direccion;
}
@property (nonatomic, retain) UITextField *direccion;
-(IBAction) abrirSafari;
@end


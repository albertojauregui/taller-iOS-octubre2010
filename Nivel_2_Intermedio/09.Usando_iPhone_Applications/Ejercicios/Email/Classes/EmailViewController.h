//
//  EmailViewController.h
//  Email
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmailViewController : UIViewController {
	IBOutlet UITextField *para;
	IBOutlet UITextField *asunto;
	IBOutlet UITextField *mensaje;
}
@property (nonatomic, retain) UITextField *para;
@property (nonatomic, retain) UITextField *asunto;
@property (nonatomic, retain) UITextField *mensaje;

-(IBAction) send;
@end


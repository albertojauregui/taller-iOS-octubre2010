//
//  PhoneViewController.h
//  Phone
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhoneViewController : UIViewController {
	IBOutlet UITextField *telefono;
}

-(IBAction) llamar;
-(IBAction) sms;
@end


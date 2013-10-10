//
//  SampleViewController.h
//  Sample
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SampleViewController : UIViewController {
	IBOutlet UITextField *ipAddress;
	IBOutlet UITextField *pais;
}
@property (nonatomic, retain) UITextField *ipAddress;
@property (nonatomic, retain) UITextField *pais;

-(IBAction)buscaPais;
@end


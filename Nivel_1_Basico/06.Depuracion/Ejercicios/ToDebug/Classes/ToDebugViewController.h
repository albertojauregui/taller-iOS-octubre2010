//
//  ToDebugViewController.h
//  ToDebug
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDebugViewController : UIViewController {
	IBOutlet UILabel *etiqueta;
}
- (IBAction)operacionInvalida;
- (int)valorA;
- (int)valorB;
@end


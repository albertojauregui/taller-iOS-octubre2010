//
//  ToFixViewController.h
//  ToFix
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
,
@interface ToFixViewController : UIViewController {
	IBOutlet UILabel *etiqueta;
}

@property (nonatomic, retain) UILabel *etiqueta;

- (IBAction) cambiarTexto;

@end


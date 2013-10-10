//
//  AnimacionViewController.h
//  Animacion
//
//  Created by Rene Cruz Flores on 20/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimacionViewController : UIViewController {

	IBOutlet UIView *moverView;
	IBOutlet UIView *escalarView;
	IBOutlet UIView *degradarView;
}
@property (nonatomic, retain) UIView *moverView;
@property (nonatomic, retain) UIView *escalarView;
@property (nonatomic, retain) UIView *degradarView;

-(IBAction) mover;
-(IBAction) escalar;
-(IBAction) degradar;

@end


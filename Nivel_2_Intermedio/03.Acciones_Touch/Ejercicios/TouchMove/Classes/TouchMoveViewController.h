//
//  TouchMoveViewController.h
//  TouchMove
//
//  Created by Rene Cruz Flores on 21/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchMoveViewController : UIViewController {
	IBOutlet UIImageView *martillo;
	IBOutlet UIImageView *desarmador;
	IBOutlet UIImageView *clavo;
	IBOutlet UIImageView *tornillo;
	IBOutlet UIImageView *fondo;
}
@property (nonatomic, retain) UIImageView *martillo;
@property (nonatomic, retain) UIImageView *desarmador;
@property (nonatomic, retain) UIImageView *clavo;
@property (nonatomic, retain) UIImageView *tornillo;
@property (nonatomic, retain) UIImageView *fondo;

@end


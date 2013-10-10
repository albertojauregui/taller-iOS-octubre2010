//
//  ColoresViewController.h
//  Colores
//
//  Created by Rene Cruz Flores on 17/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColoresViewController : UIViewController {
	IBOutlet UISegmentedControl *selectorColor;
	IBOutlet UITextView *text;
}

@property (nonatomic, retain) UISegmentedControl *selectorColor;
@property (nonatomic, retain) UITextView *text;

- (IBAction) cambiaColor;

@end


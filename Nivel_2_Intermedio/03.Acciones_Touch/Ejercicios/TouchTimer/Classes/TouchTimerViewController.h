//
//  TouchTimerViewController.h
//  TouchTimer
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchTimerViewController : UIViewController {
	IBOutlet UIImageView *imagen;
	NSTimer *timer;
}
@property (nonatomic, retain) UIImageView *imagen;
@end


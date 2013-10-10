//
//  AcelerometroViewController.h
//  Acelerometro
//
//  Created by Rene Cruz Flores on 19/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AcelerometroViewController : UIViewController <UIAccelerometerDelegate>{
	IBOutlet UILabel *ejeX;
	IBOutlet UILabel *ejeY;
	IBOutlet UILabel *ejeZ;
	
}
@property (nonatomic, retain) UILabel *ejeX;
@property (nonatomic, retain) UILabel *ejeY;
@property (nonatomic, retain) UILabel *ejeZ;
@end


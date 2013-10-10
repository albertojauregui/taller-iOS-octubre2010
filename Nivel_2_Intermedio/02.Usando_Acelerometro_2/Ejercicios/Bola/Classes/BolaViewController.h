//
//  BolaViewController.h
//  Bola
//
//  Created by Rene Cruz Flores on 21/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface BolaViewController : UIViewController 
<UIAccelerometerDelegate, AVAudioPlayerDelegate>{
	UIImageView *bola;
	int ejeX, ejeY;
	BOOL playY, playX;
	AVAudioPlayer *player;
}
@property (nonatomic, retain) IBOutlet UIImageView *bola;
@property (nonatomic) int ejeX;
@property (nonatomic) int ejeY;
@property (nonatomic) BOOL playX;
@property (nonatomic) BOOL playY;
@property (nonatomic, retain) AVAudioPlayer *player;
@end


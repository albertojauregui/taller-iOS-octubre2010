//
//  TouchSimpleViewController.h
//  TouchSimple
//
//  Created by Rene Cruz Flores on 21/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>

@interface TouchSimpleViewController : UIViewController 
<AVAudioPlayerDelegate>{
	UIImageView	*imagen;
	UIImageView *dona;
	AVAudioPlayer *player;
}
@property (nonatomic, retain) IBOutlet UIImageView *imagen, *dona;
@property (nonatomic, retain) AVAudioPlayer *player;

-(IBAction) respondeTouch;
@end


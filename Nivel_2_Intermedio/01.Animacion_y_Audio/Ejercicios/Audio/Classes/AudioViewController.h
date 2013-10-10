//
//  AudioViewController.h
//  Audio
//
//  Created by Rene Cruz Flores on 21/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
@interface AudioViewController : UIViewController 
	<AVAudioPlayerDelegate>{
		
	AVAudioPlayer *player;
	IBOutlet UIButton *playButton;
}
@property(nonatomic, retain) AVAudioPlayer *player;
@property(nonatomic, retain)  UIButton *playButton;

-(IBAction) play;

@end


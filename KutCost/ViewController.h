//
//  ViewController.h
//  AVPlayer
//
//  Created by macserver on 11/30/16.
//  Copyright © 2016 macserver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>


@interface ViewController : UIViewController <AVAudioPlayerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *signInOutlet;
@property (weak, nonatomic) IBOutlet UIButton *browseDealsOutlet;
@property (weak, nonatomic) IBOutlet UILabel *letSaveOutlet;
@property (weak, nonatomic) IBOutlet UILabel *realLocalDealsOutlet;
@property (weak, nonatomic) IBOutlet UIImageView *logoImgOutlet;
@property (weak, nonatomic) IBOutlet UIView *viewMainOutlet;


- (IBAction)signInAction:(id)sender;
- (IBAction)browseDealsAction:(id)sender;



@end


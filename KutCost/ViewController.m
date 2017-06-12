//
//  ViewController.m
//  AVPlayer
//
//  Created by macserver on 11/30/16.
//  Copyright © 2016 macserver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    AVPlayer *player;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //set corner radius of buttons
    self.signInOutlet.layer.cornerRadius = 2;
    self.signInOutlet.clipsToBounds=YES;
    
    self.browseDealsOutlet.layer.cornerRadius = 2;
    self.browseDealsOutlet.clipsToBounds=YES;
    self.logoImgOutlet.clipsToBounds=YES;
    
#pragma mark - PLay video

    NSString *filepath = [[NSBundle mainBundle] pathForResource:@"xx" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:filepath];
     // NSURL *url = [[NSURL alloc] initWithString:@"https://s3-eu-west-1.amazonaws.com/alf-proeysen/Bakvendtland-MASTER.mp4"];
    player = [AVPlayer playerWithURL:url];
    
    AVPlayerLayer *layer = [AVPlayerLayer playerLayerWithPlayer:player];
    player.actionAtItemEnd = AVPlayerActionAtItemEndNone;
  //layer.frame = CGRectMake(0,0,self.viewMainOutlet.frame.size.width,self.viewMainOutlet.frame.size.height);
    layer.frame = CGRectMake(0, 0, 1024, 620);
    
   [layer setVideoGravity:AVLayerVideoGravityResize];
//    [layer setFrame:[[UIScreen mainScreen] bounds]];
    
    [self.viewMainOutlet.layer addSublayer:layer];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(playerItemDidReachEnd:)
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               object:[player currentItem]];
    //get subview to front
    [self.viewMainOutlet bringSubviewToFront:self.signInOutlet];
    [self.viewMainOutlet bringSubviewToFront:self.browseDealsOutlet];
    [self.viewMainOutlet bringSubviewToFront:self.letSaveOutlet];
    [self.viewMainOutlet bringSubviewToFront:self.realLocalDealsOutlet];
     [self.viewMainOutlet bringSubviewToFront:self.logoImgOutlet];
   
     [player play];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)playerItemDidReachEnd:(NSNotification *)notification
{
    AVPlayerItem *p = [notification object];
    [p seekToTime:kCMTimeZero];
}

- (IBAction)signInAction:(id)sender
{
    NSString* url = @"https://www.google.co.in/";
    UIApplication* app = [UIApplication sharedApplication];
    [app openURL:[NSURL URLWithString:url]];
}

- (IBAction)browseDealsAction:(id)sender
{
    NSString* url = @"https://www.google.co.in/";
    UIApplication* app = [UIApplication sharedApplication];
    [app openURL:[NSURL URLWithString:url]];
}

@end

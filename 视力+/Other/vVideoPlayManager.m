//
//  vVideoPlayManager.m
//  视力+
//
//  Created by 小华 on 2017/12/15.
//  Copyright © 2017年 小华. All rights reserved.
//

#import "vVideoPlayManager.h"
#import <AVFoundation/AVFoundation.h>
static vVideoPlayManager *_instance = nil;

@interface vVideoPlayManager ()

@property (nonatomic, strong) AVPlayer *player;

@property (nonatomic, strong) AVPlayerItem *playerItem;

@property (nonatomic, strong) AVPlayerLayer *showVodioLayer;

@end

@implementation vVideoPlayManager

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    
    return _instance;
}

- (void)releasePlayer
{
    if (!self.playerItem) {
        return;
    }
    [[NSNotificationCenter defaultCenter] removeObserver:self];
//    [self.player removeObserver:self forKeyPath:@"status"];
    
    self.playerItem = nil;
}

- (void)playWithModel:(vVideoModel *)model vc:(UIViewController *)vc
{
    self.playerItem=[AVPlayerItem playerItemWithURL:[NSURL fileURLWithPath:model.videoUrl]];
    self.player=[AVPlayer playerWithPlayerItem:self.playerItem];
    self.showVodioLayer = [AVPlayerLayer playerLayerWithPlayer:self.player];
    self.showVodioLayer.videoGravity=AVLayerVideoGravityResizeAspectFill;
    self.showVodioLayer.frame = CGRectMake(0, 0, ScreenW, ScreenH*0.4);
    [vc.view.layer addSublayer:self.showVodioLayer];
    self.isPlay=YES;
    [self.player play];
}

- (void)pauseVideo
{
    if (!self.playerItem) {
        return;
    }
    if (_player.rate) {
        _isPlay = NO;
        [_player pause];
        if (self.changeStatusBlcok) {
            self.changeStatusBlcok(pauseVideo);
        }
        
    } else {
        _isPlay = YES;
        [_player play];
    }
}

- (void)previousVideo
{
    if (self.changeStatusBlcok) {
        self.changeStatusBlcok(previousVideo);
    }
}

- (void)nextVideo
{
    if (self.changeStatusBlcok) {
        self.changeStatusBlcok(nextVideo);
    }
}


@end

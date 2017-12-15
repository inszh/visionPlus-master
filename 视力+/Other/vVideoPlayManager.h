//
//  vVideoPlayManager.h
//  视力+
//
//  Created by 小华 on 2017/12/15.
//  Copyright © 2017年 小华. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "vVideoModel.h"

//播放状态
typedef NS_ENUM(NSInteger, vVideoPlayStatus) {
    previousVideo = 1,
    pauseVideo = 2,
    nextVideo = 3
};

@interface vVideoPlayManager : NSObject

@property (nonatomic,assign) BOOL isPlay;

@property (nonatomic,copy) void (^changeStatusBlcok)(vVideoPlayStatus status);

+ (instancetype)sharedInstance;
- (void)releasePlayer;

- (void)playWithModel:(vVideoModel *)model vc:(UIViewController *)vc;

- (void)pauseVideo;
- (void)previousVideo;
- (void)nextVideo;

@end

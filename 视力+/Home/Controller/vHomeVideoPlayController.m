//
//  vHomeVideoPlayController.m
//  视力+
//
//  Created by 小华 on 2017/12/7.
//  Copyright © 2017年 小华. All rights reserved.
//

#import "vHomeVideoPlayController.h"
#import "vVideoPlayManager.h"
@interface vHomeVideoPlayController ()

@end

@implementation vHomeVideoPlayController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *documentsDirectory=[[NSBundle mainBundle] pathForResource: @"IMG_5596" ofType:@"MOV"];
    vVideoModel *vmodel=[vVideoModel new];
    vmodel.videoUrl=documentsDirectory;
    vVideoPlayManager *manger=[vVideoPlayManager sharedInstance];
    [manger playWithModel:vmodel vc:self];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    

}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    
}

- (IBAction)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)playVideo:(UIButton *)sender
{
    vVideoPlayManager *manger=[vVideoPlayManager sharedInstance];
    [manger pauseVideo];
    sender.selected=!sender.selected;
}

-(void)dealloc
{
    vVideoPlayManager *manger=[vVideoPlayManager sharedInstance];
    [manger releasePlayer];
}

@end

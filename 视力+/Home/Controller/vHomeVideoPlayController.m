//
//  vHomeVideoPlayController.m
//  视力+
//
//  Created by 小华 on 2017/12/7.
//  Copyright © 2017年 小华. All rights reserved.
//

#import "vHomeVideoPlayController.h"

@interface vHomeVideoPlayController ()

@end

@implementation vHomeVideoPlayController

- (void)viewDidLoad {
    [super viewDidLoad];
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

@end

//
//  vMainViewController.m
//  视力+
//
//  Created by 小华 on 2017/12/7.
//  Copyright © 2017年 小华. All rights reserved.
//

#import "vMainViewController.h"

@interface vMainViewController ()

@end

@implementation vMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if(self.viewControllers.count>0) {
        viewController.hidesBottomBarWhenPushed=YES;
        
    } else {
        viewController.hidesBottomBarWhenPushed=NO;
    }
    
    
    [super pushViewController:viewController animated:YES];
}

@end

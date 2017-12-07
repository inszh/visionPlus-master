//
//  AppDelegate.m
//  视力+
//
//  Created by 小华 on 2017/12/6.
//  Copyright © 2017年 小华. All rights reserved.
//

#import "AppDelegate.h"
#import "CYLTabBarController.h"
#import "vHOMEViewController.h"
#import "vProfileViewController.h"
#import "vMainViewController.h"

@interface AppDelegate ()<UITabBarControllerDelegate>

@property (nonatomic, strong) CYLTabBarController *tabBarController;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc]init];
    self.window.frame = [UIScreen mainScreen].bounds;
  
    vHOMEViewController *home = [vHOMEViewController new];
    UIViewController *homeNav = [[vMainViewController alloc]
                                                   initWithRootViewController:home];
    vProfileViewController *profile = [vProfileViewController new];
    UIViewController *profileNav = [[vMainViewController alloc]
                                                    initWithRootViewController:profile];
    
    
    CYLTabBarController *tabBarController = [[CYLTabBarController alloc] init];
    self.tabBarController=tabBarController;
    
    NSDictionary *dict1 = @{
                            CYLTabBarItemTitle : @"首页",
                            CYLTabBarItemImage : @"home_normal",
                            CYLTabBarItemSelectedImage : @"home_highlight",
                            };
    NSDictionary *dict2 = @{
                            CYLTabBarItemTitle : @"我的",
                            CYLTabBarItemImage : @"account_normal",
                            CYLTabBarItemSelectedImage : @"account_highlight",
                            };
    
    NSArray *tabBarItemsAttributes = @[ dict1, dict2 ];
    tabBarController.tabBarItemsAttributes = tabBarItemsAttributes;
    
    [tabBarController setViewControllers:@[
                                           homeNav,
                                           profileNav,
                                           ]];
    [self.window setRootViewController:self.tabBarController];

    [self.window makeKeyAndVisible];
    
    
    return YES;
}


@end

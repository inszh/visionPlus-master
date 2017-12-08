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
                            CYLTabBarItemSelectedImage : @"home_normal",
                            };
    NSDictionary *dict2 = @{
                            CYLTabBarItemTitle : @"我",
                            CYLTabBarItemImage : @"account_normal",
                            CYLTabBarItemSelectedImage : @"account_normal",
                            };
    
    NSArray *tabBarItemsAttributes = @[ dict1, dict2 ];
    tabBarController.tabBarItemsAttributes = tabBarItemsAttributes;
    
    // 普通状态下的文字属性
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    // 选中状态下的文字属性
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    // 设置文字属性
    UITabBarItem *tabBar = [UITabBarItem appearance];
    [tabBar setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    [tabBar setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    // 设置背景图片
    UITabBar *tabBarAppearance = [UITabBar appearance];
    [tabBarAppearance setBackgroundImage:[UIImage imageNamed:@"tabbar_background"]];
    
    [tabBarController setViewControllers:@[
                                           homeNav,
                                           profileNav,
                                           ]];
    [self.window setRootViewController:self.tabBarController];

    [self.window makeKeyAndVisible];
    
    
    return YES;
}


@end

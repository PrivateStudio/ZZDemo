//
//  ZZMainTabbarController.m
//  ZZDemo
//
//  Created by Lingfeng on 16/1/3.
//  Copyright © 2016年 Personal. All rights reserved.
//

#import "ZZMainTabbarController.h"
#import "ZZNavigationController.h"
#import "ZZOneViewController.h"
#import "ZZTwoViewController.h"
#import "ZZThreeViewController.h"
#import "ZZFourViewController.h"

@interface ZZMainTabbarController ()

@end

@implementation ZZMainTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViewControllers];
}

- (void)setupViewControllers
{
    ZZNavigationController *oneNav = [[ZZNavigationController alloc] initWithRootViewController:[[ZZOneViewController alloc] init]];
    ZZNavigationController *twoNav = [[ZZNavigationController alloc] initWithRootViewController:[[ZZTwoViewController alloc] init]];
    ZZNavigationController *threeNav = [[ZZNavigationController alloc] initWithRootViewController:[[ZZThreeViewController alloc] init]];
    ZZNavigationController *fourNav = [[ZZNavigationController alloc] initWithRootViewController:[[ZZFourViewController alloc] init]];
    self.viewControllers = @[oneNav, twoNav, threeNav, fourNav];
    
    NSArray *items = self.tabBar.items;
    
    UITabBarItem *item0 = items[0];
    item0.title = @"One";
    item0.image = [IMGNAMED(@"tab_1.png") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item0.selectedImage = [IMGNAMED(@"tab_1_selected.png") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *item1 = items[1];
    item1.title = @"Two";
    item1.image = [IMGNAMED(@"tab_2.png") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item1.selectedImage = [IMGNAMED(@"tab_2_selected.png") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *item2 = items[2];
    item2.title = @"Three";
    item2.image = [IMGNAMED(@"tab_3.png") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item2.selectedImage = [IMGNAMED(@"tab_3_selected.png") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *item3 = items[3];
    item3.title = @"Four";
    item3.image = [IMGNAMED(@"tab_4.png") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item3.selectedImage = [IMGNAMED(@"tab_4_selected.png") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end

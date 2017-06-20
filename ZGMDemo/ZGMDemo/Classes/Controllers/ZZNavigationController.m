//
//  ZZNavigationController.m
//  ZZTestSDImageViewDemo
//
//  Created by zhuguoming on 2017/6/13.
//  Copyright © 2017年 zhuguoming. All rights reserved.
//

#import "ZZNavigationController.h"

@interface ZZNavigationController ()

@end

@implementation ZZNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"导航栏背景图"] forBarMetrics:UIBarMetricsDefault];
    
    //更新状态栏的风格
    //    [self setNeedsStatusBarAppearanceUpdate];
    self.navigationController.navigationBar.translucent = YES;
}

#pragma mark -- 返回状态栏的风格
- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}
- (UIViewController *)childViewControllerForStatusBarHidden{
    return self.topViewController;
}
- (UIViewController *)childViewControllerForStatusBarStyle{
    return self.topViewController;
}
#pragma mark --
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

- (UIViewController*)popViewControllerAnimated:(BOOL)animated
{
    return [super popViewControllerAnimated:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

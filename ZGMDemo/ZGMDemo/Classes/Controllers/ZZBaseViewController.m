//
//  ZZBaseViewController.m
//  ZZTestSDImageViewDemo
//
//  Created by zhuguoming on 2017/6/14.
//  Copyright © 2017年 zhuguoming. All rights reserved.
//

#import "ZZBaseViewController.h"

@interface ZZBaseViewController ()
/** 导航栏背景图片 */
@property (nonatomic, strong) UIImageView *backImageView;
/** 导航栏左边Item */
@property (nonatomic, strong) UIButton *leftItem;
/** 导航栏右边Item */
@property (nonatomic, strong) UIButton *rightItem;
/** 导航栏标题 */
@property (nonatomic, strong) UILabel *centerLabel;

@end

@implementation ZZBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = ZColor_ffffff;
    self.navigationController.navigationBar.hidden = YES;
    
    [self.view addSubview:self.backImageView];
    [self.backImageView addSubview:self.leftItem];
    [self.backImageView addSubview:self.rightItem];
    [self.backImageView addSubview:self.centerLabel];
    if (![self isRootViewController]) {
        _leftItem.frame = CGRectMake(10, NavHeigth - 5 - 30, 20, 25);
        [_leftItem setImage:[UIImage imageNamed:@"nav_back_white"] forState:UIControlStateNormal];
    }else
    {
        _leftItem.frame = CGRectZero;
        [_leftItem setImage:nil forState:UIControlStateNormal];
    }
}

#pragma mark - 点击事件

- (void)leftItemAction
{
    if (![self isRootViewController]) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)rightItemAction
{
    
}

#pragma mark - 赋值

- (void)setLeftItemTitle:(NSString *)leftItemTitle
{
    _leftItemTitle = leftItemTitle;
    if (_leftItemTitle)
    {
        [_leftItem setImage:nil forState:UIControlStateNormal];
        [_leftItem setTitle:_leftItemTitle forState:UIControlStateNormal];
        CGFloat titleW = [ZCalculateSizeTool sizeWithFont:ZFont(17.f) maxSize:CGSizeMake(MAXFLOAT, 25) text:_leftItemTitle].width;
        _leftItem.frame = CGRectMake(12, NavHeigth - 5 - 30, titleW+10, 25);
    }
}

- (void)setRightItemTitle:(NSString *)rightItemTitle
{
    _rightItemTitle = rightItemTitle;
    if (_rightItemTitle)
    {
        [_rightItem setTitle:_rightItemTitle forState:UIControlStateNormal];
        CGFloat titleW = [ZCalculateSizeTool sizeWithFont:ZFont(17.f) maxSize:CGSizeMake(MAXFLOAT, 25) text:_rightItemTitle].width;
        _rightItem.frame = CGRectMake(ZScreenWidth - 12 - titleW - 10, NavHeigth - 5 - 30, titleW+10, 25);
    }
}

- (void)setCustomTitle:(NSString *)customTitle
{
    _customTitle = customTitle;
    if (_customTitle) {
        _centerLabel.text = _customTitle;
        CGFloat titleW = [ZCalculateSizeTool sizeWithFont:ZFont(17.f) maxSize:CGSizeMake(MAXFLOAT, 25) text:_customTitle].width;
        _centerLabel.frame = CGRectMake((ZScreenWidth - titleW - 10)*.5, NavHeigth - 5 - 30, titleW+10, 25);
    }
}

#pragma mark - 是否根控制器

- (BOOL)isRootViewController
{
    //判断当前是否是根控制器
    NSArray *allViewControllers = self.navigationController.viewControllers;
    if ([allViewControllers indexOfObject:self] == 0)
    {//根控制器
        return YES;
    }else
    {//返回
        return NO;
    }
}

#pragma mark - 懒加载

- (UIImageView *)backImageView
{
    if (!_backImageView) {
        _backImageView = [UIImageView new];
        _backImageView.userInteractionEnabled = YES;
        _backImageView.backgroundColor = ZColor_217dd5;
        _backImageView.frame = CGRectMake(0, 0, ZScreenWidth, NavHeigth);
    }
    return _backImageView;
}

- (UIButton *)leftItem
{
    if (!_leftItem) {
        _leftItem = [UIButton buttonWithTitle:@"" textColor:ZColor_ffffff fontSize:17.f image:nil target:self action:@selector(leftItemAction)];
    }
    return _leftItem;
}

- (UIButton *)rightItem
{
    if (!_rightItem) {
        _rightItem = [UIButton buttonWithTitle:@"进入" textColor:ZColor_ffffff fontSize:17.f image:nil target:self action:@selector(rightItemAction)];
    }
    return _rightItem;
}

- (UILabel *)centerLabel
{
    if (!_centerLabel) {
        _centerLabel = [UILabel labelWithFontSize:17.f textColor:ZColor_ffffff textAlignment:NSTextAlignmentCenter text:@""];
    }
    return _centerLabel;
}

@end

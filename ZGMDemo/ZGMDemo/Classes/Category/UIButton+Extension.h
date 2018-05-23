//
//  UIButton+Extension.h
//  ZGMDemo
//
//  Created by 林帆 on 2018/5/23.
//  Copyright © 2018年 zhuguoming. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extension)

+ (instancetype)buttonWithTitle:(NSString *)title textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize image:(UIImage *)image target:(id)target action:(SEL)action;

@end

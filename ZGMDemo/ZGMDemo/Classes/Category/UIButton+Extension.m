//
//  UIButton+Extension.m
//  ZGMDemo
//
//  Created by 林帆 on 2018/5/23.
//  Copyright © 2018年 zhuguoming. All rights reserved.
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)

+ (instancetype)buttonWithTitle:(NSString *)title textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize image:(UIImage *)image target:(id)target action:(SEL)action
{
    
    UIButton *btn = [[UIButton alloc] init];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = ZFont(fontSize);
    [btn setTitleColor:textColor forState:UIControlStateNormal];
    if (image) {
        [btn setImage:image forState:UIControlStateNormal];
        btn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    }

    if (action) {
        [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }else
    {
    }
    //高亮设置和普通一样
    btn.adjustsImageWhenHighlighted = NO;
    
    return btn;
    
}

@end

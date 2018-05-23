//
//  UILabel+Extension.m
//  ZGMDemo
//
//  Created by 林帆 on 2018/5/23.
//  Copyright © 2018年 zhuguoming. All rights reserved.
//

#import "UILabel+Extension.h"

@implementation UILabel (Extension)

+ (instancetype)labelWithFontSize:(CGFloat)fontSize textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment text:(NSString *)text
{
    UILabel *label = [UILabel new];
    label.font = ZFont(fontSize);
    label.textColor = textColor;
    label.textAlignment = textAlignment;
    label.text = text;
    return label;
}

@end

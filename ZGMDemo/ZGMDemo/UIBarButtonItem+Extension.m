//
//  UIBarButtonItem+Extension.m
//  alphain
//
//  Created by zhuguoming on 2016/11/23.
//  Copyright © 2016年 afcatstar. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)
/** 创建一个自定义导航按钮(标题、默认状态图片、高亮状态图片、代理、点击事件) */
+ (instancetype)itemWithTitle:(NSString *)title andNoralImage:(NSString *)normalImage andHighlightedImage:(NSString *)HighlightedImage target:(id)target action:(SEL)action
{
    // 1.创建按钮
    UIButton *barButton = [[UIButton alloc] init];
    barButton.backgroundColor = [UIColor clearColor];
    barButton.adjustsImageWhenHighlighted = NO;
    
    // 2.设置图片
    if (normalImage.length) {
        [barButton setImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
        barButton.frame = (CGRect){{0, 0}, barButton.currentImage.size};
    }
    if (HighlightedImage.length) {
        [barButton setImage:[UIImage imageNamed:HighlightedImage] forState:UIControlStateHighlighted];
    }
    
    // 3.设置标题
    if (title.length) {
        [barButton setTitle:title forState:UIControlStateNormal];
        [barButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [barButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        barButton.titleLabel.font = KFONT(15.0f);
        CGSize titleSize = [title sizeWithAttributes:@{NSFontAttributeName:KFONT(15.0f)}];
        CGRect oldFrame = barButton.frame;
        oldFrame.size.width = titleSize.width + barButton.currentImage.size.width;
        barButton.frame = oldFrame;
    }
    
    // 4.添加点击事件监听
    [barButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    // 5.根据按钮创建UIBarButtonItem
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:barButton];
    
    // 6.返回UIBarButtonItem
    return barButtonItem;
}

/** 创建一个自定义导航按钮(标题、代理、点击事件) */
+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    // 1.创建按钮
    UIButton *barButton = [[UIButton alloc] init];
    barButton.adjustsImageWhenHighlighted = NO;
    
    // 2.设置标题
    [barButton setTitle:title forState:UIControlStateNormal];
    [barButton setTitleColor:EColor_217dd5 forState:UIControlStateNormal];
    barButton.titleLabel.font = KFONT(17.0f);
    
    // 3.设置Frame
    barButton.frame = (CGRect){{0, 0}, [title sizeWithAttributes:@{NSFontAttributeName:KFONT(17.0f)}]};
    
    // 4.添加点击事件监听
    [barButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    // 5.根据按钮创建UIBarButtonItem
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:barButton];
    //    [barButtonItem add];
    // 6.返回UIBarButtonItem
    return barButtonItem;
}
@end

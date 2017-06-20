//
//  UIBarButtonItem+Extension.h
//  alphain
//
//  Created by zhuguoming on 2016/11/23.
//  Copyright © 2016年 afcatstar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
/**
 *  创建一个自定义导航按钮(标题、默认状态图片、高亮状态图片、代理、点击事件)
 *
 *  @param title        标题
 *  @param normalImage  默认状态图片
 *  @param HighlightedImage 高亮状态图片
 *  @param target       代理
 *  @param action       点击事件
 *
 *  @return 返回自定义按钮
 */
+ (instancetype)itemWithTitle:(NSString *)title andNoralImage:(NSString *)normalImage andHighlightedImage:(NSString *)HighlightedImage target:(id)target action:(SEL)action;

/**
 *  创建一个自定义导航按钮(标题、代理、点击事件)
 *
 *  @param title        标题
 *  @param target       代理
 *  @param action       点击事件
 *
 *  @return 返回自定义按钮
 */
+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action;
@end

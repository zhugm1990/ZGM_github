//
//  ZCalculateSizeTool.h
//  ZGMDemo
//
//  Created by 林帆 on 2018/5/23.
//  Copyright © 2018年 zhuguoming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZCalculateSizeTool : NSObject

/** 计算字符串所占用的尺寸 */
+ (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize text:(NSString*)text;

/** 计算字符串所占用的尺寸 有间距 */
+ (CGSize)sizeWithFont:(UIFont *)font LineSpace:(CGFloat)lineSpace maxSize:(CGSize)maxSize text:(NSString*)text;

@end

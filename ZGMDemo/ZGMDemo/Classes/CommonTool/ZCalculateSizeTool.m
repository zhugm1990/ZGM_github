//
//  ZCalculateSizeTool.m
//  ZGMDemo
//
//  Created by 林帆 on 2018/5/23.
//  Copyright © 2018年 zhuguoming. All rights reserved.
//

#import "ZCalculateSizeTool.h"

@implementation ZCalculateSizeTool

#pragma mark - 计算字符串所占用的尺寸
+ (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize text:(NSString*)text
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

+ (CGSize)sizeWithFont:(UIFont *)font LineSpace:(CGFloat)lineSpace maxSize:(CGSize)maxSize text:(NSString*)text
{
    NSMutableParagraphStyle   *paragraphStyle   = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    
    NSDictionary *attrs = @{NSFontAttributeName : font,NSParagraphStyleAttributeName : paragraphStyle};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}
@end

//
//  UIImageView+ImageCache.h
//  ZGMDemo
//
//  Created by 林帆 on 2018/5/28.
//  Copyright © 2018年 zhuguoming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZImageCacheManage.h"

@interface UIImageView (ImageCache)

/**
 *  根据URL下载图片
 *
 *  @param urlString            url地址
 *  @param progressBlock  下载进度回调
 *  @param completedBlock 下载完成回调
 */
- (void)setImageWithUrl:(NSString *)urlString progressBlock:(DownLoadImageBlock)progressBlock completedBlock:(DownLoadImageCompletedBlock)completedBlock;


@end








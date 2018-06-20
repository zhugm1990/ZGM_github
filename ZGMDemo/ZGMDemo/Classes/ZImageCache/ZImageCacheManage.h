//
//  ZImageCacheManage.h
//  ZGMDemo
//
//  Created by 林帆 on 2018/5/28.
//  Copyright © 2018年 zhuguoming. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  下载回调信息，下载进度Block
 *
 *  @param finishSize 已经完成大小
 *  @param unFinishedSize     未接收大小
 */
typedef void (^DownLoadImageBlock)(NSInteger finishSize,NSInteger unFinishedSize);
/**
 *  下载回调信息，完成下载Block
 *
 *  @param data     data
 *  @param image    图片
 *  @param error    错误信息
 *  @param isFinished 是否完成
 */
typedef void (^DownLoadImageCompletedBlock)(NSData *data,UIImage *image,NSError *error,BOOL isFinished);


@interface ZImageCacheManage : NSObject

/** 获取实例 */
+ (instancetype)shareInstance;

/**
 *  根据URL下载图片
 *
 *  @param urlString            url地址
 *  @param progressBlock  下载进度回调
 *  @param completedBlock 下载完成回调
 */
- (void)setImageWithUrl:(NSString *)urlString progressBlock:(DownLoadImageBlock)progressBlock completedBlock:(DownLoadImageCompletedBlock)completedBlock;

@end

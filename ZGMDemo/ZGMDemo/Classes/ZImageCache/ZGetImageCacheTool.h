//
//  ZGetImageCacheTool.h
//  ZGMDemo
//
//  Created by 林帆 on 2018/5/28.
//  Copyright © 2018年 zhuguoming. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ImageCacheType){
    /**
     * 无类型
     */
    ImageCacheTypeNone,
    /**
     * 磁盘中缓存
     */
    ImageCacheTypeDisk,
    /**
     * 内存中缓存
     */
    ImageCacheTypeMemory
};

/**
 *  查找图片结果，CompletedBlock
 *
 *  @param image 图片
 *  @param error 错误信息
 *  @param type  读取类型
 */
typedef void (^SearchMyImageCompletedBlock)(UIImage *image,NSError *error,ImageCacheType type);

@interface ZGetImageCacheTool : NSObject

+ (instancetype)shareInstance;

/**
 *  根据URL查找图片
 *
 *  @param urlString            url地址
 *  @param completedBlock 查找完成回调
 */
- (void)searchMyImageWithUrlString:(NSString *)urlString completedBlock:(SearchMyImageCompletedBlock)completedBlock;

@end

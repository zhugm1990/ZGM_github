//
//  ZImageCacheManage.m
//  ZGMDemo
//
//  Created by 林帆 on 2018/5/28.
//  Copyright © 2018年 zhuguoming. All rights reserved.
//

#import "ZImageCacheManage.h"
#import "ZGetImageCacheTool.h"
@implementation ZImageCacheManage

+ (instancetype)shareInstance
{
    static ZImageCacheManage *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[ZImageCacheManage alloc] init];
    });
    return instance;
}

- (void)setImageWithUrl:(NSString *)urlString progressBlock:(DownLoadImageBlock)progressBlock completedBlock:(DownLoadImageCompletedBlock)completedBlock
{
    NSURL *url = nil;
    if ([urlString isKindOfClass:[NSString class]])
    {
        url = [NSURL URLWithString:urlString];
    }
    
    //获取图片的方式：1.本地 2.下载
    [[ZGetImageCacheTool shareInstance] searchMyImageWithUrlString:urlString completedBlock:^(UIImage *image, NSError *error, ImageCacheType type) {
        if (image)
        {//本地找到图片
            dispatch_async(dispatch_get_main_queue(), ^{
                //主线程回调结果 NSData *data,UIImage *image,NSError *error,BOOL isFinished
                NSData *data = UIImagePNGRepresentation(image);
                completedBlock(data,image,error,YES);
            });
        }else
        {//未找到，去下载
            
        }
    }];
    
}

@end

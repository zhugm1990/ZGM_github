//
//  ZGetImageCacheTool.m
//  ZGMDemo
//
//  Created by 林帆 on 2018/5/28.
//  Copyright © 2018年 zhuguoming. All rights reserved.
//

#import "ZGetImageCacheTool.h"

@interface ZGetImageCacheTool ()

/** 串行队列 */
@property (nonatomic, strong) dispatch_queue_t serialQueue;
/** 内存缓存实例 */
@property (nonatomic, strong) NSCache *memoryCache;
/** Cache目录路径,磁盘缓存路径 */
@property (nonatomic, strong) NSString *diskCachePath;
/** 文件管理实例 */
@property (nonatomic, strong) NSFileManager *fileManager;

@end

@implementation ZGetImageCacheTool

+ (instancetype)shareInstance
{
    static ZGetImageCacheTool *getImageCacheTool = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        getImageCacheTool = [[ZGetImageCacheTool alloc] init];
    });
    return getImageCacheTool;
}

//初始化
- (instancetype)init
{
    return [self initBasicPropertyWithName:@"default"];
}

- (instancetype)initBasicPropertyWithName:(NSString *)nameSpace
{
    if (self = [super init]) {
        //1.文件命名
        NSString *fullNameSpace = [@"com.zgm.zgmImageCache." stringByAppendingString:nameSpace];
        //2.创建队列（串行）
//        _serialQueue = dispatch_queue_create(@"com.zgm.serialQueue", NULL);
        //3.内存缓存初始化
        _memoryCache = [[NSCache alloc] init];
        _memoryCache.name = fullNameSpace;
        NSString *path =[self getDiskPathWithFullNameSpace:nameSpace];
        if (path != nil) {
            _diskCachePath = [path stringByAppendingPathComponent:fullNameSpace];
        } else {
            NSString *path = [self getDiskPathWithFullNameSpace:nameSpace];
            _diskCachePath = path;
        }
        //4.初始化文件管理工具
        _fileManager = [NSFileManager defaultManager];
    }
    return self;
}

- (void)searchMyImageWithUrlString:(NSString *)urlString completedBlock:(SearchMyImageCompletedBlock)completedBlock
{
    
}

//获取沙盒路径
- (NSString *)getDiskPathWithFullNameSpace:(NSString *)fullNameSpace
{
    NSArray *pathArray = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *path = [pathArray objectAtIndex:0];
    return [path stringByAppendingPathComponent:fullNameSpace];
}

@end

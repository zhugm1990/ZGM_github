//
//  DefineFiles.h
//  ZZTestSDImageViewDemo
//
//  Created by zhuguoming on 2017/6/19.
//  Copyright © 2017年 zhuguoming. All rights reserved.
//



/** 常用宏 */
#define ZFont(float) [UIFont systemFontOfSize:float]
/** 设置UITableViewCell的Identifier */
#define ZIdentifiers(className) NSStringFromClass([className class])
/** 屏幕宽度 */
#define ZScreenWidth [UIScreen mainScreen].bounds.size.width
/** 屏幕高度 */
#define ZScreenHeigth [UIScreen mainScreen].bounds.size.height
/** 导航栏高度 */
#define NavHeigth (ZScreenHeigth == 812.0 ? 88 : 64)

/** 常用圆角 */

/** 常用颜色 */
/** 获取HEX颜色值(16进制) */
#define ZHex(value)   [UIColor colorWithRed:((float)((value & 0xFF0000) >> 16))/255.0 green:((float)((value & 0x00FF00) >> 8))/255.0 blue:((float)(value & 0x0000FF))/255.0 alpha:1.f]
/** 主色调：蓝色 */
#define ZColor_217dd5 ZHex(0x217dd5)
/** 白色 */
#define ZColor_ffffff ZHex(0xffffff)
/** 分割线、分段背景颜色 */
#define ZColor_f5f5f5 ZHex(0xf5f5f5)
/** 深灰色 */
#define ZColor_999999 ZHex(0x999999)
/** 浅灰色 */
#define ZColor_333333 ZHex(0x333333)
/** 搜索框边框颜色 */
#define ZColor_90beea ZHex(0x90beea)
/** 黑色 */
#define ZColor_000000 ZHex(0x000000)
/** 直播里的黑色 */
#define ZColor_222222 ZHex(0x222222)
/** 橙色or橘色 */
#define ZColor_ffa100 ZHex(0xffa100)
/** 文字红色 */
#define ZColor_f75a5a ZHex(0xf75a5a)
/** 关键字的显示 */
#define ZColor_fff0d3 ZHex(0xfff0d3)
/** 设置昵称，错误提示--红色 */
#define ZColor_f94b71 ZHex(0xf94b71)
/** 浅黄色 */
#define ZColor_ffef66 ZHex(0xffef66)

/** 红色 */
#define ZColor_redColor [UIColor redColor]
/** 透明色 */
#define ZColor_clearColor [UIColor clearColor]



/** 打印日志 */
#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"时间:%s 行号:%d 方法名:%s:%s", __TIME__,__LINE__,__func__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])
#else
#define NSLog(FORMAT, ...) nil
#endif

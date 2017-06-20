//
//  DefineFiles.h
//  ZZTestSDImageViewDemo
//
//  Created by zhuguoming on 2017/6/19.
//  Copyright © 2017年 zhuguoming. All rights reserved.
//

#define Screen_Width [UIScreen mainScreen].bounds.size.width
#define Screen_Height [UIScreen mainScreen].bounds.size.height



/** 常用宏 */
#define KFONT(float) [UIFont systemFontOfSize:float]
/** 设置UITableViewCell的Identifier */
#define kIdentifiers(className) NSStringFromClass([className class])

/** 常用圆角 */
/** 头像圆角弧度 */
#define EHead_Corner_2 2.f
#define EHead_Corner_4 4.f
#define EHead_Corner_3 3.f

/** 常用颜色 */
/** 获取HEX颜色值(16进制) */
#define kHex(value)   [UIColor colorWithRed:((float)((value & 0xFF0000) >> 16))/255.0 green:((float)((value & 0x00FF00) >> 8))/255.0 blue:((float)(value & 0x0000FF))/255.0 alpha:1.f]
/** 主色调：蓝色 */
#define EColor_217dd5 kHex(0x217dd5)
/** 白色 */
#define EColor_ffffff kHex(0xffffff)
/** 分割线、分段背景颜色 */
#define EColor_f5f5f5 kHex(0xf5f5f5)
/** 深灰色 */
#define EColor_999999 kHex(0x999999)
/** 浅灰色 */
#define EColor_333333 kHex(0x333333)
/** 搜索框边框颜色 */
#define EColor_90beea kHex(0x90beea)
/** 黑色 */
#define EColor_000000 kHex(0x000000)
/** 直播里的黑色 */
#define EColor_222222 kHex(0x222222)
/** 橙色or橘色 */
#define EColor_ffa100 kHex(0xffa100)
/** 文字红色 */
#define EColor_f75a5a kHex(0xf75a5a)
/** 同业圈关键字的显示 */
#define EColor_fff0d3 kHex(0xfff0d3)
/** 设置昵称，错误提示--红色 */
#define EColor_f94b71 kHex(0xf94b71)
/** 红色 */
#define EColor_redColor [UIColor redColor]
/** 透明色 */
#define EColor_clearColor [UIColor clearColor]
/** 浅黄色 */
#define EColor_ffef66 kHex(0xffef66)

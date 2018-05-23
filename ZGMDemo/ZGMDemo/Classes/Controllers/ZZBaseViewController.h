//
//  ZZBaseViewController.h
//  ZZTestSDImageViewDemo
//
//  Created by zhuguoming on 2017/6/14.
//  Copyright © 2017年 zhuguoming. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZZBaseViewController : UIViewController

/** 设置左边标题 */
@property (nonatomic, copy) NSString *leftItemTitle;
/** 设置右边标题 */
@property (nonatomic, copy) NSString *rightItemTitle;
/** 设置标题 */
@property (nonatomic, copy) NSString *customTitle;
/** 左边Item点击事件 */
- (void)leftItemAction;
@end

//
//  JYBasic.h
//  HongHaMenu
//
//  Created by Work on 16/9/21.
//  Copyright © 2016年 Sept2Wei. All rights reserved.
//

#ifndef JYBasic_h
#define JYBasic_h

#import "UIColor+JYExtension.h"


/** 宏定义 */

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

//系统版本
#define JYDeviceVersion [[[UIDevice currentDevice] systemVersion] floatValue]

// 偏好设置
#define JYUserInfoKey(key) [NSString stringWithFormat:@"Fridens_%@", (key)]

// 偏好设置
#define JYUserDefaults [NSUserDefaults standardUserDefaults]


//通知中心
#define JYNotificationCenter [NSNotificationCenter defaultCenter]

#define showNetWorkActivity(show) [UIApplication sharedApplication].networkActivityIndicatorVisible = show;

#ifdef DEBUG // 调试状态, 打开LOG功能

#define JYLog(...) NSLog(__VA_ARGS__)
#else // 发布状态, 关闭LOG功能
#define JYLog(...)

#endif


#endif /* JYBasic_h */

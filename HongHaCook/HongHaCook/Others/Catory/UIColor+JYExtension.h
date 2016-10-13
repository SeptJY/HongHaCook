//
//  UIColor+JYExtension.h
//  ProjectFramework
//
//  Created by Sept on 16/8/27.
//  Copyright © 2016年 丶九月. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (JYExtension)

/** 通过设置RGB的值来设置颜色 */
UIColor * setColor(int r, int g, int b);

/** 16进制转换成颜色 */
UIColor * setColorFromHexString(NSString *str);

/** 项目中的主色调 */
UIColor * JYMainColor();

/** 随机色 */
UIColor * JYRandomColor();

@end
//
//  BXTabBarController.m
//  BaoXianDaiDai
//
//  Created by JYJ on 15/5/28.
//  Copyright (c) 2015年 baobeikeji.cn. All rights reserved.
//

#import "JYTabBarController.h"
#import "JYStudyCookController.h"
#import "JYStoreController.h"
#import "JYCommunityController.h"
#import "JYMessagerController.h"
#import "JYMineController.h"
#import "JYNavigationController.h"

@interface JYTabBarController ()

@end

@implementation JYTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 初始化所有的子控制器
    [self setupChildViewControllers];
}

/**
 * 初始化所有的子控制器
 */
- (void)setupChildViewControllers
{
    JYStudyCookController *studyCook = [[JYStudyCookController alloc] init];
//    [_listCtl networkChanged:_connectionState];
    [self setupOneChildViewController:studyCook title:@"学做菜" image:@"z_home_menu_ico_index" selectedImage:@"z_home_menu_ico_index_active"];
    
    JYStoreController *storeCtl = [[JYStoreController alloc] init];
    [self setupOneChildViewController:storeCtl title:@"商城" image:@"z_home_menu_mall" selectedImage:@"z_home_menu_mall_active"];
    
    JYCommunityController *communityCtl = [[JYCommunityController alloc] init];
    [self setupOneChildViewController:communityCtl title:@"社区" image:@"z_home_menu_ico_find" selectedImage:@"z_home_menu_ico_find_active"];
    
    JYMessagerController *messagerCtl = [[JYMessagerController alloc] init];
    [self setupOneChildViewController:messagerCtl title:@"消息" image:@"z_home_menu_ico_xiaoxi" selectedImage:@"z_home_menu_ico_xiaoxi_active"];
    
    JYMineController *mineCtl = [[JYMineController alloc] init];
    [self setupOneChildViewController:mineCtl title:@"我的" image:@"z_home_menu_ico_me" selectedImage:@"z_home_menu_ico_me_active"];
}

- (void)setupOneChildViewController:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    vc.tabBarItem.title = title;
    //    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置tabBarItem的普通文字颜色
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    [vc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    // 设置tabBarItem的选中文字颜色
    NSMutableDictionary *selectedTextAttrs = [NSMutableDictionary dictionary];
    selectedTextAttrs[NSForegroundColorAttributeName] = JYMainColor();
    [vc.tabBarItem setTitleTextAttributes:selectedTextAttrs forState:UIControlStateSelected];
    
    //    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    [self addChildViewController:[[JYNavigationController alloc] initWithRootViewController:vc]];
}

@end

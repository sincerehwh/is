//
//  TRTabBarController.m
//  我的微信
//
//  Created by tarena on 15/12/19.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TRTabBarController.h"
#import "TRTabBar.h"

@interface TRTabBarController ()<TRTabBarDelegate>

@end

@implementation TRTabBarController

- (void)tabBarDidClickCenterButton:(TRTabBar *)tabBar
{
    UIViewController *vc = [[UIViewController alloc]init];
    vc.view.backgroundColor = [UIColor redColor];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //遍历TabBarController管理的所有子vc
    //通过这个子vc拿到与此vc关联的那个UITabBarItem
    //才能修改里面被选中的图片的渲染模式
    for (UIViewController *vc in self.viewControllers)
    {
        UIImage *selectedImage = vc.tabBarItem.selectedImage;
        vc.tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
    }
    
    //获取UITabbarItem的样品实例
    UITabBarItem *barItem = [UITabBarItem appearance];
    
    //保存正常状态下的文本属性
    NSMutableDictionary *normalAttributes = [NSMutableDictionary dictionary];
    normalAttributes[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    normalAttributes[NSForegroundColorAttributeName] = [UIColor grayColor];
    [barItem setTitleTextAttributes:normalAttributes forState:UIControlStateNormal];
    
    //保存选中状态下的文本属性
    NSMutableDictionary *selectedAttributes = [NSMutableDictionary dictionary];
    selectedAttributes[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectedAttributes[NSForegroundColorAttributeName] = [UIColor colorWithRed:26/255.0 green:178/255.0 blue:10/255.0  alpha:1.0];
    [barItem setTitleTextAttributes:selectedAttributes forState:UIControlStateSelected];
    
    
    //2.替换系统自带的tabbar
    TRTabBar *tabBar = [[TRTabBar alloc]init];
    tabBar.delegate = self;
    [self setValue:tabBar forKey:@"tabBar"];
}








@end

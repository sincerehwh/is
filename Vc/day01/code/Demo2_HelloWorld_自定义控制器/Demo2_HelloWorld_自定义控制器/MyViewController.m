//
//  MyViewController.m
//  Demo2_HelloWorld_自定义控制器
//
//  Created by tarena on 15/11/30.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

/*方法的执行时机：控制器自带的视图加载完毕后自动调用
  在此方法中，设计控制器自带的视图的内容即可*/
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置控制器视图的背景色
    //self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc]init];
    
    //设置label的位置和大小
    label.frame = CGRectMake(60, 50, 200, 450);
    //设置label内显示的文字
    label.text = @"这是一段比较长的文本测试换行";
    //设置显示的行数的最大值，默认为1，0代表无上限
    label.numberOfLines = 0;
    //设置显示的字体，是UIFont类型，使用工厂方法创建UIFont
    label.font = [UIFont systemFontOfSize:30];
    //设置文字水平对齐方式为居中
    label.textAlignment = NSTextAlignmentCenter;
    
    label.backgroundColor = [UIColor lightGrayColor];
    
    //将label添加到控制器自带的那个view中
    [self.view addSubview:label];
}



@end

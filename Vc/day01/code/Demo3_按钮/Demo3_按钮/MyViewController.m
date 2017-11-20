//
//  MyViewController.m
//  Demo3_按钮
//
//  Created by tarena on 15/11/30.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@property(nonatomic,strong)UILabel *label;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建标签并添加
    UILabel *label = [[UILabel alloc]init];
    self.label = label;
    
    label.frame = CGRectMake(50, 60, 200, 60);
    label.text = @"Hello World";
    [self.view addSubview:label];
    
    // 1.创建按钮实例
    //如果使用alloc init方法创建按钮等价于指定为custom样式
    //UIButton *button = [[UIButton alloc]init];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    // 2.设置frame
    button.frame = CGRectMake(50, 150, 100, 40);
    // 3.设置内容
    // 摆着不动是normal状态,显示OK
    [button setTitle:@"OK" forState:UIControlStateNormal];
    // 按下去不松手对应的是HighLighted状态，显示KO
    [button setTitle:@"KO" forState:UIControlStateHighlighted];
    
    // 设置背景图
    // UIImage作用就是存图片
    UIImage *bgImage = [UIImage imageNamed:@"bg.png"];
    [button setBackgroundImage:bgImage forState:UIControlStateNormal];
    
    // 设置按钮上的图片
    [button setImage:[UIImage imageNamed:@"abc.png"] forState:UIControlStateNormal];
    
    button.backgroundColor = [UIColor lightGrayColor];
    
    // 为按钮添加事件响应
    // 跟系统预定，如果检测到了button的touchUpInside事件
    // 则给target对象，发action这个消息
    // 即调用target对象的 action 方法
    [button addTarget:self action:@selector(aaa) forControlEvents:UIControlEventTouchUpInside];
    
    // 4.添加按钮到控制器的view中
    [self.view addSubview:button];
    self.view.backgroundColor = [UIColor whiteColor];
}
//当系统检测到点击了button后，系统会自动调用该方法
-(void)aaa
{
    self.label.text = @"Hello Kitty";
    //NSLog(@".....");
}



@end

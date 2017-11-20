//
//  MyViewController.m
//  Demo3_导航控制器
//
//  Created by tarena on 15/12/7.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"
#import "OtherViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 配置导航栏
    // 右侧
    UIBarButtonItem *rightItem1 = [[UIBarButtonItem alloc]initWithTitle:@"Add" style:UIBarButtonItemStylePlain target:self action:@selector(add:)];
    UIBarButtonItem *rightItem2 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:nil action:nil];
    
    //self.navigationItem.rightBarButtonItem = rightItem1;
    self.navigationItem.rightBarButtonItems = @[rightItem1,rightItem2];
    
    // 左侧
    // 使用本来的样式渲染image
    UIImage *leftImage = [[UIImage imageNamed:@"icon29.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithImage:leftImage style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    // 中间
    //self.navigationItem.title = @"文字标题";
    UIButton *titleButton = [UIButton buttonWithType:UIButtonTypeCustom];
    titleButton.frame = CGRectMake(0, 0, 100, 40);
    [titleButton setTitle:@"张三" forState:UIControlStateNormal];
    [titleButton setImage:[UIImage imageNamed:@"down.png"] forState:UIControlStateNormal];
    // 设置按钮在selected状态时的图片为上箭头
    [titleButton setImage:[UIImage imageNamed:@"up.png"] forState:UIControlStateSelected];
    // 为按钮添加点击事件
    [titleButton addTarget:self action:@selector(clickTitleButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [titleButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    //titleButton.backgroundColor = [UIColor redColor];
    self.navigationItem.titleView = titleButton;
    
    // 设置导航栏的背景色
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    // 通过设置导航栏为深色系，由系统将状态栏文字变成白色
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    // 修改导航栏左右按钮的渲染色
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    // 设置工具条显示
    self.navigationController.toolbarHidden = NO;
    // 设置工具条中的内容
    UIBarButtonItem *playItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:nil action:nil];
    UIBarButtonItem *rewindItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:nil action:nil];
    UIBarButtonItem *fastItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:nil action:nil];
    
    //创建木棍特效按钮
    UIBarButtonItem *fixItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixItem.width = 50;
    //创建弹簧特效按钮
    UIBarButtonItem *flexibleItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    self.toolbarItems = @[fixItem,rewindItem,flexibleItem,playItem,flexibleItem,fastItem,fixItem];

}

// 点击标题按钮后的响应
-(void)clickTitleButton:(UIButton *)sender
{
    // 修改点击的按钮的selected状态
    sender.selected = !sender.selected;
    if (sender.selected) {
        NSLog(@"播放");
    }else{
        NSLog(@"暂停");
    }
}


// 点击导航栏右侧按钮后的响应
-(void)add:(UIBarButtonItem *)item
{
    OtherViewController *vc = [[OtherViewController alloc]init];
    
    //可以设置vc在推出时，由系统负责隐藏底部的各种bar
    vc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end



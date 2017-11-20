//
//  MyViewController.m
//  Demo2_滚动视图
//
//  Created by tarena on 15/12/8.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property(nonatomic,weak)UIScrollView *sv;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //配置导航的右侧按钮，点击按钮后显示图片的Tarena文字部分
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"move" style:UIBarButtonItemStylePlain target:self action:@selector(move:)];
    
    //创建一张尺寸较大的图片视图
    //使用initWithImage方法在创建iv的同时
    //就指定图片的话，则，不设置frame，那么图片有多大
    //iv就有多大
    UIImageView *iv = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"tarena.jpg"]];

    //创建滚动视图
    UIScrollView *sv = [[UIScrollView alloc]init];
    self.sv = sv;
    sv.frame = CGRectMake(0, 70, self.view.frame.size.width,self.view.frame.size.height-70);
    
    sv.contentSize = iv.frame.size;
    [sv addSubview:iv];
    
    //添加滚动视图到控制器的view上
    [self.view addSubview:sv];
    
    /*
    注意：当使用滚动视图并搭配导航控制器时，系统为了防止延伸到导航栏下方的滚动视图在开始时，被遮盖上，所以系统
     检测到有导航时，就会把滚动视图的内容向下错64个点，有时不想使用该功能的话，则有两种方法取消掉该效果
    */
    //方法一：关闭控制器的该功能，不让控制器自动调整
    //滚动视图的内边距
    self.automaticallyAdjustsScrollViewInsets = NO;
    //方法二：我们自己修改滚动视图的内边距，向上把那64个点
    //再挪回去
    //sv.contentInset= UIEdgeInsetsMake(-64, 0, 0, 0);
    
}

-(void)move:(UIBarButtonItem *)item
{
    [self.sv setContentOffset:CGPointMake(1000, 200) animated:YES];
    
    //self.sv.contentOffset = CGPointMake(1000, 200);
}








@end

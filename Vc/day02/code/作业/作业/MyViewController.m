//
//  MyViewController.m
//  作业
//
//  Created by tarena on 15/12/1.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@property(nonatomic)NSInteger y;
@property(nonatomic,strong)NSString *textOfLabel;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //  初始化第一个label的y坐标
    self.y = 90;
    self.textOfLabel = @"Hello";
    
    self.view.backgroundColor = [UIColor whiteColor];
    //创建按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(20, 40, 200, 40);
    button.backgroundColor = [UIColor lightGrayColor];
    [button setTitle:@"添加标签" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(addLabel) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)addLabel
{
    UILabel *label  = [[UILabel alloc]init];
    label.frame = CGRectMake(20, self.y, 250, 30);
    label.text = self.textOfLabel;
    label.backgroundColor = [UIColor lightGrayColor];
    label.textColor = [UIColor redColor];
    [self.view addSubview:label];
    //为下一个标签y做准备
    self.y+=40;
    self.textOfLabel = [self.textOfLabel stringByAppendingString:@" World"];
}

@end

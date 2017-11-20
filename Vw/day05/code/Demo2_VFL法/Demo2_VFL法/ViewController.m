//
//  ViewController.m
//  Demo2_VFL法
//
//  Created by tarena on 15/12/24.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.button1.translatesAutoresizingMaskIntoConstraints = NO;
    self.button2.translatesAutoresizingMaskIntoConstraints = NO;
    self.button3.translatesAutoresizingMaskIntoConstraints = NO;
    //0.创建尺寸对照表
    
    UIButton
    NSDictionary *metrics = @{@"left":@20,@"right":@20,@"spacing":@20};
    
    //0.创建视图对照表
    //此函数就自动将传入的对象名字符串做key
    //将此对象做该key的value，生成如下形式的字典
    //{@"b1":b1,@"b2":b2}
    NSDictionary  *dictionary =NSDictionaryOfVariableBindings(_button1,_button2,_button3);
    
    //1.创建水平方向的约束描述
    NSString *hVFL = @"|-left-[_button1]-spacing-[_button2(_button1)]-spacing-[_button3(_button1)]-right-|";
    //2.将VFL变成一组约束
    NSArray *cs1 = [NSLayoutConstraint constraintsWithVisualFormat:hVFL options:NSLayoutFormatAlignAllTop|NSLayoutFormatAlignAllBottom metrics:metrics views:dictionary];
    //3.添加约束到父视图上
    [self.view addConstraints:cs1];
    
    // 创建竖直方向的VFL
    NSString *vVFL = @"V:|-spacing-[_button1(40)]";
    NSArray *cs2 = [NSLayoutConstraint constraintsWithVisualFormat:vVFL options:0 metrics:metrics views:dictionary];
    [self.view addConstraints:cs2];
    
}

@end





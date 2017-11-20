//
//  ViewController.m
//  Demo1_万能公式法
//
//  Created by tarena on 15/12/24.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //使用代码创建两个按钮
    UIButton *button1 = [[UIButton alloc]init];
    button1.backgroundColor = [UIColor grayColor];
    [button1 setTitle:@"button1" forState:UIControlStateNormal];
    [self.view addSubview:button1];
    
    UIButton *button2 = [[UIButton alloc]init];
    button2.backgroundColor = [UIColor grayColor];
    [button2 setTitle:@"button2" forState:UIControlStateNormal];
    [self.view addSubview:button2];
    
    //1.关闭button1和button2的自动翻译红线为约束功能
    button1.translatesAutoresizingMaskIntoConstraints = NO;
    button2.translatesAutoresizingMaskIntoConstraints = NO;
    
    //2.创建约束
    
    // button1距离左边缘20个点
    // button1.left = view.left * 1 +20
    NSLayoutConstraint *c1 = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:20];
    [self.view addConstraint:c1];
    
    //button1.top = view.top * 1 + 20;
    NSLayoutConstraint *c2 = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
    [self.view addConstraint:c2];
    
    //button1.right = button2.left * 1 + (-10)
    NSLayoutConstraint *c3 = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:button2 attribute:NSLayoutAttributeLeft multiplier:1 constant:-10];
    [self.view addConstraint:c3];
    
    //button1.width = button2.width * 1 + 0;
    NSLayoutConstraint *c4 = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:button2 attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    [self.view addConstraint:c4];
    
    //button2.right = view.right * 1 + (-20)
    NSLayoutConstraint *c5 = [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:-20];
    [self.view addConstraint:c5];
    
    //button2.top = button1.top * 1 + 0
    NSLayoutConstraint *c6 = [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:button1 attribute:NSLayoutAttributeTop multiplier:1 constant:0];
    [self.view addConstraint:c6];
    
    //button1.height = nil.notanattri * 0 + 40;
    NSLayoutConstraint *c7 = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:40];
    [self.view addConstraint:c7];
    
    // button2.height = button1.height * 1+0
    NSLayoutConstraint *c8 = [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:button1 attribute:NSLayoutAttributeHeight multiplier:1 constant:0];
    [self.view addConstraint:c8];
    
    
    
    
    
    
    
    
}



@end

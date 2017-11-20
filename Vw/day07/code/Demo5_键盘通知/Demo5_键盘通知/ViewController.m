//
//  ViewController.m
//  Demo5_键盘通知
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//在view即将显示时添加对系统发出的键盘通知的监听
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //为当前控制器注册键盘弹起和关闭通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(openKeyboard:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(closeKeyboard:) name:UIKeyboardWillHideNotification object:nil];
}


//在view即将消失时取消键盘通知的监听
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}

-(void)openKeyboard:(NSNotification *)notification
{
    NSLog(@"%@",notification.userInfo);
}

-(void)closeKeyboard:(NSNotification *)notification
{
    NSLog(@"关闭了键盘");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}



@end

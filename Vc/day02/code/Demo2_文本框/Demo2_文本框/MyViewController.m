//
//  MyViewController.m
//  Demo2_文本框
//
//  Created by tarena on 15/12/1.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
//点击后打印文本框的内容
- (IBAction)printInfo:(id)sender
{
    NSLog(@"%@",self.textField.text);
}

//点击弹键盘按钮
- (IBAction)openKeyboard:(id)sender
{
    //成为第一响应者
    [self.textField becomeFirstResponder];
}


//点击关键盘按钮
- (IBAction)closeKeyboard:(id)sender
{
    //放弃第一响应者身份
    //[self.textField resignFirstResponder];
    [self.view endEditing:YES];
}

//关键盘的时机一：触摸空白处(触摸的是控制器的view)
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

//关键盘的时机二：点击键盘右下角按钮
- (IBAction)pressGoButton:(id)sender
{
}







@end

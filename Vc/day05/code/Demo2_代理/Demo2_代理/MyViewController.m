//
//  MyViewController.m
//  Demo2_代理
//
//  Created by tarena on 15/12/4.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置文本框的代理为当前控制器
    // 即：当文本框与用户进行交互时，由当前控制器
    // 负责提供相应的响应
    self.textField.delegate = self;
}


#pragma mark - UITextFieldDelegate协议
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}

#pragma mark - 我的
-(void)fun
{
    
}

#pragma mark - 你的
-(void)fun2
{
    
}



@end

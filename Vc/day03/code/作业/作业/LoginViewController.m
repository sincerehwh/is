//
//  LoginViewController.m
//  作业
//
//  Created by tarena on 15/12/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *pwdTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)clickLoginButton:(id)sender
{
    [self login];
    //关闭键盘
    [self.view endEditing:YES];
}

//点击Next按钮时，光标切换到密码框
- (IBAction)clickNextButton:(id)sender
{
    [self.pwdTextField becomeFirstResponder];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

// 点击Done按钮时，与点击登录按钮功能相同
- (IBAction)clickDoneButton:(id)sender
{
    [self login];
}


//方法：做登录验证
-(void)login
{
    // 获取用户的输入
    NSString *name = self.nameTextField.text;
    NSString *pwd = self.pwdTextField.text;
    
    // 非空判断
    if(name.length==0 || pwd.length==0)
    {
        self.resultLabel.text = @"用户名或密码不允许为空";
        return;
    }
    
    // 用户名和密码的核心判断
    if ([name isEqualToString:@"abc"] && [pwd isEqualToString:@"123"]) {
        //登录验证成功
        self.resultLabel.text = @"登录成功";
        
    }else{
        //登录验证失败
        self.resultLabel.text = @"用户名或密码错误";
    }
}


/*
 if(第一关)
 {
    /.....
    return;
 }
 if(第二关)
 {
    /.....
    return;
 }
 if(第三关)
 {
    /.....
    return;
 }
 //核心操作
 */

@end

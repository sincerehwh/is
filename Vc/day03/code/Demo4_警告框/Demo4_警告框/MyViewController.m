//
//  MyViewController.m
//  Demo4_警告框
//
//  Created by tarena on 15/12/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //1.创建AlertController
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"title" message:@"message" preferredStyle:UIAlertControllerStyleAlert];
    
    //2.创建界面上的按钮
    UIAlertAction *actionYes = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //获取在文本框中输入的用户名和密码
        NSString *name = alert.textFields[0].text;
        NSString *pwd = alert.textFields[1].text;
        NSLog(@"name=%@   pwd=%@",name,pwd);
    }];
    
    UIAlertAction *actionNo = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"NO");
    }];
    
    //3.将按钮添加到AlertController中
    [alert addAction:actionNo];
    [alert addAction:actionYes];
    
    //4.(可选)为AlertController添加文本框
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        //配置添加的用户名文本框
        textField.placeholder = @"用户名";
    }];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        //配置添加的密码文本框
        textField.textColor = [UIColor redColor];
        textField.secureTextEntry = YES;
    }];
    
    //5.显示AlertController
    [self presentViewController:alert animated:YES completion:nil];
    
}







@end

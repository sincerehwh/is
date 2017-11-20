//
//  MyViewController.m
//  Demo5_操作表
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
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"转发" style:UIAlertActionStyleDefault handler:nil];
    
    UIAlertAction *action3 = [UIAlertAction actionWithTitle:@"回复" style:UIAlertActionStyleDefault handler:nil];
    
    UIAlertAction *action4 = [UIAlertAction actionWithTitle:@"删除" style:UIAlertActionStyleDestructive handler:nil];
    
    [actionSheet addAction:action4];
    [actionSheet addAction:action2];
    [actionSheet addAction:action3];
    [actionSheet addAction:action1];
    
    [self presentViewController:actionSheet animated:YES completion:nil];
}







@end

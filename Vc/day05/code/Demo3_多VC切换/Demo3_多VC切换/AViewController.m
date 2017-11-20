 //
//  AViewController.m
//  Demo3_多VC切换
//
//  Created by tarena on 15/12/4.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//点击按钮后，推出b界面
- (IBAction)gotoBVC:(id)sender
{
    //1.创建要推出的控制器的实例
    BViewController *bvc = [[BViewController alloc]initWithNibName:@"BViewController" bundle:nil];
    
    //2.从当前控制器推出下一个控制器
    [self presentViewController:bvc animated:YES completion:nil];
}






@end

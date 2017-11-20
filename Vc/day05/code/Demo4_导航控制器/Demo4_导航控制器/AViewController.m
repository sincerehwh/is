//
//  AViewController.m
//  Demo4_导航控制器
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
    //设置导航栏上的标题
    self.navigationItem.title = @"avc";
}

//点击后由导航控制器推出bvc
- (IBAction)gotoBVC:(id)sender
{
    //1.创建要推出的BViewController的实例
    BViewController *bvc = [[BViewController alloc]init];
    
    //2.由正在管理者avc的那个导航来负责推出bvc
    [self.navigationController pushViewController:bvc animated:YES];
}








@end

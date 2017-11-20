//
//  AViewController.m
//  Demo4_多导航的切换
//
//  Created by tarena on 15/12/7.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"第一个";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add:)];
}

-(void)add:(UIBarButtonItem *)item
{
    //推出BViewController，但是BViewController也得有它的导航
    BViewController *bvc = [[BViewController alloc]init];
    UINavigationController *navi = [[UINavigationController alloc]initWithRootViewController:bvc];
    //推出navi
    [self.navigationController presentViewController:navi animated:YES completion:nil];
}


@end

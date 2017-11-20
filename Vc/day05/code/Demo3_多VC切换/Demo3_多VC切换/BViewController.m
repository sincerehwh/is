//
//  BViewController.m
//  Demo3_多VC切换
//
//  Created by tarena on 15/12/4.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)goback:(id)sender
{
    //返回到推出当前控制器的前一个AviewController
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

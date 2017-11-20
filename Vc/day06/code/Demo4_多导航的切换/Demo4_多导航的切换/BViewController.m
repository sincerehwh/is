//
//  BViewController.m
//  Demo4_多导航的切换
//
//  Created by tarena on 15/12/7.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"第二个";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel:)];
}

-(void)cancel:(UIBarButtonItem *)item
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}


@end

//
//  BViewController.m
//  Demo4_导航控制器
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
    self.navigationItem.title = @"bvc";
    
}

- (IBAction)goback:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}









@end

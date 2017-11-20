//
//  ViewController.m
//  Demo8_修改bounds
//
//  Created by tarena on 15/12/22.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGRect bounds = self.view.bounds;
    bounds.origin.y +=2;
    self.view.bounds = bounds;
}








@end

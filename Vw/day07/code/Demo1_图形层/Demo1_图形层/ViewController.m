//
//  ViewController.m
//  Demo1_图形层
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建描绘图形的层
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path = [UIBezierPath bezierPathWithRect:CGRectMake(2, 2, 100, 50)].CGPath;
    layer.strokeColor = [UIColor redColor].CGColor;
    layer.lineWidth = 2;
    layer.backgroundColor = [UIColor whiteColor].CGColor;
    layer.frame = CGRectMake(50, 50, 120, 60);
    
    //添加层到父层中
    [self.view.layer addSublayer:layer];
    
}



@end

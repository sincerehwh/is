//
//  ViewController.m
//  Demo3_长按手势
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
    UILongPressGestureRecognizer *longPressGR = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPress:)];
    //设置长按动作的最小间隔秒数
    longPressGR.minimumPressDuration = 2;
    [self.view addGestureRecognizer:longPressGR];
    
}
-(void)longPress:(UILongPressGestureRecognizer *)gr
{
    NSLog(@"%@",NSStringFromCGPoint([gr locationInView:self.view]));
}



@end

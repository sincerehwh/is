//
//  ViewController.m
//  Demo6_Pan手势
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
    UIPanGestureRecognizer *panGR = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(pan:)];
    [self.view addGestureRecognizer:panGR];
}

-(void)pan:(UIPanGestureRecognizer *)gr
{
    //手势触点，在self.view坐标系下，点的坐标值
    CGPoint location = [gr locationInView:self.view];
    //手势移动到的新点，相对于手势起始点，的横向纵向距离
    //手势移动了多远
    CGPoint translation = [gr translationInView:self.view];
    
    NSLog(@"%@,%@",NSStringFromCGPoint(location),NSStringFromCGPoint(translation));
}







@end

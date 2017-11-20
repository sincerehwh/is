//
//  ViewController.m
//  Demo5_Rotation手势
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
    UIRotationGestureRecognizer *rotationGR = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotation:)];
    [self.view addGestureRecognizer:rotationGR];
}

-(void)rotation:(UIRotationGestureRecognizer *)gr
{
    // 旋转的弧度
    // 正负代表旋转的方向
    // 顺时针为正，逆时针为负
    // 返回的弧度都是相对于动作起始时的弧度偏移量
    CGFloat rotation = gr.rotation;
    
    NSLog(@"%.2f",rotation);
    
}
@end

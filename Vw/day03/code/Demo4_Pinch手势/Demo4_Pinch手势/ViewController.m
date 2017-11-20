//
//  ViewController.m
//  Demo4_Pinch手势
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
    UIPinchGestureRecognizer *pinchGR = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinch:)];
    [self.view addGestureRecognizer:pinchGR];
    
}

-(void)pinch:(UIPinchGestureRecognizer *)gr
{
    //代表动作快慢的速率
    //正数：外扩
    //负数：内捏合
    //绝对值 越大，代表动作越快
    //绝对值 越小，代表动作越慢
    CGFloat velocity = gr.velocity;
    
    //代表动作外扩或捏合的比率倍数
    //外扩：大于1的数
    //捏合：小于1的数
    CGFloat scale = gr.scale;
    
    NSLog(@"velocity=%.2f,scale=%.2f",velocity,scale);
    
    gr.scale = 1;
}





@end

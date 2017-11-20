//
//  ViewController.m
//  Demo2_Swipe手势
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
    
    UISwipeGestureRecognizer *swipeGR = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    //扫动的方向
    swipeGR.direction = UISwipeGestureRecognizerDirectionRight | UISwipeGestureRecognizerDirectionLeft | UISwipeGestureRecognizerDirectionUp | UISwipeGestureRecognizerDirectionDown;
    //绑定手势到视图上
    [self.view addGestureRecognizer:swipeGR];
}

-(void)swipe:(UISwipeGestureRecognizer *)gr
{
    NSLog(@".......");
//    if (gr.direction == UISwipeGestureRecognizerDirectionRight) {
//        NSLog(@"右");
//    }else if(gr.direction==UISwipeGestureRecognizerDirectionLeft){
//        NSLog(@"左");
//    }else if(gr.direction==UISwipeGestureRecognizerDirectionUp){
//        NSLog(@"上");
//    }else if(gr.direction==UISwipeGestureRecognizerDirectionDown){
//        NSLog(@"下");
//    }
    
}



@end

//
//  RotationViewController.m
//  Demo5_CoreAnimation
//
//  Created by tarena on 15/12/28.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()
@property (weak, nonatomic) IBOutlet UIView *grayView;

@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //新建一个层
    CALayer *layer = [CALayer layer];
    layer.backgroundColor = [UIColor redColor].CGColor;
    //layer.frame = CGRectMake(0, 0, 100, 100);
    // 大小
    layer.bounds = CGRectMake(0, 0, 100, 100);
    // 位置
    // position是指父视图上的某个点坐标
    layer.position = CGPointMake(0, 0);
    // 锚点：将红色子层中的那个点 放在position上面
    layer.anchorPoint = CGPointMake(0.5, 0);
    
    layer.transform = CATransform3DMakeRotation(M_PI_4, 0, 0, 1);
    
    [self.grayView.layer addSublayer:layer];
    
    
    
    
}

@end

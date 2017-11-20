//
//  ViewController.m
//  Demo3_CA动画
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //[self position];
    //[self transform];
    [self keyFrameAnimation];
}

//测试位移动画
-(void)position
{
    // 创建基础动画
    CABasicAnimation *anim = [CABasicAnimation animation];
    
    // 一个重要的设置：设置动画要修改的内容
    // 路径 position  大小 scale 旋转 rotation
    // 使用kvc的方式对对象的属性赋值，说明要修改哪个属性
    anim.keyPath = @"position";
    
    // 设置动画的起始值和结束值
    // 此处给的一定是对象类型，所以要使用NSValue对数据进行包装
    // anim.fromValue;
    anim.toValue = [NSValue valueWithCGPoint:CGPointMake(200, 400)];
    
    // 动画时长 单位是秒
    anim.duration = 2;
    
    // 动画的重复次数
    anim.repeatCount = 3;
    
    // 固定动画结束时视图的位置
    anim.removedOnCompletion = NO;
    anim.fillMode = kCAFillModeForwards;
    
    // 添加动画到指定的层上
    [self.imageView.layer addAnimation:anim forKey:nil];
}

// 测试与变形有关的动画效果
-(void)transform
{
    CABasicAnimation *anim = [CABasicAnimation animation];
//    anim.keyPath = @"transform";
//    anim.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.1, 1.1, 1)];
    
//    anim.keyPath = @"transform.scale";
//    anim.toValue = @1.1;
    
//    anim.keyPath = @"opacity";
//    anim.toValue = @0;
    
    anim.keyPath = @"transform.rotation";
    anim.toValue = @(2*M_PI);
    
    anim.duration = 5;
    anim.repeatCount = MAXFLOAT;
    [self.imageView.layer addAnimation:anim forKey:nil];

}

//测试关键帧动画
-(void)keyFrameAnimation
{
    CAKeyframeAnimation *anim = [CAKeyframeAnimation animation];
    //设置要修改哪个属性
    anim.keyPath = @"position";
    
    //设置具体的行进路线
    anim.path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 50, 200, 200)].CGPath;
    
    anim.duration = 3;
    
    [self.imageView.layer addAnimation:anim forKey:nil];
}






@end

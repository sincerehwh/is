//
//  ViewController.m
//  Demo5_CoreAnimation
//
//  Created by tarena on 15/12/28.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *grayView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1. 获取view的layer对象
    CALayer *layer = self.grayView.layer;
    
    // 2. 设置
    // 设置背景色
    layer.backgroundColor = [UIColor redColor].CGColor;
    
    // 设置边框宽度和颜色
    layer.borderWidth = 3;
    layer.borderColor = [UIColor yellowColor].CGColor;
    
    // 设置视图为圆角类型
    layer.cornerRadius = 30;
    
    // 设置阴影shadow opacity为透明度，默认为0，看不见阴影的
    layer.shadowOpacity = 1;
    layer.shadowColor  = [ UIColor yellowColor].CGColor;
    layer.shadowRadius = 50;
    
    // 2.设置图片视图的圆角效果
    self.imageView.layer.cornerRadius = 30;
    // 沿着视图的边儿遮罩，即去掉圆角以外的图片内容
    self.imageView.layer.masksToBounds = YES;
    
    self.imageView.layer.borderColor = [UIColor blackColor].CGColor;
    self.imageView.layer.borderWidth = 1;
    
    // 3.CALayer具有容器的特性，可以互相嵌套
    // 即层中还可以添加子层
    // 创建一个只有文字的新的层
    CATextLayer *nameLayer = [CATextLayer layer];
    nameLayer.string =  @"xxxxx";
    nameLayer.foregroundColor = [UIColor blueColor].CGColor;
    nameLayer.frame = CGRectMake(50, 50, 100, 50);
    [self.imageView.layer addSublayer:nameLayer];
    
    // 创建有图片内容的新层
    CALayer *imageLayer = [CALayer layer];
    imageLayer.contents = (id)[UIImage imageNamed:@"Aircraft"].CGImage;
    imageLayer.frame = CGRectMake(100, 100, 150, 150);
    // 旋转imageLayer
    imageLayer.transform = CATransform3DMakeRotation(M_PI_4, 0, 0, 1);
    
    //[self.imageView.layer addSublayer:imageLayer];
    [self.view.layer addSublayer:imageLayer];
    
}


@end

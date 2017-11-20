//
//  ViewController.m
//  Demo7_图片查看器
//
//  Created by tarena on 15/12/22.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 位移
    UIPanGestureRecognizer *panGR = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(pan:)];
    [self.view addGestureRecognizer:panGR];
    // 缩放
    UIPinchGestureRecognizer *pinchGR = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinch:)];
    pinchGR.delegate = self;
    [self.view addGestureRecognizer:pinchGR];
    //旋转
    UIRotationGestureRecognizer *rotationGR = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotation:)];
    rotationGR.delegate = self;
    [self.view addGestureRecognizer:rotationGR];
   
    //Tap:双击还原
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
    tapGR.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:tapGR];
}
//实现图片跟随手势移动而移动
-(void)pan:(UIPanGestureRecognizer *)gr
{
    // 手势相对于起始点，移动了多远
    // 当视图发生放大或缩小时，相应的视图的坐标系的比例
    // 也会放大或缩小
    // 要修改的transform属性，数据是使用imageView坐标系中的刻度值的
    // 所以在读取手势移动了的距离是多少时，也要读取在imageView这个坐标系下的距离
    //CGPoint translation = [gr translationInView:self.imageView];

    //self.imageView.transform = CGAffineTransformTranslate(self.imageView.transform, translation.x, translation.y);
    //将本次走了的距离归0
    //[gr setTranslation:CGPointZero inView:self.imageView];
    
    //------------修改中心点实现位移---------------
    CGPoint translation = [gr translationInView:self.view];
    CGPoint center = self.imageView.center;
    center.x += translation.x;
    center.y += translation.y;
    self.imageView.center = center;
    [gr setTranslation:CGPointZero inView:self.view];
}

//实现图片跟随手势捏合实现放大缩小
-(void)pinch:(UIPinchGestureRecognizer *)gr
{
    self.imageView.transform = CGAffineTransformScale(self.imageView.transform, gr.scale, gr.scale);
    //去掉本次比率，归1
    gr.scale = 1;
}

//实现图片跟随手势旋转而旋转
-(void)rotation:(UIRotationGestureRecognizer *)gr
{
    self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, gr.rotation);
    
    gr.rotation = 0;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}

//双击还原
-(void)tap:(UITapGestureRecognizer *)gr
{
    //Identity是系统提供的一个常量
    //该常量中记录的就是没有发生任何变形时的那个矩阵
    self.imageView.transform = CGAffineTransformIdentity;
}



@end

//
//  ViewController.m
//  Demo2_圆盘动画
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

//记录当前是否正在播放（圆盘是否正在旋转）
@property(nonatomic)BOOL play;

//添加一个一秒钟响应60次的定时器
@property(nonatomic,strong)CADisplayLink *link;


@end

@implementation ViewController

//定时器的懒加载
- (CADisplayLink *)link
{
    if (!_link) {
        // 创建定时器
        _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(rotation)];
        // 手动将定时器添加到事件循环中
        [_link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    }
    return _link;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    self.play = NO;
    
    // 变圆形
    self.imageView.layer.cornerRadius = 120;
    self.imageView.layer.masksToBounds = YES;
    
    // 添加旋转的8个子层
    for (int i=0; i<8; i++)
    {
        CALayer *layer = [CALayer layer];
        layer.backgroundColor = [UIColor grayColor].CGColor;
        // 设置层的大小
        layer.bounds = CGRectMake(0, 0, 20, 120);
        // 设置层的位置
        layer.position = CGPointMake(self.imageView.bounds.size.width*0.5, self.imageView.bounds.size.height*0.5);
        layer.anchorPoint = CGPointMake(0.5, 1);
        
        // 设置每个层的旋转弧度
        layer.transform = CATransform3DMakeRotation(i*M_PI_4, 0, 0, 1);
        
        [self.imageView.layer addSublayer:layer];
    }

}

// 此方法一秒钟会被调用60次
-(void)rotation
{
    //5秒钟 转一圈  转2π
    //1秒钟 转多少？ 2π/5
    //1秒钟 调用60次  每次转多少？ 2π/5/60
    self.imageView.layer.transform = CATransform3DRotate(self.imageView.layer.transform,2*M_PI/10/60, 0, 0, 1);
}

//触摸空白处时，启动或暂停 旋转动作
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.play = !self.play;
    self.link.paused = !self.play;
}


@end






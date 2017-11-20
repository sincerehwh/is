//
//  MyUIView.m
//  Demo3_绘图
//
//  Created by tarena on 15/12/19.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyUIView.h"

@implementation MyUIView


- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    //1.勾勒路径
    [path moveToPoint:CGPointMake(40, 40)];
    [path addLineToPoint:CGPointMake(40, 140)];
    [path addLineToPoint:CGPointMake(140, 40)];
    //[path closePath];
    
    //设置路径的线宽
    path.lineWidth = 20;
    
    //设置线头的样式
    path.lineCapStyle = kCGLineCapSquare;
    
    //设置两条线焦点的样式
    path.lineJoinStyle = kCGLineJoinMiter;
    
    //2.设置描边或填充的颜色
    [[UIColor greenColor] setFill];
    [[UIColor redColor] setStroke];

    //3.实际绘制路径
    [path stroke];
    [path fill];

    
    
    
}






@end

//
//  MyView.m
//  Demo1_圆弧
//
//  Created by tarena on 15/12/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyView.h"

@implementation MyView


- (void)drawRect:(CGRect)rect {
    UIBezierPath *path = [UIBezierPath bezierPath];
    //勾勒圆弧
    [path addArcWithCenter:CGPointMake(160, 160) radius:100 startAngle:M_PI_2*3 endAngle:0 clockwise:YES];
    [path addLineToPoint:CGPointMake(260, 360)];
    //设置描边的颜色
    [[UIColor redColor] setStroke];
    //设置线条的宽度
    path.lineWidth = 5;
    //绘制
    [path stroke];
    
}





@end

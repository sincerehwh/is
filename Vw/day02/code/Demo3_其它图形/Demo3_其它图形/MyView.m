//
//  MyView.m
//  Demo3_其它图形
//
//  Created by tarena on 15/12/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(180, 40)];
    //添加曲线
    [path addCurveToPoint:CGPointMake(40, 180) controlPoint1:CGPointMake(40, 40) controlPoint2:CGPointMake(180, 180)];
    [path addCurveToPoint:CGPointMake(180, 320) controlPoint1:CGPointMake(180, 180) controlPoint2:CGPointMake(40, 320)];
    //设置描边即线宽
    path.lineWidth = 5;
    [[UIColor redColor] setStroke];
    //绘制
    [path stroke];
    
    //绘制矩形和圆角矩形
    //UIBezierPath *path2 = [UIBezierPath bezierPathWithRect:CGRectMake(50, 50, 200, 100)];
    UIBezierPath *path2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 50, 200, 100) cornerRadius:20];
    [[UIColor blueColor] setStroke];
    [path2 stroke];
    
    //绘制椭圆
    UIBezierPath *path3 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 180, 200, 200)];
    [path3 stroke];
}







@end

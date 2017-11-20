//
//  MyView.m
//  Demo3_绘图
//
//  Created by tarena on 15/12/19.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyView.h"

@implementation MyView


/*
 此方法会在系统创建MyView实例时，自动调用一次
 此方法只是系统绘制的复杂过程中的一个小环节而已
 所以千万不要我们自己手动调用
 */
- (void)drawRect:(CGRect)rect {
    //1.获取绘图上下文对象
    //想象成画笔
    CGContextRef context = UIGraphicsGetCurrentContext();
    //2.勾勒图形
    CGContextMoveToPoint(context, 40, 40);
    CGContextAddLineToPoint(context, 40, 140);
    CGContextAddLineToPoint(context, 140, 40);
    CGContextAddLineToPoint(context, 40, 40);
    //3.设置描边或填充的颜色
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    //4.按照前面的设置绘制
    CGContextFillPath(context);
   
}







@end

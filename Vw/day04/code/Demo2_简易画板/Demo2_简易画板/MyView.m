//
//  MyView.m
//  Demo2_简易画板
//
//  Created by tarena on 15/12/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyView.h"

@interface MyView ()
@property(nonatomic,strong)UIBezierPath *path;
@end

@implementation MyView

- (UIBezierPath *)path
{
    if (!_path) {
        _path = [UIBezierPath bezierPath];
        _path.lineWidth = 8;
    }
    return _path;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 将集合中唯一的一个触点对象取出
    UITouch *touch = [touches anyObject];
    // 获取触点坐标
    CGPoint point = [touch locationInView:self];
    
    //self.path = [UIBezierPath bezierPath];
    [self.path moveToPoint:point];
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 将集合中唯一的一个触点对象取出
    UITouch *touch = [touches anyObject];
    // 获取触点坐标
    CGPoint point = [touch locationInView:self];
    
    [self.path addLineToPoint:point];
    //路径一改变，就要重绘
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    [[UIColor redColor] setStroke];
    [self.path stroke];
}








- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 将集合中唯一的一个触点对象取出
    UITouch *touch = [touches anyObject];
    // 获取触点坐标
    CGPoint point = [touch locationInView:self];
    NSLog(@"Ended:%@",NSStringFromCGPoint(point));
}



@end

//
//  MessageView.m
//  作业-1
//
//  Created by tarena on 15/12/22.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MessageView.h"

@implementation MessageView

- (void)drawRect:(CGRect)rect
{
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    attributes[NSForegroundColorAttributeName] = [UIColor whiteColor];
    attributes[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    
    //计算文本的size
    CGSize textOfSize = [self.message boundingRectWithSize:CGSizeMake(200, 999) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    //结算气泡矩形的CGRect
    CGRect popOfRect = CGRectZero;
    popOfRect.origin.x = self.bounds.size.width-40-textOfSize.width;
    popOfRect.origin.y = 10;
    popOfRect.size.width = textOfSize.width+20;
    popOfRect.size.height = textOfSize.height+20;
    //绘制填充的圆角矩形
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:popOfRect cornerRadius:10];
    [[UIColor grayColor] setFill];
    [path fill];
    
    //绘制右下角填充的三角形尾巴
    UIBezierPath *trianglePath = [UIBezierPath bezierPath];
    [trianglePath moveToPoint:CGPointMake(CGRectGetMaxX(popOfRect) , CGRectGetHeight(popOfRect))];
    [trianglePath addLineToPoint:CGPointMake(CGRectGetMaxX(popOfRect)+10, CGRectGetHeight(popOfRect)+10)];
    [trianglePath addLineToPoint:CGPointMake(CGRectGetMaxX(popOfRect)-10, CGRectGetHeight(popOfRect)+10)];
    [trianglePath closePath];
    [trianglePath fill];
    
    //绘制字符串
    [self.message drawInRect:CGRectMake(popOfRect.origin.x+10, 20, textOfSize.width, textOfSize.height) withAttributes:attributes];
}


@end

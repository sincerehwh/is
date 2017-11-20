//
//  MyView.m
//  Demo4_绘制字符串
//
//  Created by tarena on 15/12/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (void)drawRect:(CGRect)rect
{
    NSString *str = @"这是一段用于测试多文本能够自动换行的测试文字，大概能够写个两三行看到结束就可以，恩，差不多了，就这样了吧！";
    
    NSDictionary *attributes = @{
        NSFontAttributeName:[UIFont systemFontOfSize:20],
        NSForegroundColorAttributeName:[UIColor redColor]};
    
    //[str drawAtPoint:CGPointMake(30, 30) withAttributes:attributes];
    //在指定的矩形区域内绘制，到达矩形右边缘时，只要
    //视图的高度还够，那么就会换行画
    //[str drawInRect:CGRectMake(30, 30, 150, 200) withAttributes:attributes];
    
    //自动计算出不超出指定的宽度和高度的前提下
    //能够完整的显示字符串的最合适的高度和宽度
    CGRect  textFrame =  [str boundingRectWithSize:CGSizeMake(200, 999) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
    
    [str drawInRect:CGRectMake(50, 50, textFrame.size.width, textFrame.size.height) withAttributes:attributes];
    
}


@end

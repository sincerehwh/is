//
//  MyView2.m
//  Demo5_绘制图片
//
//  Created by tarena on 15/12/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyView2.h"

@implementation MyView2


- (void)drawRect:(CGRect)rect
{
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 50, 150, 150)];
    //沿着path记录的路径，在该路径以外的部分
    //设置为绘图无效区，只有在图形的内部才允许绘制
    [path addClip];
    
    UIImage *image = [UIImage imageNamed:@"eqi"];
    [image drawInRect:CGRectMake(50, 50, 150, 150)];
    
    
   
}




@end

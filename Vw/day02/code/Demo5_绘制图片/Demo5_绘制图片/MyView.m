//
//  MyView.m
//  Demo5_绘制图片
//
//  Created by tarena on 15/12/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (void)drawRect:(CGRect)rect
{
    UIImage *image = [UIImage imageNamed:@"qie"];
    [image drawAtPoint:CGPointMake(50, 50)];
    
    
    UIImage *image2 = [UIImage imageNamed:@"eqi"];
    //[image2 drawAtPoint:CGPointMake(50, 90)];
    [image2 drawInRect:CGRectMake(50, 90, 250, 250)];
    
    NSString *str = @"张三";
    CGSize textSize = [str boundingRectWithSize:CGSizeMake(200, 999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17],NSForegroundColorAttributeName:[UIColor redColor]} context:nil].size;
    
    [str drawInRect:CGRectMake(300-textSize.width, 340-textSize.height, textSize.width, textSize.height) withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17],NSForegroundColorAttributeName:[UIColor redColor]}];
    
    
    
    
}


@end

//
//  TRPoint.m
//  day03_8引用计数
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRPoint.h"

@implementation TRPoint
-(id)initWithX:(int)x andY:(int)y
{
    if (self = [super init])
    {
        self.x = x;
        self.y = y;
        NSLog(@"(%d,%d)被创建了", self.x, self.y);
    }
    return self;
}
+(id)pointWithX:(int)x andY:(int)y
{
    TRPoint *p = [[TRPoint alloc] initWithX:x andY:y];
    return p;
}
-(void)show
{
    NSLog(@"(%d,%d)", self.x, self.y);
}
-(void)dealloc
{
    NSLog(@"(%d,%d)被释放了", self.x, self.y);
    [super dealloc];//在最后一句必须添加的内容
}
@end

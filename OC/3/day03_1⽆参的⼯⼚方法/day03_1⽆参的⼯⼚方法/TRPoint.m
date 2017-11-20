//
//  TRPoint.m
//  day03_1⽆参的⼯⼚方法
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRPoint.h"

@implementation TRPoint
-(id)init
{
    if (self = [super init])
    {
        self.x = 10;
        self.y = 20;
    }
    return self;
}
-(void)show
{
    NSLog(@"(%d,%d)", self.x, self.y);
}
+(id)point//工厂方法用于创建对象
{
    TRPoint *p = [[TRPoint alloc] init];
    return p;
}
@end

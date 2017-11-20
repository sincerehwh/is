//
//  TRChild.m
//  day03_7单例模式练习
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRChild.h"

static TRChild *child = nil;

@implementation TRChild
+(id)sharedChild
{
    if (child == nil)
    {
        child = [[TRChild alloc] init];
    }
    return child;
}

-(void)show
{
    NSLog(@"姓名:%@,年龄:%d", self.name, self.age);
}
@end

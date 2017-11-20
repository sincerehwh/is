//
//  TRInteger.m
//  day02_9有参初始化⽅法
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRInteger.h"

@implementation TRInteger
-(id)initWithInteger:(int)integer
{
    if (self = [super init])
    {
        self.integer = integer;
    }
    return self;
}
-(void)show
{
    NSLog(@"%d", self.integer);
}
@end

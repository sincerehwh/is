//
//  TRInteger.m
//  day03_4有参的⼯⼚方法练习
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRInteger.h"

@implementation TRInteger
-(id)initWithX:(int)x
{
    if (self = [super init])
    {
        self.integer = x;
    }
    return self;
}
-(void)show
{
    NSLog(@"%d", self.integer);
}
+(id)integerWithX:(int)x
{
    TRInteger *i = [[TRInteger alloc] initWithX:x];
    return i;
}
@end

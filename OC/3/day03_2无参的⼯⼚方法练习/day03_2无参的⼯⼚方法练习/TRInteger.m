//
//  TRInteger.m
//  day03_2无参的⼯⼚方法练习
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRInteger.h"

@implementation TRInteger
-(id)init
{
    if (self = [super init])
    {
        self.integer = 10;
    }
    return self;
}
-(void)show
{
    NSLog(@"%d", self.integer);
}
+(id)integer
{
    TRInteger *i = [[TRInteger alloc] init];
    return i;
}
@end

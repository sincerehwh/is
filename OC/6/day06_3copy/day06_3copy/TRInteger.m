//
//  TRInteger.m
//  day06_3copy
//
//  Created by tarena on 15/9/23.
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
-(id)copyWithZone:(NSZone*)zone
{
    TRInteger *i = [[TRInteger
                     allocWithZone:zone]
                    initWithInteger:
                    self.integer];
    return i;
}
@end

//
//  TRInteger.m
//  day08_6数组排序
//
//  Created by tarena on 15/9/28.
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
-(NSString *)description
{
    return [NSString stringWithFormat:@"%d",self.integer];
}
-(NSComparisonResult)compareInt:(TRInteger *)other
{
    if (self.integer > other.integer)
        return NSOrderedAscending;
    else if (self.integer < other.integer)
        return NSOrderedDescending;
    else
        return NSOrderedSame;
}
@end

//
//  TRInteger+math.m
//  day05_5分类练习
//
//  Created by tarena on 15/9/22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRInteger+math.h"

@implementation TRInteger (math)
-(TRInteger *)add:(TRInteger *)i
{
    TRInteger *result = [[TRInteger alloc] init];
    result.integer = self.integer + i.integer;
    return result;
}
-(TRInteger *)sub:(TRInteger *)i
{
    TRInteger *result = [[TRInteger alloc] init];
    result.integer = self.integer - i.integer;
    return result;
}
-(TRInteger *)mul:(TRInteger *)i
{
    TRInteger *result = [[TRInteger alloc] init];
    result.integer = self.integer * i.integer;
    return result;
}
-(TRInteger *)div:(TRInteger *)i
{
    if (i.integer == 0)
        return nil;
    TRInteger *result = [[TRInteger alloc] init];
    result.integer = self.integer / i.integer;
    return result;
}
@end

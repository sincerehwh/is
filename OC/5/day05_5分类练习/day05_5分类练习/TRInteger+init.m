//
//  TRInteger+init.m
//  day05_5分类练习
//
//  Created by tarena on 15/9/22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRInteger+init.h"

@implementation TRInteger (init)
-(id)initWithInteger:(int)integer
{
    if (self = [super init])
    {
        self.integer = integer;
    }
    return self;
}
+(id)integerWithInteger:(int)integer
{
    TRInteger *i = [TRInteger integerWithInteger:integer];
    return i;
}
@end

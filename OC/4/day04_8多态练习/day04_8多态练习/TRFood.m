//
//  TRFood.m
//  day04_8多态练习
//
//  Created by tarena on 15/9/21.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRFood.h"

@implementation TRFood
-(id)initWithName:(NSString *)name
{
    if (self = [super init])
    {
        self.name = name;
    }
    return self;
}
@end

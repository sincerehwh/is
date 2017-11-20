//
//  TRHippo.m
//  day04_8多态练习
//
//  Created by tarena on 15/9/21.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRHippo.h"

@implementation TRHippo
-(void)eat:(TRFood *)food
{
    NSLog(@"%@在慢慢的吃%@", self.name, food.name);
}
@end

//
//  City.m
//  Demo5_对象数组
//
//  Created by tarena on 15/12/10.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "City.h"

@implementation City

+ (NSArray *)demoData
{
    City *c1 = [[City alloc]init];
    c1.name = @"北京";
    c1.population = 1100;
    
    City *c2 = [[City alloc]init];
    c2.name = @"上海";
    c2.population = 1000;
    
    City *c3 = [[City alloc]init];
    c3.name = @"广州";
    c3.population = 950;
    
    return @[c1,c2,c3];
}

@end









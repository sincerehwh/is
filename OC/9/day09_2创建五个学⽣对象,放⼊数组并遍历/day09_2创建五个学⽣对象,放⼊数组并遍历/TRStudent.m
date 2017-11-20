//
//  TRStudent.m
//  day09_2创建五个学⽣对象,放⼊数组并遍历
//
//  Created by tarena on 15/9/29.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
-(id)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [super init])
    {
        self.name = name;
        self.age = age;
    }
    return self;
}
-(NSString *)description
{
    return [NSString stringWithFormat:@"name:%@,age:%d", self.name, self.age];
}
@end

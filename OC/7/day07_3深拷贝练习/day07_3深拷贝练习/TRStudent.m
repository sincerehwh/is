//
//  TRStudent.m
//  day07_3深拷贝练习
//
//  Created by tarena on 15/9/24.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
-(id)initWithAge:(int)age andGender:(char)gender andSalary:(double)salary
{
    if (self = [super init])
    {
        self.age = age;
        self.gender = gender;
        self.salary = salary;
    }
    return self;
}
-(void)printInfo
{
    NSLog(@"年龄:%d,性别:%c,奖学金:%g", self.age, self.gender, self.salary);
}
-(id)copyWithZone:(NSZone *)zone
{
    TRStudent *s = [[TRStudent allocWithZone:zone] initWithAge:self.age andGender:self.gender andSalary:self.salary];
    return s;
}
@end

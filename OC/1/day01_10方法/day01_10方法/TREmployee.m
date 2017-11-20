//
//  TREmployee.m
//  day01_8分割文件
//
//  Created by tarena on 15/9/17.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TREmployee.h"

@implementation TREmployee

-(void)setName:(NSString *)name andAge:(int)age andGender:(BOOL)gender andSalary:(double)salary
{
    _name = name;
    _age = age;
    _gender = gender;
    _salary = salary;
}

-(void)setName:(NSString *)name
{
    _name = name;
}

-(NSString *)name
{
    return _name;
}

-(void)setAge:(int)age
{
    _age = age;
}

-(int)age
{
    return _age;
}

-(void)setGender:(BOOL)gender
{
    _gender = gender;
}

-(BOOL)gender
{
    return _gender;
}

-(void)setSalary:(double)salary
{
    _salary = salary;
}

-(double)salary
{
    return _salary;
}

-(void)show
{
    NSLog(@"姓名:%@,年龄:%d,性别:%@,薪资:%g", _name, _age, _gender?@"男":@"女", _salary);
}

@end

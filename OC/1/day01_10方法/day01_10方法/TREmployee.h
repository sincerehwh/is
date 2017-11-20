//
//  TREmployee.h
//  day01_8分割文件
//
//  Created by tarena on 15/9/17.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TREmployee : NSObject
{
    NSString* _name;
    int _age;
    BOOL _gender;
    double _salary;
}
-(void)setName:(NSString*)name andAge:(int)age andGender:(BOOL)gender andSalary:(double)salary;//带多个参数的方法 
-(void)setName:(NSString*)name;//带一个参数的方法
-(NSString*)name;//无参方法
-(void)setAge:(int)age;
-(int)age;
-(void)setGender:(BOOL)gender;
-(BOOL)gender;
-(void)setSalary:(double)salary;
-(double)salary;
-(void)show;
@end
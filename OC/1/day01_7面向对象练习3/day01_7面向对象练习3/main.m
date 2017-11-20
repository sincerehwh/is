//
//  main.m
//  day01_7面向对象练习3
//
//  Created by tarena on 15/9/17.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

//老师的名字/课程名/学生人数
@interface TRTeacher : NSObject
{
    NSString* _name;
    NSString* _courseName;
    int _stuNumber;
}
-(void)setName:(NSString*)name;
-(NSString*)name;
-(void)setCourseName:(NSString*)courseName;
-(NSString*)courseName;
-(void)setStuNumber:(int)stuNumber;
-(int)stuNumber;
-(void)show;
@end
@implementation TRTeacher

-(void)setName:(NSString *)name
{
    _name = name;
}

-(NSString *)name
{
    return _name;
}

-(void)setCourseName:(NSString *)courseName
{
    _courseName = courseName;
}

-(NSString *)courseName
{
    return _courseName;
}

-(void)setStuNumber:(int)stuNumber
{
    _stuNumber = stuNumber;
}

-(int)stuNumber
{
    return _stuNumber;
}

-(void)show
{
    NSLog(@"教师%@教%@,班里有%d个学生", _name,_courseName, _stuNumber);
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRTeacher* t = [TRTeacher alloc];
        [t setName:@"张三"];
        [t setCourseName:@"法语"];
        [t setStuNumber:20];
        [t show];
        
    }
    return 0;
}

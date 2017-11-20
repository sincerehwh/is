//
//  TRStudent.m
//  day01_9分割文件练习
//
//  Created by tarena on 15/9/17.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}
-(void)setID:(int)ID
{
    _ID = ID;
}
-(int)ID
{
    return _ID;
}
-(void)setAddress:(NSString *)address
{
    _address = address;
}
-(NSString *)address
{
    return _address;
}
-(void)setCScore:(int)cScore
{
    _cScore = cScore;
}
-(int)cScore
{
    return  _cScore;
}
-(void)show
{
    NSLog(@"姓名:%@,学号:%d,家庭住址:%@,C语言成绩:%d", _name, _ID, _address, _cScore);
}
@end

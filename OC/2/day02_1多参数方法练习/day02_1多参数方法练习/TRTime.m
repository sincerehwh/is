//
//  TRTime.m
//  day02_1多参数方法练习
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRTime.h"

@implementation TRTime
-(void)sethour:(int)hour andMinute:(int)minute andSecond:(int)second
{
    _hour = hour;
    _minute = minute;
    _second = second;
}

-(void)setHour:(int)hour
{
    _hour = hour;
}
-(int)hour
{
    return  _hour;
}
-(void)setMinute:(int)minute
{
    _minute = minute;
}
-(int)minute
{
    return _minute;
}
-(void)setSecond:(int)second
{
    _second = second;
}
-(int)second
{
    return _second;
}
-(void)show
{
    NSLog(@"%d:%d:%d", _hour, _minute, _second);
}
-(int)seconds//不在.h文件中声明,直接定义,则该函数为私有函数
{
    return _hour * 60 * 60 + _minute * 60 + _second;
}
-(void)printSeconds
{
    NSLog(@"总秒数:%d", [self seconds]);
}
@end

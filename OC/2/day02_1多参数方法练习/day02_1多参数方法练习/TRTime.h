//
//  TRTime.h
//  day02_1多参数方法练习
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRTime : NSObject
{
    int _hour;
    int _minute;
    int _second;
}
-(void)sethour:(int)hour andMinute:(int)minute andSecond:(int)second;
-(void)setHour:(int)hour;
-(int)hour;
-(void)setMinute:(int)minute;
-(int)minute;
-(void)setSecond:(int)second;
-(int)second;
-(void)show;
-(void)printSeconds;
@end

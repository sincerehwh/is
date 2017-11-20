//
//  main.m
//  day02_1多参数方法练习
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRTime.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRTime *t = [TRTime alloc];
        [t sethour:10 andMinute:20 andSecond:30];
        [t show];
        //[t seconds];//seconds是类TRTime的私有函数,不能在类外使用
        [t printSeconds];
    }
    return 0;
}

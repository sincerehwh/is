//
//  main.m
//  day03_10⾃动释放池
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        TRPoint *p = [TRPoint pointWithX:10 andY:20];//autorelease能将对象p放入自动释放池
        NSLog(@"-------1-------");
        //[p release];
    }//挡自动释放池的作用域结束时,将把其中的所有对象都释放
    NSLog(@"--------2----------");
    return 0;
}

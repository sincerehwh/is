//
//  main.m
//  day03_8引用计数
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRPoint.h"
#import "TRCircle.h"

void test1()
{
    TRPoint *p = [TRPoint pointWithX:10 andY:20];
    NSLog(@"%lu", [p retainCount]);//方法retainCount返回一个对象中的引用计数器的值
    [p release];//方法release的作用等同于free,并不会将指针p赋成nil
    p = nil;//建议在指针p指向的空间被释放以后,将指针p赋成nil
    [p show];
}

void test2()
{
    TRPoint *p = [TRPoint pointWithX:30 andY:40];
    NSLog(@"%lu", [p retainCount]);//1
    TRPoint *p1 = p;//当一个新的指针p1指向对象p时,必须调用retain方法使引用计数器的值加1
    NSLog(@"%lu", [p1 retainCount]);//1
    [p1 retain];//方法retain被调用时,引用计数器加1
    NSLog(@"%lu", [p1 retainCount]);//2
    TRPoint* p2 = p1;
    [p2 retain];
    NSLog(@"%lu", [p2 retainCount]);//3
    [p2 release];//先将引用计数器的值减1,如果引用计数器的值为0,则先调用dealloc再释放空间;否则,直接退出
    NSLog(@"%lu", [p2 retainCount]);//2
    [p release];
    NSLog(@"%lu", [p1 retainCount]);//1
    [p release];
    p = nil;
    NSLog(@"%lu", [p retainCount]);//0
}

void test3()
{
    TRPoint *center = [TRPoint pointWithX:50 andY:60];
    TRCircle *cir = [[TRCircle alloc] init];
    cir.center = center;
    //
    [cir setCenter:center];
    cir.r = 5.0;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test2();
    }
    return 0;
}

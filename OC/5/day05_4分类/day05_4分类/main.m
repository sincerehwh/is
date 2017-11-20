//
//  main.m
//  day05_4分类
//
//  Created by tarena on 15/9/22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRFraction.h"
#import "TRFraction+Initializer.h"
#import "TRFraction+math.h"

void test1()
{
    TRFraction *f = [TRFraction fractionWithN:1 andD:3];
    [f show];
}

void test2()
{
    TRFraction *f1 = [TRFraction fractionWithN:1 andD:3];
    TRFraction *f2 = [TRFraction fractionWithN:1 andD:2];
    TRFraction *f3;
    f3 = [f1 add:f2];
    [f3 show];
    f3 = [f1 sub:f2];
    [f3 show];
    f3 = [f1 mul:f2];
    [f3 show];
    f3 = [f1 div:f2];
    [f3 show];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test2();
    }
    return 0;
}

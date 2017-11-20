//
//  main.m
//  day03_7单例模式练习
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRChild.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRChild *c = [TRChild sharedChild];
        c.name = @"小明";
        c.age = 3;
        
        TRChild *c1 = [TRChild sharedChild];
        [c1 show];
        c1.name = @"小强";
        c1.age = 1;
        [c1 show];
        [c show];
    }
    return 0;
}

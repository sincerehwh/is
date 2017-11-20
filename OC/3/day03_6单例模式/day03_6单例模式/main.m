//
//  main.m
//  day03_6单例模式
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRSingleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRSingleton *s = [TRSingleton sharedSingleton];
        NSLog(@"s=%p", s);
        TRSingleton *s1 = [TRSingleton sharedSingleton];
        NSLog(@"s1=%p", s1);
    }
    return 0;
}

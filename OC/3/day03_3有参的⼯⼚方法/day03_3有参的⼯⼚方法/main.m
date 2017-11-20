//
//  main.m
//  day03_3有参的⼯⼚方法
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRPoint *p = [TRPoint pointWithX:10 andY:20];
        [p show];
        
        TRPoint *p1 = [TRPoint pointWithX:30 andY:40];
        [p1 show];
    }
    return 0;
}

//
//  main.m
//  day02_8无参初始化⽅法练习
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRPoint *p = [[TRPoint alloc] init];
        [p show];
        
        TRPoint *p1 = [[TRPoint alloc] init];
        [p1 show];
    }
    return 0;
}

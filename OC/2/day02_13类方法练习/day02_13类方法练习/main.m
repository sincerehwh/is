//
//  main.m
//  day02_13类方法练习
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRStudent * stu = [[TRStudent alloc]init];
        stu.name = @"李四";
        [stu show];
        [TRStudent fun];
    }
    return 0;
}

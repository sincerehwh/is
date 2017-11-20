//
//  main.m
//  day02_6Student
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRStudent *stu = [TRStudent alloc];
        stu.name = @"李四";
        stu.gender = YES;
        stu.age = 18;
        stu.salary = 2000;
        [stu show];
    }
    return 0;
}

//
//  main.m
//  day01_8分割文件
//
//  Created by tarena on 15/9/17.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TREmployee.h"
//雇员有姓名/年龄/性别/薪资
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TREmployee *e = [TREmployee alloc];
        [e setName:@"张三"];
        [e setAge:28];
        [e setGender:YES];
        [e setSalary:6000];
        [e show];
    }
    return 0;
}

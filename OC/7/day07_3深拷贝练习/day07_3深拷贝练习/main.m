//
//  main.m
//  day07_3深拷贝练习
//
//  Created by tarena on 15/9/24.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRStudent *stu = [[TRStudent alloc] initWithAge:23 andGender:'M' andSalary:0];
        [stu printInfo];
        
        TRStudent *stu1 = [stu copy];
        [stu1 printInfo];
    }
    return 0;
}

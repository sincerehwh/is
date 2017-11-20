//
//  main.m
//  day03_5工厂方法练习
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRStudent *stu = [TRStudent studentWithName:@"张三" andGender:YES andAge:30 andAddress:@"江苏南京"];
        [stu show];
    }
    return 0;
}

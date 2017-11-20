//
//  main.m
//  day07_2协议选择器
//
//  Created by tarena on 15/9/24.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"
#import "TRTeacher.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRStudent *stu = [[TRStudent alloc] initWithName:@"张三" andID:1000];
        
        Protocol *p = @protocol(NSCopying);
        if ([TRStudent conformsToProtocol:p] == YES)
        {
            TRStudent *stu1 = [stu copy];
            [stu1 study];
        }
        
        TRTeacher *t = [[TRTeacher alloc]initWithName:@"李四" andCourse:@"计算机原理"];
        if ([TRTeacher conformsToProtocol:@protocol(NSCopying)] == YES)
        {
            TRTeacher *t1 = [t copy];
            [t1 teaching];
        }
    }
    return 0;
}

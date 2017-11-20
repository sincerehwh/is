//
//  main.m
//  day09_2创建五个学⽣对象,放⼊数组并遍历
//
//  Created by tarena on 15/9/29.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRStudent *s1 = [[TRStudent alloc]initWithName:@"zhangsan" andAge:18];
        TRStudent *s2 = [[TRStudent alloc]initWithName:@"lisi" andAge:25];
        TRStudent *s3 = [[TRStudent alloc]initWithName:@"wangwu" andAge:19];
        TRStudent *s4 = [[TRStudent alloc]initWithName:@"zhaoliu" andAge:22];
        TRStudent *s5 = [[TRStudent alloc]initWithName:@"qianqi" andAge:20];
        
        NSMutableArray *stu = [NSMutableArray arrayWithObjects:s1, s2, s3, s4, s5, nil];
        for (int i = 0; i < [stu count]; i++)
        {
            NSLog(@"%@", stu[i]);
        }
    }
    return 0;
}

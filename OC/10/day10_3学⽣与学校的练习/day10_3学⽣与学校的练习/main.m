//
//  main.m
//  day10_3学⽣与学校的练习
//
//  Created by tarena on 15/9/30.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRStudent *stu1 = [[TRStudent alloc] initWithName:@"zhangsan" andAge:18];
        TRStudent *stu2 = [[TRStudent alloc] initWithName:@"lisi" andAge:22];
        TRStudent *stu3 = [[TRStudent alloc] initWithName:@"wangwu" andAge:20];
        TRStudent *stu4 = [[TRStudent alloc] initWithName:@"zhaoliu" andAge:23];
        TRStudent *stu5 = [[TRStudent alloc] initWithName:@"qianqi" andAge:18];
        TRStudent *stu6 = [[TRStudent alloc] initWithName:@"guanyu" andAge:35];
        TRStudent *stu7 = [[TRStudent alloc] initWithName:@"zhangfei" andAge:32];
        TRStudent *stu8 = [[TRStudent alloc] initWithName:@"zhaoyun" andAge:30];
        
        NSDictionary *class1 = @{@"1":stu1, @"2":stu2};
        NSDictionary *class2 = @{@"1":stu3, @"2":stu4};
        NSDictionary *class3 = @{@"1":stu5, @"2":stu6};
        NSDictionary *class4 = @{@"1":stu7, @"2":stu8};
        
        NSDictionary *college1 = @{@"1":class1, @"2":class2};
        NSDictionary *college2 = @{@"1":class3, @"2":class4};
        
        NSDictionary *tarena = @{@"1":college1, @"2":college2};
        
        for (NSString *college in tarena)
        {
            for (NSString *class in tarena[college])
            {
                for (NSString *stu in (tarena[college])[class])
                {
                    NSLog(@"%@=%@", stu, tarena[college][class][stu]);
                }
            }
        }
    }
    return 0;
}

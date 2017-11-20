//
//  main.m
//  day09_4学⽣与学校的练习
//
//  Created by tarena on 15/9/29.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRStudent *stu1 = [[TRStudent alloc] initWithName:@"zhangsan" andAge:18];
        TRStudent *stu2 = [[TRStudent alloc] initWithName:@"lisi" andAge:22];
        TRStudent *stu3 = [[TRStudent alloc] initWithName:@"wangwu" andAge:19];
        TRStudent *stu4 = [[TRStudent alloc] initWithName:@"zhaoliu" andAge:20];
        TRStudent *stu5 = [[TRStudent alloc] initWithName:@"qianqi" andAge:18];
        TRStudent *stu6 = [[TRStudent alloc] initWithName:@"guanyu" andAge:35];
        TRStudent *stu7 = [[TRStudent alloc] initWithName:@"zhangfei" andAge:32];
        TRStudent *stu8 = [[TRStudent alloc] initWithName:@"zhaoyun" andAge:30];
        
        NSSet *class1 = [NSSet setWithObjects:stu1, stu2, nil];
        NSSet *class2 = [NSSet setWithObjects:stu3, stu4, nil];
        NSSet *class3 = [NSSet setWithObjects:stu5, stu6, nil];
        NSSet *class4 = [NSSet setWithObjects:stu7, stu8, nil];
        
        NSSet *college1 = [NSSet setWithObjects:class1, class2, nil];
        NSSet *college2 = [NSSet setWithObjects:class3, class4, nil];
        
        NSSet *tarena = [NSSet setWithObjects:college1, college2, nil];
        
        NSEnumerator *e1 = [tarena objectEnumerator];
        NSSet *college;
        while (college = [e1 nextObject])
        {
            NSEnumerator *e2 = [college objectEnumerator];
            NSSet *class;
            while (class = [e2 nextObject])
            {
                NSEnumerator *e3 = [class objectEnumerator];
                TRStudent *stu;
                while (stu = [e3 nextObject])
                {
                    //1.遍历所有学生信息
                    //NSLog(@"%@", stu);
                    //2.只显示zhangsan的信息
                    //if ([stu.name isEqualToString:@"zhangsan"] == YES)
                        //NSLog(@"%@", stu);
                    //3.只显示年龄为18岁的学生信息
                    if(stu.age == 18)
                    {
                        NSLog(@"%@", stu);
                    }
                }
            }
        }
    }
    return 0;
}

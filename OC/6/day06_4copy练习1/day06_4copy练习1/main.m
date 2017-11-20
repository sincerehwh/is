//
//  main.m
//  day06_4copy练习1
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRBook *b = [[TRBook alloc]initWithPrice:18];
        TRStudent *stu = [[TRStudent alloc]init];
        stu.age = 23;
        stu.book = b;//[stu setBook:b];
        [stu study];
        
        TRBook *b1 = [[TRBook alloc]initWithPrice:30];
        stu.book = b1;
        [stu study];
//        NSLog(@"%@", b);
//        NSLog(@"%@", stu.book);
    }
    return 0;
}

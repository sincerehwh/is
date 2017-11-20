//
//  main.m
//  day08_6数组排序
//
//  Created by tarena on 15/9/28.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRInteger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRInteger *i1 = [[TRInteger alloc] init];
        i1.integer = 10;
        TRInteger *i2 = [[TRInteger alloc] init];
        i2.integer = 3;
        TRInteger *i3 = [[TRInteger alloc] init];
        i3.integer = 8;
        TRInteger *i4 = [[TRInteger alloc] init];
        i4.integer = 17;
        TRInteger *i5 = [[TRInteger alloc] init];
        i5.integer = 5;
        
        NSArray *i = @[i1, i2, i3, i4, i5];
        NSArray *sorted = [i sortedArrayUsingSelector:@selector(compareInt:)];
        NSLog(@"%@", sorted);
    }
    return 0;
}

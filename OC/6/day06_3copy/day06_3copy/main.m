//
//  main.m
//  day06_3copy
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRInteger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRInteger *i = [[TRInteger alloc] initWithInteger:10];
        [i show];
        TRInteger *i1 = [i copy];
        [i1 show];
    }
    return 0;
}

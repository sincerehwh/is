//
//  main.m
//  day03_4有参的⼯⼚方法练习
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRInteger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRInteger *i = [TRInteger integerWithX:10];
        [i show];
        
        TRInteger *i1 = [TRInteger integerWithX:20];
        [i1 show];
    }
    return 0;
}

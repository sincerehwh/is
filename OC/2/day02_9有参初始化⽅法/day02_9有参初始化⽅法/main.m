//
//  main.m
//  day02_9有参初始化⽅法
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRInteger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRInteger *i = [[TRInteger alloc] initWithInteger:10];
        [i show];
        
        TRInteger *i1 = [[TRInteger alloc] initWithInteger:20];
        [i1 show];
    }
    return 0;
}

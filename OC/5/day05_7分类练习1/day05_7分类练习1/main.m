//
//  main.m
//  day05_7分类练习1
//
//  Created by tarena on 15/9/22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRMyClass.h"
#import "TRMyClass+addMethod.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRMyClass *m = [[TRMyClass alloc] init];
        [m method1];
        [m method2];
    }
    return 0;
}

//
//  main.m
//  day06_2ARC与MRC混编
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRRect.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRPoint *p = [[TRPoint alloc] initWithX:10 andY:20];
        TRRect *rect = [[TRRect alloc] initWithOrigin:p andWidth:30 andHeight:40];
        [rect show];
    }
    return 0;
}

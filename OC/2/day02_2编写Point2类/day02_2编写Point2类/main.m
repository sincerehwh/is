//
//  main.m
//  day02_2编写Point2类
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRPoint2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRPoint2 *p = [TRPoint2 alloc];
        [p setX:10];
        [p setY:20];
        [p show];
        [p moveUp];
        [p moveDown];
        [p moveLeft];
        [p moveRight];
    }
    return 0;
}

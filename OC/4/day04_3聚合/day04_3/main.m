//
//  main.m
//  day04_3
//
//  Created by tarena on 15/9/21.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRComputer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRMouse * mouse = [[TRMouse alloc] init];
        {
            TRComputer * com = [[TRComputer alloc] init];
            com.mouse = mouse;
        }
        NSLog(@"-------------");
    }
    return 0;
}

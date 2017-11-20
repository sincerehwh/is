//
//  main.m
//  day04_9MRC练习
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRComputer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRCPU *cpu = [[TRCPU alloc] init];
        cpu.name = @"Intel i3";
        cpu.Hz = 2.8;
        
        TRMEM *mem = [[TRMEM alloc] init];
        mem.name = @"KingMax";
        mem.size = 2;
        
        TRComputer *com = [[TRComputer alloc] init];
        com.cpu = cpu;
        com.mem = mem;
        [com playGame];
    }
    return 0;
}

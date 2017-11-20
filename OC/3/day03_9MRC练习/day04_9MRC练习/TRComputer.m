//
//  TRComputer.m
//  day04_9MRC练习
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRComputer.h"

@implementation TRComputer
-(void)playGame
{
    NSLog(@"%@, %g GHz,%@, %d GB size", self.cpu.name, self.cpu.Hz, self.mem.name, self.mem.size);
}
@end

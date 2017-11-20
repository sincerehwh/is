//
//  TRComputer.h
//  day04_9MRC练习
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRCPU.h"
#import "TRMEM.h"

@interface TRComputer : NSObject
@property(retain) TRCPU *cpu;
@property(retain) TRMEM *mem;
-(void)playGame;
@end

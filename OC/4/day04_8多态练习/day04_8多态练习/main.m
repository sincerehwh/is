//
//  main.m
//  day04_8多态练习
//
//  Created by tarena on 15/9/21.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRFeeder.h"
#import "TRTiger.h"
#import "TRHippo.h"
#import "TRHuman.h"
#import "TRGrass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRTiger *tiger = [[TRTiger alloc]initWithName:@"跳跳虎"];
        TRHuman *human = [[TRHuman alloc]initWithName:@"喜洋洋"];
        
        TRFeeder *feeder = [[TRFeeder alloc]init];
        [feeder feedForAnimal:tiger withFood:human];
    }
    return 0;
}

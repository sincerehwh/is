//
//  main.m
//  day04_7编写交通⼯具程序
//
//  Created by tarena on 15/9/21.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRTaxi.h"
#import "TRBus.h"
#import "TRBike.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRTransportation *t;
        t = [[TRTaxi alloc] init];
        [t print];
        t = [[TRBus alloc] init];
        [t print];
        t = [[TRBike alloc] init];
        [t print];
    }
    return 0;
}

//
//  main.m
//  day05_2协议练习
//
//  Created by tarena on 15/9/22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRSuperMan.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id<TRPerson,TRFly> id1 = [[TRSuperMan alloc] init];
        [id1 job];
        [id1 fly];
    }
    return 0;
}

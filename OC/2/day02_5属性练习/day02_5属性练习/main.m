//
//  main.m
//  day02_5属性练习
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRDate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        TRDate *d = [TRDate alloc];
        d.year = 2015;
        d.month = 9;
        d.day = 18;
        [d show];
    }
    return 0;
}

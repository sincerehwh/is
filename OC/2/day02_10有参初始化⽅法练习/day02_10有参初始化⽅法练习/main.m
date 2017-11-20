//
//  main.m
//  day02_10有参初始化⽅法练习
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRPoint *p = [[TRPoint alloc] initWithX:10 andY:20];
        [p show];
        
        id p2 = p;
        
        TRPoint *p1 = [[TRPoint alloc]initWithX:100 andY:50];
        [p1 show];
        p2 = p1;
        
        TRInteger *i = [[TRInteger alloc]init];
        p2 = i;
        
        double d = 0.5;
        p2 = &d;
    }
    return 0;
}

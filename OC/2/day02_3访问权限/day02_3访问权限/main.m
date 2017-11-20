//
//  main.m
//  day02_3访问权限
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRExample.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRExample *e = [TRExample alloc];
        //e->i0 = 10;//i0是保护的
        e->i1 = 20;//i1是公有的
        e->i2 = 30;//i2是包内的
        //e->i3 = 40;//i3是保护的
        //e->i4 = 50;//i4是私有的
        //e->i5 = 60;//i5被定义在.m文件中,是私有的
    }
    return 0;
}

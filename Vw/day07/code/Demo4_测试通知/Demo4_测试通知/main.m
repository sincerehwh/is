//
//  main.m
//  Demo4_测试通知
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Company.h"
#import "VIP.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Company *company = [[Company alloc]init];
        VIP *vip1 = [[VIP alloc]init];
        VIP *vip2 = [[VIP alloc]init];
        
        // company对象发出通知
        [company broadcast];
        
        NSLog(@"Hello, World!");
    }
    return 0;
}

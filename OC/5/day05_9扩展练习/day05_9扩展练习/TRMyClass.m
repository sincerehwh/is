//
//  TRMyClass.m
//  day05_9扩展练习
//
//  Created by tarena on 15/9/22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRMyClass.h"

@interface TRMyClass ()
{
    int age;
}
@property BOOL sex;
-(void)addMethod;
@end

@implementation TRMyClass
-(void)method1
{
    NSLog(@"method1被执行了");
}
-(void)addMethod
{
    NSLog(@"addMethod被执行了");
}
@end

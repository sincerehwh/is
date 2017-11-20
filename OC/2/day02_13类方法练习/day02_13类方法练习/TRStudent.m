//
//  TRStudent.m
//  day02_13类方法练习
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
-(void)show
{
    NSLog(@"姓名:%@", self.name);
}
+(void)fun
{
    NSLog(@"这也是一个类方法");
}
@end

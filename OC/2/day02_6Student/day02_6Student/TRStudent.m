//
//  TRStudent.m
//  day02_6Student
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
-(void)show
{
    NSLog(@"姓名:%@,性别:%@,年龄:%d,奖学金:%g", self.name, self.gender?@"男":@"女", self.age, self.salary);
}
@end

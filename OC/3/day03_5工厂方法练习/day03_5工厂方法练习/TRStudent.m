//
//  TRStudent.m
//  day03_5工厂方法练习
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
-(id)initWithName:(NSString *)name andGender:(BOOL)gender andAge:(int)age andAddress:(NSString *)address
{
    if (self = [super init])
    {
        self.name = name;
        self.gender = gender;
        self.age = age;
        self.address = address;
    }
    return self;
}
+(id)studentWithName:(NSString *)name andGender:(BOOL)gender andAge:(int)age andAddress:(NSString *)address
{
    TRStudent *stu = [[TRStudent alloc] initWithName:name andGender:gender andAge:age andAddress:address];
    return stu;
}
-(void)show
{
    NSLog(@"姓名:%@,性别:%@,年龄:%d,家庭住址:%@", self.name, self.gender?@"男":@"女", self.age, self.address);
}
@end

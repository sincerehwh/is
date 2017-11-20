//
//  TRTeacher.m
//  day06_5类对象
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRTeacher.h"

@implementation TRTeacher
-(id)initWithName:(NSString *)name andCourse:(NSString *)course
{
    if (self = [super init])
    {
        self.name = name;
        self.course = course;
    }
    return self;
}
@end

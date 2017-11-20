//
//  TRStudent.m
//  day06_4copy练习1
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
//-(void)setBook:(TRBook *)book
//{
//    self.book = [book copy];
//}
-(void)study
{
    NSLog(@"年龄为%d的学生正在看价格为%d的书", self.age, self.book.price);
}
@end

//
//  Student.m
//  Demo4_KVC测试工程
//
//  Created by tarena on 15/12/16.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "Student.h"
#import "Book.h"

@implementation Student

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dog = [[Dog alloc]init];
        Book *b1 = [[Book alloc]init];
        b1.bookName = @"语文";
        b1.bookPrice = 35;
        Book *b2 = [[Book alloc]init];
        b2.bookName = @"数学";
        b2.bookPrice = 25;
        self.allBooks = @[b1,b2];
    }
    return  self;
}

@end








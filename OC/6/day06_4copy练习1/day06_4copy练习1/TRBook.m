//
//  TRBook.m
//  day06_4copy练习1
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRBook.h"

@implementation TRBook
-(id)initWithPrice:(int)price
{
    if (self = [super init])
    {
        self.price = price;
    }
    return self;
}
-(void)show
{
    NSLog(@"price:%d", self.price);
}
-(id)copyWithZone:(NSZone *)zone
{
    TRBook *book = [[TRBook allocWithZone:zone]initWithPrice:self.price];
    return book;
}
@end

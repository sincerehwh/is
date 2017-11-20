//
//  Message.m
//  TMessage
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "Message.h"

@implementation Message

+ (NSArray *)demoData
{
    Message *m1 = [[Message alloc]init];
    m1.content = @"这是一段测试文本短一点的";
    m1.fromMe = YES;
    
    Message *m2 = [[Message alloc]init];
    m2.content = @"这是一段测试文本短一点的这是一段测这是一段测这是一段测";
    m2.fromMe = NO;
    
    Message *m3 = [[Message alloc]init];
    m3.content = @"这是一段";
    m3.fromMe = YES;
    
    Message *m4 = [[Message alloc]init];
    m4.content = @"这是一段是一段是一段是一段是一段是一段是一段是一段是一段是一段是一段是一段是一段是一段是一段是一段是一段是一段是一段是一段是一段是一段";
    m4.fromMe = NO;
    
    Message *m5 = [[Message alloc]init];
    m5.content = @"这是一段测试文本短一点的这是一段测这是一段测这是一段测";
    m5.fromMe = NO;
    
    Message *m6 = [[Message alloc]init];
    m6.content = @"这是一段";
    m6.fromMe = YES;
    
    return @[m1,m2,m3,m4,m5,m6];
}

@end









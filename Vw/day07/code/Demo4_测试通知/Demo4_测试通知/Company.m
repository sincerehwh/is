//
//  Company.m
//  Demo4_测试通知
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "Company.h"

@implementation Company

- (void)broadcast
{
    //获取通知中心
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    
    //给通知中心发通知
    // name : 通知的名称
    // object：谁发出的通知
    // userInfo：通知的内容
    [center postNotificationName:@"Update" object:self userInfo:@{@"title":@"芈月传",@"episode":@"第59集"}];
    
}

@end







//
//  VIP.m
//  Demo4_测试通知
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "VIP.h"

@implementation VIP

- (instancetype)init
{
    self = [super init];
    if (self) {
        // 注册对“Update”通知的监听
        // observer:谁想接收通知
        // selector：通知发来，用哪个方法响应
        // name：监听的通知叫什么名
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveNewNotification:) name:@"Update" object:nil];
    }
    return self;
}

//该方法会在接收到通知时自动调用
//参数就是系统封装好的通知对象，通过此参数可以拿到
//发出通知中的userInfo信息
-(void)receiveNewNotification:(NSNotification *)notification
{
    NSDictionary *dict = notification.userInfo;
    NSLog(@"%@更新到了%@",dict[@"title"],dict[@"episode"]);
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}





@end









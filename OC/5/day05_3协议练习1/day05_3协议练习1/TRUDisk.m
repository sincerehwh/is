//
//  TRUDisk.m
//  day05_3协议练习1
//
//  Created by tarena on 15/9/22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRUDisk.h"

@implementation TRUDisk
-(void)read:(int)bytes
{
    NSLog(@"从U盘中读取%d个字节", bytes);
}
-(void)write:(int)bytes
{
    NSLog(@"向U盘中写入%d个字节", bytes);
}
@end

//
//  TRCamera.m
//  day05_3协议练习1
//
//  Created by tarena on 15/9/22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRCamera.h"

@implementation TRCamera
-(void)read:(int)bytes
{
    NSLog(@"从摄像头中读取%d个字节", bytes);
}
@end

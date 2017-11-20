//
//  TRComputer.m
//  day05_3协议练习1
//
//  Created by tarena on 15/9/22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRComputer.h"

@implementation TRComputer
-(void)dataCopyFromUsb1ToUsb2:(int)bytes
{
    [self.usb1 read:bytes];
    [self.usb2 write:bytes];
}
@end

//
//  TRComputer.h
//  day05_3协议练习1
//
//  Created by tarena on 15/9/22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRUSB.h"

@interface TRComputer : NSObject
@property id<TRUSB> usb1;
@property id<TRUSB> usb2;
-(void)dataCopyFromUsb1ToUsb2:(int)bytes;
@end

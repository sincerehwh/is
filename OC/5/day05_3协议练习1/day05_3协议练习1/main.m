//
//  main.m
//  day05_3协议练习1
//
//  Created by tarena on 15/9/22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRUDisk.h"
#import "TRMoveDisk.h"
#import "TRCamera.h"
#import "TRComputer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRComputer *com = [[TRComputer alloc] init];
        TRUDisk *ud = [[TRUDisk alloc]init];
        com.usb1 = ud;
        TRMoveDisk *md = [[TRMoveDisk alloc] init];
        com.usb2 = md;
        [com dataCopyFromUsb1ToUsb2:1024];
        
        TRCamera *camera = [[TRCamera alloc] init];
        com.usb1 = camera;
        [com dataCopyFromUsb1ToUsb2:1024];
    }
    return 0;
}

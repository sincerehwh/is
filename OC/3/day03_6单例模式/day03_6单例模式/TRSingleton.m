//
//  TRSingleton.m
//  day03_6单例模式
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRSingleton.h"

static TRSingleton* single = nil;//定义成静态的是因为single这个全局变量必须限定在本.m文件中

@implementation TRSingleton
+(id)sharedSingleton
{
    if (single == nil)
    {
        single = [[TRSingleton alloc] init];
    }
    return single;
}
@end

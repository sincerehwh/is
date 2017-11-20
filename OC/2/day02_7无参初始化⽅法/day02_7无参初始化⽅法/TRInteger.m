//
//  TRInteger.m
//  day02_7无参初始化⽅法
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRInteger.h"

@implementation TRInteger
-(id)init
{
    if (self = [super init])
    {
        self.integer = 10;
    }
    return self;
}
-(void)show
{
    NSLog(@"%d", self.integer);
}
@end

//
//  TRPoint.m
//  day02_8无参初始化⽅法练习
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRPoint.h"

@implementation TRPoint
-(id)init
{
    if (self = [super init])
    {
        self.x = 10;
        self.y = 20;
    }
    return self;
}
-(void)show
{
    NSLog(@"(%d,%d)", self.x, self.y);
}
@end

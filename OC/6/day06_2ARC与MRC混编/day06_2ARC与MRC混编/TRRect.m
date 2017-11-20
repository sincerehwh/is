//
//  TRRect.m
//  day06_2ARC与MRC混编
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRRect.h"

@implementation TRRect
-(id)initWithOrigin:(TRPoint *)point andWidth:(int)width andHeight:(int)height
{
    if (self = [super init])
    {
        self.point = point;
        self.width = width;
        self.height = height;
    }
    return self;
}
-(void)show
{
    NSLog(@"origin(%d,%d),width:%d,height:%d", self.point.x, self.point.y, self.width, self.height);
}
@end

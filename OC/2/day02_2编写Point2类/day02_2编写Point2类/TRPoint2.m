//
//  TRPoint2.m
//  day02_2编写Point2类
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRPoint2.h"

@implementation TRPoint2
-(void)setX:(int)x
{
    _x = x;
}
-(int)x
{
    return _x;
}
-(void)setY:(int)y
{
    _y = y;
}
-(int)y
{
    return _y;
}
-(void)show
{
    NSLog(@"(%d,%d)", _x, _y);
}
-(void)up
{
    _y++;
}
-(void)left
{
    _x--;
}
-(void)right
{
    _x++;
}
-(void)down
{
    _y--;
}
-(void)moveUp
{
    [self up];
    [self show];
}
-(void)moveDown
{
    [self down];
    [self show];
}
-(void)moveLeft
{
    [self left];
    [self show];
}
-(void)moveRight
{
    [self right];
    [self show];
}
@end

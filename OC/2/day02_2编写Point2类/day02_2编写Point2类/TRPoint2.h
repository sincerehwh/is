//
//  TRPoint2.h
//  day02_2编写Point2类
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRPoint2 : NSObject
{
    int _x;
    int _y;
}
-(void)setX:(int)x;
-(int)x;
-(void)setY:(int)y;
-(int)y;
-(void)show;
-(void)moveUp;
-(void)moveDown;
-(void)moveLeft;
-(void)moveRight;
@end

//
//  TRRect.h
//  day06_6⽐较类信息
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRPoint.h"

@interface TRRect : NSObject
@property (strong) TRPoint* origin;
@property int width;
@property int height;
-(id)initWithOrigin:(TRPoint*)origin andWidth:(int)width andHeight:(int)height;
-(int)area;
-(int)perimeter;
@end

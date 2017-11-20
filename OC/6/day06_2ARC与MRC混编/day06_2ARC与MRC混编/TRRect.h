//
//  TRRect.h
//  day06_2ARC与MRC混编
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRPoint.h"

@interface TRRect : NSObject
@property(strong) TRPoint* point;
@property int width;
@property int height;
-(id)initWithOrigin:(TRPoint*)point andWidth:(int)width andHeight:(int)height;
-(void)show;
@end

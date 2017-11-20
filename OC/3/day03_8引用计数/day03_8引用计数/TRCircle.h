//
//  TRCircle.h
//  day03_8引用计数
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRPoint.h"

@interface TRCircle : NSObject
@property double r;
@property(retain) TRPoint* center;//参数retain能自动在setter函数中添加retain方法
@end

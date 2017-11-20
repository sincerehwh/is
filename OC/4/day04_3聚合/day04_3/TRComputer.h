//
//  TRComputer.h
//  day04_3
//
//  Created by tarena on 15/9/21.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRMouse.h"

@interface TRComputer : NSObject
@property TRMouse* mouse;//聚合是两个类的弱关系,所以只能用属性,不能用成员变量
@end

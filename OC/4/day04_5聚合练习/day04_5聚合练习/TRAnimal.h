//
//  TRAnimal.h
//  day04_5聚合练习
//
//  Created by tarena on 15/9/21.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRHead.h"
#import "TRLimb.h"
#import "TRTruck.h"

@interface TRAnimal : NSObject
@property TRHead* head;
@property TRLimb* limb;
@property TRTruck* truck;
@end

//
//  TRAnimal.h
//  day04_4组合练习
//
//  Created by tarena on 15/9/21.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRHead.h"
#import "TRLimb.h"
#import "TRTruck.h"

@interface TRAnimal : NSObject
{
    TRHead *head;
    TRLimb *limb;
    TRTruck *truck;
}
@end

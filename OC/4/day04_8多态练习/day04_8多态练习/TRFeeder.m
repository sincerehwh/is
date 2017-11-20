//
//  TRFeeder.m
//  day04_8多态练习
//
//  Created by tarena on 15/9/21.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRFeeder.h"

@implementation TRFeeder
-(void)feedForAnimal:(TRAnimal *)animal withFood:(TRFood *)food
{
    [animal eat:food];
}
@end

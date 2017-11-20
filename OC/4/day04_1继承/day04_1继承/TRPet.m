//
//  TRPet.m
//  day04_1继承
//
//  Created by tarena on 15/9/21.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRPet.h"

@implementation TRPet
-(void)eat
{
    NSLog(@"毛绒玩具狗%@不会吃东西", self.name);
}
-(void)bark
{
    for (int i = 0; i < 5; i++)
    {
        [super bark];
    }
}
@end

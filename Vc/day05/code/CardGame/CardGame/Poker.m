//
//  Poker.m
//  CardGame
//
//  Created by tarena on 15/12/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "Poker.h"
#import "Card.h"

@implementation Poker

- (instancetype)init
{
    self = [super init];
    if (self) {
        //创建数组的空间
        self.allCards = [NSMutableArray array];
        //初始化52个card对象，放入到数组中
        NSArray *suits = [Card allSuits];
        NSArray *ranks = [Card allRanks];
        for (NSString *suit in suits) {
            for (NSString *rank in ranks) {
                //依据遍历到得花色和大小创建出
                //一个card对象
                Card *card = [[Card alloc]initWithSuit:suit andRank:rank];
                //添加到数组中
                [self.allCards addObject:card];
            }
        }
        
    }
    return self;
}




@end








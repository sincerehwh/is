//
//  Game.m
//  CardGame
//
//  Created by tarena on 15/12/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "Game.h"
#import "Card.h"

@implementation Game

/**
    创建游戏时，随机出指定张数的纸牌对象，并且
    存到allRandomCards数组中
 */
- (instancetype)initWithPoker:(Poker *)poker andNumberOfChoose:(NSInteger)count
{
    self=[super init];
    if (self) {
        //分配数组空间
        self.allRandomCards = [NSMutableArray array];
        //循环count次，每次抽取一张纸牌
        for (NSInteger i=0; i<count; i++)
        {
            //随机出纸牌所在的位置下标
            unsigned int index = arc4random()%poker.allCards.count;
            //根据下标到poker中，找到这张纸牌
            Card *card = poker.allCards[index];
            //将随机到的牌记录到allRandomCards数组中
            [self.allRandomCards addObject:card];
            //抽取过的牌从poker中移除
            [poker.allCards removeObjectAtIndex:index];
        }
        
    }
    return self;
}









@end

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
        self.score = 0;
        
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

/*
 1.先根据传入的index找到选择的牌
 2.如果牌面朝上
    将牌翻成面朝下
 3.否则
    将牌翻成面朝上
    将选中的这张牌与剩下的所有牌中已经翻开，且没有被匹配过得另一张牌进行比对
    如果 两张牌 花色 相同
        修改两张牌为已匹配
    否则，如果，两张牌 大小 相同
        修改两张牌为已匹配
    否则
        将领一张牌翻成背朝上
*/
- (void)chooseCardAtIndex:(NSInteger)index
{
    Card *chooseCard = self.allRandomCards[index];
    if (chooseCard.isFaceUp) {
        chooseCard.faceUp = NO;
    }else{
        chooseCard.faceUp = YES;
        for (int i=0; i<self.allRandomCards.count; i++) {
            if (i!=index) {
                Card *otherCard = self.allRandomCards[i];
                if (otherCard.isFaceUp&&!otherCard.isMatched) {
                    if ([chooseCard.suit isEqualToString:otherCard.suit]) {
                        chooseCard.matched = YES;
                        otherCard.matched = YES;
                        self.score+=1;
                    }else if ([chooseCard.rank isEqualToString:otherCard.rank]){
                        chooseCard.matched = YES;
                        otherCard.matched = YES;
                        self.score+=4;
                    }else{
                        otherCard.faceUp = NO;
                    }
                }
            }
        }
    }
    
}









@end

//
//  Game.h
//  CardGame
//
//  Created by tarena on 15/12/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Poker.h"

/**
 类型：游戏类
 属性：存储随机出来的纸牌对象的数组 allRandomCards
      存储分数的 score 属性
 方法：
    1》游戏开始时，随机出所需的纸牌
    2》按照游戏规则进行比对
*/
@interface Game : NSObject

@property(nonatomic,strong)NSMutableArray *allRandomCards;

@property(nonatomic)NSInteger score;

/**
 根据传入的poker对象，从中随机出countzhang纸牌对象
 将随机出来的纸牌存到allRandomCards数组中
 */
-(instancetype)initWithPoker:(Poker *)poker andNumberOfChoose:(NSInteger)count;


-(void)chooseCardAtIndex:(NSInteger)index;

@end







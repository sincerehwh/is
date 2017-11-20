//
//  Card.h
//  CardGame
//
//  Created by tarena on 15/12/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 类型：纸牌类
 属性：
    花色：suit
    大小：rank
    是否面儿朝上：faceUp
    是否已匹配：matched
*/
 
@interface Card : NSObject

@property(nonatomic,strong)NSString *suit;
@property(nonatomic,strong)NSString *rank;

@property(nonatomic,getter=isFaceUp)BOOL faceUp;
@property(nonatomic,getter=isMatched)BOOL matched;

//增加一个属性，用于记录牌面信息 花色+大小
@property(nonatomic,strong,readonly)NSString *cardInfo;


/* 自定义的构造方法，创建的同时，指定好花色和大小*/
-(instancetype)initWithSuit:(NSString *)suit andRank:(NSString *)rank;


+(NSArray *)allSuits;
+(NSArray *)allRanks;


@end









//
//  Card.m
//  CardGame
//
//  Created by tarena on 15/12/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "Card.h"

@implementation Card

- (instancetype)initWithSuit:(NSString *)suit andRank:(NSString *)rank
{
    self = [super init];
    if (self) {
        self.suit = suit;
        self.rank = rank;
        self.faceUp = YES;
        self.matched = NO;
    }
    return self;
}

/**
 目标:在给suit或rank赋值时，数据非法，则不能存入属性中
 措施:重写属性的setter方法，先判断数据是否合法，再存入到实例变量中
 通用规则：如果符合“一给xxx属性赋值，就要做xxxx”这样的句
   式，那么就可以通过重写setter方法，捕获赋值这个时机，
   实现操作
 */
- (void)setSuit:(NSString *)suit
{
    if([[Card allSuits] containsObject:suit]){
        _suit = suit;
    }
}

- (void)setRank:(NSString *)rank
{
    if ([[Card allRanks] containsObject:rank]) {
        _rank = rank;
    }
}







//返回所有合法的花色
+(NSArray *)allSuits
{
    return @[@"♠️",@"❤️",@"♣️",@"♦️"];
}

//返回所有合法的大小
+ (NSArray *)allRanks
{
    return @[@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}





@end




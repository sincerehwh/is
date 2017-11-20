//
//  Poker.h
//  CardGame
//
//  Created by tarena on 15/12/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 类型：扑克牌类，包含除大小王之外的全部52张纸牌
 属性：
    allCards （数组存储，含有52个card对象）
*/
@interface Poker : NSObject

@property(nonatomic,strong)NSMutableArray *allCards;

@end






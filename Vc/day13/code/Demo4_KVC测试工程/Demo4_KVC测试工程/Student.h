//
//  Student.h
//  Demo4_KVC测试工程
//
//  Created by tarena on 15/12/16.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

@interface Student : NSObject
{
    @private
    float _score;
}
@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)Dog *dog;

@property(nonatomic,strong)NSArray *allBooks;


@end









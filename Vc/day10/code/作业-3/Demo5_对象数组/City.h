//
//  City.h
//  Demo5_对象数组
//
//  Created by tarena on 15/12/10.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property(nonatomic,strong)NSString *name;
@property(nonatomic)NSInteger population;

+(NSArray *)demoData;

@end







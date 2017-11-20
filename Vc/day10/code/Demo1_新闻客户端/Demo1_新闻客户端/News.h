//
//  News.h
//  Demo1_新闻客户端
//
//  Created by tarena on 15/12/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject

@property(nonatomic,strong)NSString *newsImageName;
@property(nonatomic,strong)NSString *title;
@property(nonatomic)NSInteger commentNumber;

+(NSArray *)demoData;

@end






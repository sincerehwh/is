//
//  NewsCell.h
//  Demo1_新闻客户端
//
//  Created by tarena on 15/12/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "News.h"

@interface NewsCell : UITableViewCell

//公开一个属性，存储一个格对应的一条新闻对象
@property(nonatomic,strong)News *news;

@end








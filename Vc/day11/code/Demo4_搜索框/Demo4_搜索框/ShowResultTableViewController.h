//
//  ShowResultTableViewController.h
//  Demo4_搜索框
//
//  Created by tarena on 15/12/14.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
本控制器是被动使用，所以要展示的数据来源，就是使用它的控制器
 来提供，所以，只需要公开一个属性，存储用于展示的数据即可
*/
@interface ShowResultTableViewController : UITableViewController

@property(nonatomic,strong)NSArray *resultData;

@end











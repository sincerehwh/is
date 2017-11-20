//
//  DetailViewController.h
//  Demo5_对象数组
//
//  Created by tarena on 15/12/10.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface DetailViewController : UIViewController

//公开一个属性，用于存储传入的城市对象
@property(nonatomic,strong)City *city;

@end







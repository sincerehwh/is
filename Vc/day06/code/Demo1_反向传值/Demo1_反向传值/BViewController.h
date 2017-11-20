//
//  BViewController.h
//  Demo1_反向传值
//
//  Created by tarena on 15/12/7.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AViewController.h"

@interface BViewController : UIViewController

//公开一个属性，用于存储谁推出BViewController的那个引用
@property(nonatomic,weak)AViewController *backReference;


@end








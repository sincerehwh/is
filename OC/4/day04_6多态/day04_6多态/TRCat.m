//
//  TRCat.m
//  day04_6多态
//
//  Created by tarena on 15/9/21.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRCat.h"

@implementation TRCat
-(void)catchMouse
{
    NSLog(@"猫咪%@正在抓老鼠", self.name);
}
-(void)eat
{
    NSLog(@"猫咪%@正在吃鱼", self.name);
}
@end

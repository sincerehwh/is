//
//  MyLayout.m
//  Demo2_集合视图标准版
//
//  Created by tarena on 15/12/15.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyLayout.h"

@implementation MyLayout

- (instancetype)init
{
    self = [super init];
    if (self) {
        // 设置item的大小
        self.itemSize = CGSizeMake(80, 80);
        // 设置水平滚动
        self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        // 设置最小行间距和格间距为10
        self.minimumInteritemSpacing = 10;//格
        self.minimumLineSpacing = 10;//行
        // 设置内边距
        self.sectionInset = UIEdgeInsetsMake(154, 30, 154, 30);
    }
    return self;
}

@end









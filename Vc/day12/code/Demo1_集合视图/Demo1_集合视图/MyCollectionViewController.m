//
//  MyCollectionViewController.m
//  Demo1_集合视图
//
//  Created by tarena on 15/12/15.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyCollectionViewController.h"

@interface MyCollectionViewController ()

@end

@implementation MyCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
 
}
#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 3;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 9;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor redColor];
    
    //添加显示文字的label
    
    UILabel *label = [cell.contentView viewWithTag:1];
    if (label == nil) {
        label = [[UILabel alloc]init];
        label.frame = cell.bounds;
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:40];
        label.textColor = [UIColor whiteColor];
        label.tag = 1;
        [cell.contentView addSubview:label];
    }
    //设置label上的文字
    label.text = [NSString stringWithFormat:@"%ld",indexPath.item+1];
    
    return cell;
}


@end

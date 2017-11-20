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
        self.itemSize = CGSizeMake(200, 200);
        // 设置水平滚动
        self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        // 设置最小行间距50
        //self.minimumInteritemSpacing = 10;//格
        self.minimumLineSpacing = 50;//行
        // 设置内边距
        self.sectionInset = UIEdgeInsetsMake(60, 0, 60, 0);
    }
    return self;
}

//当滚动发生时，是否要将旧的布局信息设置为无效
//保证新的布局对象信息被应用
-(BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds
{
    return YES;
}

// 此方法已经在父类UICollectionViewFlowLayout中
// 已经实现了，即，父类中这个方法已经能够产生出一堆
// 决定item如何显示的attributes对象了
- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    //1.取父类中找到已经生成的那一堆attributes
    NSArray *allAttributes = [super layoutAttributesForElementsInRect:rect];
    //2.修改里面的数据
    // 确定蓝色的可视化区域的中心点x
    CGFloat blueX = self.collectionView.contentOffset.x+self.collectionView.bounds.size.width*0.5;
    
    // 遍历allAttributes中的每一个item的中心点
    for (UICollectionViewLayoutAttributes *attributes in allAttributes) {
        //得到红色的中心线x
        CGFloat redX = attributes.center.x;
        //计算红蓝之间的间距
        CGFloat distance = redX - blueX;
        //只有当距离在200以内时，再来得到一个大小倍数
        if (ABS(distance)<=200) {
            //distance : 0    ~  200
            //scale:     1.5  ~  1
            CGFloat scale = 1 + 0.5*(1-ABS(distance)/200);
            
            attributes.transform3D = CATransform3DMakeScale(scale, scale, 1);
        }
        
    }
    //3.将改过数据的这一组attributes返回
    return allAttributes;
}


@end









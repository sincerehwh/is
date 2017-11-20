//
//  MyCollectionViewCell.m
//  Demo2_集合视图标准版
//
//  Created by tarena on 15/12/15.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyCollectionViewCell.h"

@interface MyCollectionViewCell()

@property(nonatomic,weak)UIImageView *bgImageView;
@property(nonatomic,weak)UILabel *label;

@end

@implementation MyCollectionViewCell

/*
只要是UIView的子类，在创建时，如果有故事板，则系统调用initWithCoder方法，如果没有故事板，则系统调用initWithFrame方法，init方法内部其实调用的还是initWithFrame方法，只不过参数frame中的数据为0
 
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 在创建cell时，将可以显示内容的子视图
        // 背景视图和标签都创建好，并添加到cell中
        UIImageView *bgImageView = [[UIImageView alloc]init];
        self.backgroundView = bgImageView;
        self.bgImageView = bgImageView;
        // 创建显示文字的标签
        UILabel *label = [[UILabel alloc]init];
        label.frame = self.bounds;
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:40];
        label.textColor = [UIColor whiteColor];
        [self.contentView addSubview:label];
        self.label = label;
    }
    return self;
}

- (void)setBgImageName:(NSString *)bgImageName
{
    _bgImageName = bgImageName;
    self.bgImageView.image = [UIImage imageNamed:bgImageName];
}

- (void)setText:(NSString *)text
{
    _text = text;
    self.label.text = text;
}








@end

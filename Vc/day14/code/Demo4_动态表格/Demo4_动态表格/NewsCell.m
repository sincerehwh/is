//
//  NewsCell.m
//  Demo4_动态表格
//
//  Created by tarena on 15/12/17.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "NewsCell.h"

@interface NewsCell ()
@property (weak, nonatomic) IBOutlet UIImageView *newsImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentNumberLabel;
@end

@implementation NewsCell

- (void)setNews:(News *)news
{
    _news = news;
    self.newsImageView.image = [UIImage imageNamed:news.newsImageName];
    self.titleLabel.text = news.title;
    self.commentNumberLabel.text = [NSString stringWithFormat:@"%ld",news.commentNumber];
}


@end







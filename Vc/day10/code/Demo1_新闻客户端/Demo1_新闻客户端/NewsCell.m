//
//  NewsCell.m
//  Demo1_新闻客户端
//
//  Created by tarena on 15/12/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "NewsCell.h"

@interface NewsCell ()
@property (weak, nonatomic) IBOutlet UIImageView *newsImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentNumberLabel;
@end

@implementation NewsCell

//一给news属性赋值，就将数据显示到控件上
//这种一赋值，就要做。。。。的时机
//可以通过重写setter方法实现
- (void)setNews:(News *)news
{
    _news = news;
    
    // 显示news的各个数据到指定控件上
    self.newsImageView.image = [UIImage imageNamed:news.newsImageName];
    self.titleLabel.text = news.title;
    self.commentNumberLabel.text = [NSString stringWithFormat:@"%ld",news.commentNumber];
    
}



@end

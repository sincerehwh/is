//
//  MusicCell.m
//  作业-音乐列表
//
//  Created by tarena on 15/12/18.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MusicCell.h"

@interface MusicCell ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *durationLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;

@property (weak, nonatomic) IBOutlet UIImageView *hqImageView;
@property (weak, nonatomic) IBOutlet UIImageView *downloadedImageView;
@end

@implementation MusicCell


- (void)setMusic:(TRMusic *)music
{
    _music = music;
    
    self.nameLabel.text = music.name;
    self.durationLabel.text = [NSString stringWithFormat:@"%ld:%02ld",(NSInteger)music.duration/60,(NSInteger)music.duration%60];
    self.artistLabel.text = [[music.artist stringByAppendingString:@" - "] stringByAppendingString:music.album];
    self.downloadedImageView.hidden = !music.downloaded;
    self.hqImageView.hidden = !music.highQuality;
}


//cell对自己内部的子视图进行布局
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //先来读取下载图片框的x
    CGFloat x = self.downloadedImageView.frame.origin.x;
    
    //判断x这个位置是否可用
    if (self.music.downloaded) {
        x+=20;
    }
    
    //如果是高清版，则将第一个可用的位置给hq
    if (self.music.highQuality) {
        CGRect rect = self.hqImageView.frame;
        rect.origin.x = x;
        self.hqImageView.frame = rect;
        //计算下一个可用的位置
        x+=20;
    }
    
    CGRect frame = self.artistLabel.frame;
    frame.origin.x = x;
    self.artistLabel.frame = frame;
    
}






@end

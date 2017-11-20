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






@end

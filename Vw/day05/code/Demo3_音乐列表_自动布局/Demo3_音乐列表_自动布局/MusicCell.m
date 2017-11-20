//
//  MusicCell.m
//  Demo3_音乐列表_自动布局
//
//  Created by tarena on 15/12/24.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MusicCell.h"

@interface MusicCell ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *durationLabel;
@property (weak, nonatomic) IBOutlet UIImageView *downloadedImageView;
@property (weak, nonatomic) IBOutlet UIImageView *hqImageView;
@property (weak, nonatomic) IBOutlet UILabel *artistNameLabel;
//为了修改故事板中自动添加的约束对象
//需要找到生成的约束对象，并连线
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *hqLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *artistLeftConstraint;


@end

@implementation MusicCell

- (void)setMusic:(TRMusic *)music
{
    _music = music;
    
    self.nameLabel.text = music.name;
    self.durationLabel.text = [NSString stringWithFormat:@"%ld:%02ld",(NSInteger)music.duration/60,(NSInteger)music.duration%60];
    self.artistNameLabel.text = [[music.artist stringByAppendingString:@" - "] stringByAppendingString:music.album];
    self.downloadedImageView.hidden = !music.downloaded;
    self.hqImageView.hidden = !music.highQuality;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat x = 25;
    
    if (self.music.downloaded) {
        x = 45;
    }
    
    if (self.music.highQuality) {
        self.hqLeftConstraint.constant = x;
        x += 20;
    }
    
    self.artistLeftConstraint.constant = x;
    
}



@end








//
//  ViewController.m
//  Demo2_切片
//
//  Created by tarena on 15/12/18.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.slider setMaximumTrackImage:[UIImage imageNamed:@"playing_volumn_slide_foreground"] forState:UIControlStateNormal];
    [self.slider setMinimumTrackImage:[UIImage imageNamed:@"playing_volumn_slide_bg"] forState:UIControlStateNormal];
    [self.slider setThumbImage:[UIImage imageNamed:@"playing_volumn_slide_sound_icon"] forState:UIControlStateNormal];
    
    //使用代码切气泡后赋给图片框
    UIImage *popImage = [[UIImage imageNamed:@"message_i"] resizableImageWithCapInsets:UIEdgeInsetsMake(16, 16, 16, 30) resizingMode:UIImageResizingModeStretch];
    self.imageView.image = popImage;
    
    
}



@end

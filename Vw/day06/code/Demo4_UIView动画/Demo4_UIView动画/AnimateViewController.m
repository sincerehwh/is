//
//  AnimateViewController.m
//  Demo4_UIView动画
//
//  Created by tarena on 15/12/28.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AnimateViewController.h"

@interface AnimateViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation AnimateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //存储label和图片的结束center
    CGPoint endCenterOfLabel = self.label.center;
    CGPoint endCenterOfImage = self.imageView.center;
    
    //修改label和图片的中心点，设置为屏幕外的起始位置
    CGPoint startCenterOfLabel = CGPointMake(-self.label.bounds.size.width*0.5, endCenterOfLabel.y);
    self.label.center = startCenterOfLabel;
    
    CGPoint startCenterOfImage = CGPointMake(endCenterOfImage.x, self.view.bounds.size.height+self.imageView.bounds.size.height*0.5);
    self.imageView.center = startCenterOfImage;
    
    [UIView animateWithDuration:1.5 animations:^{
        self.label.center = endCenterOfLabel;
        self.imageView.center = endCenterOfImage;
    }];
    
    
}

@end

//
//  ViewController.m
//  Demo2_UIImage动画
//
//  Created by tarena on 15/12/28.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //帧率为30
    UIImage *image = [UIImage animatedImageNamed:@"ship-anim" duration:5*1/30.0];
    self.imageView.image = image;
}



@end

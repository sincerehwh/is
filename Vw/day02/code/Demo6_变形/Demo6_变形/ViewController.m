//
//  ViewController.m
//  Demo6_变形
//
//  Created by tarena on 15/12/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


// 位移变形
- (IBAction)translation:(id)sender
{
    //self.imageView.transform = CGAffineTransformMakeTranslation(20, 20);
    self.imageView.transform = CGAffineTransformTranslate(self.imageView.transform, 20, 20);
}

// 缩放变形
- (IBAction)scale:(id)sender {
    //self.imageView.transform = CGAffineTransformMakeScale(1.1, 1.1);
    self.imageView.transform = CGAffineTransformScale(self.imageView.transform, 1.1, 1.1);
}

// 旋转变形
- (IBAction)rotation:(id)sender
{
    //self.imageView.transform = CGAffineTransformMakeRotation(M_PI_4);
    self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, M_PI_4);
}



@end

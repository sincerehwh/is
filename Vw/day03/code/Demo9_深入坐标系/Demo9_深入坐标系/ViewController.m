//
//  ViewController.m
//  Demo9_深入坐标系
//
//  Created by tarena on 15/12/22.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self printInfo];
}

- (IBAction)changeFrame:(id)sender
{
    CGRect frame = self.imageView.frame;
    frame.origin.x +=4;
    frame.origin.y +=4;
    frame.size.width +=4;
    frame.size.height +=4;
    self.imageView.frame = frame;
    [self printInfo];
}

- (IBAction)changeBounds:(id)sender
{
    CGRect bounds = self.imageView.bounds;
    bounds.origin.x +=4;
    bounds.origin.y +=4;
    bounds.size.width +=4;
    bounds.size.height +=4;
    self.imageView.bounds = bounds;
    [self printInfo];
}

- (IBAction)changeCenter:(id)sender
{
    CGPoint center = self.imageView.center;
    center.x +=4;
    center.y +=4;
    self.imageView.center = center;
    [self printInfo];
}


- (IBAction)changeTransform:(id)sender
{
    self.imageView.transform = CGAffineTransformTranslate(self.imageView.transform, 4, 4);
    self.imageView.transform = CGAffineTransformScale(self.imageView.transform, 1.1, 1.1);
    self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, M_PI_4);
    [self printInfo];
}

-(void)printInfo
{
    NSLog(@"\nframe:%@\nbounds:%@\ncenter:%@\ntransform:%@",NSStringFromCGRect(self.imageView.frame),
          NSStringFromCGRect(self.imageView.bounds),
          NSStringFromCGPoint(self.imageView.center),
          NSStringFromCGAffineTransform(self.imageView.transform));
}




@end

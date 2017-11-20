//
//  MyViewController.m
//  Demo5_绘制图片
//
//  Created by tarena on 15/12/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 申请一块临时的画布
    //opaque：YES 代表不透明   NO 代表透明
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(180, 180), NO, 1);
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 180, 180)];
    [path addClip];
    UIImage *image = [UIImage  imageNamed:@"eqi"];
    [image drawInRect:CGRectMake(0, 0, 180, 180)];
    // 将画布中的图像另存成一个image对象
    UIImage *newHeaderImage = UIGraphicsGetImageFromCurrentImageContext();
    self.imageView.image = newHeaderImage;
    UIGraphicsEndImageContext();
    
}



@end

//
//  MyViewController.m
//  Demo1_ImageView
//
//  Created by tarena on 15/12/8.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@property(nonatomic,weak)UIImageView *iv;
@property(nonatomic)NSInteger i;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.i = 1;
    // 1.创建图片视图
    UIImageView *iv = [[UIImageView alloc]init];
    
    // 2.设置图片视图
    
    iv.frame = CGRectMake(50, 50, 200, 300);
    iv.backgroundColor = [UIColor lightGrayColor];
    iv.image = [UIImage imageNamed:@"fbb01.jpg"];
    // 设置内容的显示模式
    // 默认：填满整个视图，拉伸图片
    // AspectFit：保持宽高比，并且看到图片的全部，所以如果视图的比例与图片的宽高比不搭配的时候，会留白
    // AspectFill:保持宽高比，如果视图的比例与图片的宽高比不搭配，则图片会超出视图的区域，大小不定
    iv.contentMode = UIViewContentModeScaleAspectFit;
    
    // 3.添加到控制器的view中
    [self.view addSubview:iv];
    self.iv = iv;

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.i++;
    if (self.i == 4) {
        self.i = 1;
    }
    NSString *imageName = [NSString stringWithFormat:@"fbb0%ld.jpg",self.i];
    self.iv.image = [UIImage imageNamed:imageName];
}









@end

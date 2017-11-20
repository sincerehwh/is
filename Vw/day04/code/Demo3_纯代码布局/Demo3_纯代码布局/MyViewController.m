//
//  MyViewController.m
//  Demo3_纯代码布局
//
//  Created by tarena on 15/12/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *b1;
@property (weak, nonatomic) IBOutlet UIButton *b2;
@property (weak, nonatomic) IBOutlet UIButton *b3;

@end

@implementation MyViewController

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    //按钮的宽度
    CGFloat buttonW = (self.view.bounds.size.width-20-20-10)/2;
    //上面的按钮
    CGRect frame = CGRectMake(20, 20, buttonW, 40);
    self.button1.frame = frame;
    
    frame.origin.x +=(10+buttonW);
    self.button2.frame = frame;
    
    //定位图片
    frame = CGRectMake(20, 70, self.view.bounds.size.width-40, self.view.bounds.size.height-120);
    self.imageView.frame = frame;
    
    //定位b3
    frame = CGRectMake(self.view.bounds.size.width-40, self.view.bounds.size.height-40, 20, 20);
    self.b3.frame = frame;
    
    frame.origin.x-=30;
    self.b2.frame = frame;
    
    frame.origin.x-=30;
    self.b1.frame = frame;
}



- (void)viewDidLoad {
    [super viewDidLoad];
   
}

@end

//
//  ViewController.m
//  Demo3_纯代码布局
//
//  Created by tarena on 15/12/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

// 当控制器自带的view大小发生变化时
// 并且里面的间接子视图已经布局完毕了，则执行该方法
// 简单：在这个方法中布局控制器里面的子视图
- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    //布局按钮在右上角
    CGRect frame = self.button.frame;
    frame.origin.x = self.view.bounds.size.width-frame.size.width-20;
    frame.origin.y = 20;
    self.button.frame = frame;
    
    //布局标签在右下角
    frame = self.label.frame;
    frame.origin.x = self.view.bounds.size.width-frame.size.width-20;
    frame.origin.y = self.view.bounds.size.height - frame.size.height - 20;
    self.label.frame = frame;
}








@end

//
//  BarViewController.m
//  Demo3_纯代码布局
//
//  Created by tarena on 15/12/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BarViewController.h"

@interface BarViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation BarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    //布局按钮
    CGRect frame = self.button.frame;
    frame.origin.x = self.view.bounds.size.width-20-frame.size.width;
    //self.topLayoutGuide.length获取顶部被bar占据的高度
    frame.origin.y = self.topLayoutGuide.length + 20;
    self.button.frame = frame;
    
    frame = self.label.frame;
    frame.origin.x = self.view.bounds.size.width - frame.size.width - 20;
    //self.bottomLayoutGuide.length获取底部被bar占据的高度
    frame.origin.y = self.view.bounds.size.height - 20 - frame.size.height - self.bottomLayoutGuide.length;
    self.label.frame = frame;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController setNavigationBarHidden:!self.navigationController.navigationBarHidden animated:YES];
    [self.navigationController setToolbarHidden:!self.navigationController.toolbarHidden animated:YES];
}






@end

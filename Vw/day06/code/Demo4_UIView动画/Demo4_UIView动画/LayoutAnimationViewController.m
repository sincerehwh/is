//
//  LayoutAnimationViewController.m
//  Demo4_UIView动画
//
//  Created by tarena on 15/12/28.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "LayoutAnimationViewController.h"

@interface LayoutAnimationViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topLayoutConstraint;
//声明一个属性，记录手势没有开始时，顶部约束的constant
@property(nonatomic)CGFloat topConstant;

@end

@implementation LayoutAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //起始contant为40；
    self.topConstant = self.topLayoutConstraint.constant;
}

//响应pan手势
- (IBAction)pan:(UIPanGestureRecognizer *)sender
{
    //获取手势的竖直方向的移动距离
    CGFloat yTranslation = [sender translationInView:self.view].y;
    //新的位置的约束值为 起始值+手势走了的距离
    self.topLayoutConstraint.constant = self.topConstant + yTranslation;
    
    //判断手势是否是停止状态
    if (sender.state == UIGestureRecognizerStateEnded) {
        self.topLayoutConstraint.constant = self.topConstant;
        //[UIView animateWithDuration:2 animations:^{
            //[self.view layoutIfNeeded];
        //}];
        [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
            [self.view layoutIfNeeded];
        } completion:nil];
        
    }
}






@end

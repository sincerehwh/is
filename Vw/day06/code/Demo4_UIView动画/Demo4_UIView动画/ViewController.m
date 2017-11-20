//
//  ViewController.m
//  Demo4_UIView动画
//
//  Created by tarena on 15/12/28.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *airImageVIew;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//点击按钮后让图片淡出
- (IBAction)fadeOut:(id)sender
{
    //第一个参数：动画时长，单位是秒
    //第二个参数：block，在其中设置好你期待的
    //动画结束时视图的状态
    [UIView animateWithDuration:3 animations:^{
        //因为我要做淡出效果
        //淡出效果实际就是修改视图的alpha属性
        //当动画结束时完全看不见视图
        //此状态对应的alpha值就是0
        self.imageView.alpha =0;
        //如果想要移动的动画
        //则可以设置视图的center点
        self.airImageVIew.center = CGPointMake(80, 50);
        
    }];
}







@end

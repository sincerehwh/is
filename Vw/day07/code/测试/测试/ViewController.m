//
//  ViewController.m
//  测试
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //自定义一个只有小广告滚动视图的控制器
    //AdViewController  *avc = [AdViewController alloc]init];
    //avc.view.width = 320;
    //avc.view.height = 200;
    //avc.ads = @[@"a1.png",@"a2.png",@"a3.png"];
    
    //大的滚动视图
    UIScrollView *bigScrollView = [[UIScrollView alloc]init];
    
    [bigScrollView addSubview:avc.view];
    
    [self addChildViewController:avc];
    
}



@end

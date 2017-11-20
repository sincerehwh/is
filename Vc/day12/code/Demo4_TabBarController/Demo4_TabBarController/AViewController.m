//
//  AViewController.m
//  Demo4_TabBarController
//
//  Created by tarena on 15/12/15.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"第一个";
        //设置tabBar上的图片
        self.tabBarItem.image = [UIImage imageNamed:@"line_bell"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"full_bell"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

}
@end

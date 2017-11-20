//
//  CViewController.m
//  Demo4_TabBarController
//
//  Created by tarena on 15/12/15.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "CViewController.h"

@interface CViewController ()

@end

@implementation CViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"第三个";
        self.tabBarItem.image = [UIImage imageNamed:@"line_map"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"full_map"];
        // 徽章值
        self.tabBarItem.badgeValue = @"10";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarItem.title = @"第三个";
    self.tabBarItem.badgeValue = nil;
}
@end

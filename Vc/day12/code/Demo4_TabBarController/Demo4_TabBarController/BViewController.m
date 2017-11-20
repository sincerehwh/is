//
//  BViewController.m
//  Demo4_TabBarController
//
//  Created by tarena on 15/12/15.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"第二个";
        self.tabBarItem.image = [UIImage imageNamed:@"line_cart"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"full_cart"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


@end

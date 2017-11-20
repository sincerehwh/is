//
//  BViewController.m
//  Demo5_正向传值
//
//  Created by tarena on 15/12/4.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //显示接收到的信息
    self.label.text = self.msg;
    

}


@end

//
//  DetailViewController.m
//  Demo5_对象数组
//
//  Created by tarena on 15/12/10.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *populationLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.city.name;
    //显示传入的城市对象的名字到标签上
    self.nameLabel.text = self.city.name;
    //显示传入的城市对象的人口数到标签上
    self.populationLabel.text  = [NSString stringWithFormat:@"%ld万",self.city.population];
}


@end

//
//  ChooseStarViewController.m
//  作业1-星座运程
//
//  Created by tarena on 15/12/8.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ChooseStarViewController.h"

@interface ChooseStarViewController ()

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *allStarButtons;

@property(nonatomic,strong)NSArray *allStarLucky;

@end

@implementation ChooseStarViewController

- (NSArray *)allStarLucky
{
    if (!_allStarLucky) {
        _allStarLucky = @[@"升职加薪",@"出任CEO",@"赢取白富美",@"走上人生巅峰",@"有点小激动",@"打败王大葱"];
    }
    return _allStarLucky;
}



- (void)viewDidLoad {
    [super viewDidLoad];
   
}


- (IBAction)clickStarButton:(UIButton *)sender
{
    NSInteger index = [self.allStarButtons indexOfObject:sender];
    [self.delegate chooseStarViewController:self didChooseStarWithLuckyInfo:self.allStarLucky[index]];
    [self.navigationController popViewControllerAnimated:YES];
}








@end

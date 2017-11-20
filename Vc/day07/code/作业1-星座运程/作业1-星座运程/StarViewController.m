//
//  StarViewController.m
//  作业1-星座运程
//
//  Created by tarena on 15/12/8.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "StarViewController.h"
#import "ChooseStarViewController.h"

@interface StarViewController ()<ChooseStarViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *starLabel;

@end

@implementation StarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)chooseStarViewController:(ChooseStarViewController *)vc didChooseStarWithLuckyInfo:(NSString *)info
{
    self.starLabel.text = info;
}

- (IBAction)clickChoosStarButton:(id)sender
{
    ChooseStarViewController *vc = [[ChooseStarViewController alloc]init];
    vc.delegate = self;
    
    [self.navigationController pushViewController:vc animated:YES];
}








@end

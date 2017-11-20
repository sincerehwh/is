//
//  EditorViewController.m
//  作业2-文本编辑
//
//  Created by tarena on 15/12/8.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "EditorViewController.h"
#import "InputViewController.h"

@interface EditorViewController ()<InputViewControllerDelegate>

@end

@implementation EditorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (void)inputViewController:(InputViewController *)vc newLabelFrame:(CGRect)frame andText:(NSString *)text
{
    UILabel *label = [[UILabel alloc]init];
    label.frame = frame;
    label.text = text;
    [self.view addSubview:label];
}

- (IBAction)clickButton:(id)sender {
    InputViewController *inputVC = [[InputViewController alloc]init];
    inputVC.delegate  = self;
    [self presentViewController:inputVC animated:YES completion:nil];
}







@end

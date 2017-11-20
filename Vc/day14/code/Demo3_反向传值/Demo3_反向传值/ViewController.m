//
//  ViewController.m
//  Demo3_反向传值
//
//  Created by tarena on 15/12/17.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "InputViewController.h"

@interface ViewController ()<InputViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)inputViewController:(InputViewController *)vc didFinishInputString:(NSString *)str
{
    self.label.text = str;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    InputViewController *inputVC = segue.destinationViewController;
    inputVC.delegate = self;
}






@end

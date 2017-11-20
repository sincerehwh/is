//
//  MyViewController.m
//  Demo1_UIStepper
//
//  Created by tarena on 15/12/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置stepper
    self.stepper.minimumValue = 10;
    self.stepper.maximumValue = 35;
    self.stepper.value = 17;
    self.stepper.stepValue = 1;
    
    
    //界面刚一呈现，显示stepper背后的value
    self.resultLabel.text = [NSString stringWithFormat:@"%.0f",self.stepper.value];
    //self.resultLabel.font = [UIFont systemFontOfSize:self.stepper.value];
    
}

// 点击加减号时，修改value，自动执行该方法
- (IBAction)showValue:(UIStepper *)sender
{
    self.resultLabel.text = [NSString stringWithFormat:@"%.0f",sender.value];
    //self.resultLabel.font = [UIFont systemFontOfSize:self.stepper.value];
}







@end

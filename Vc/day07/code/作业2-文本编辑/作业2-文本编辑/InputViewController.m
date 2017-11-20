//
//  InputViewController.m
//  作业2-文本编辑
//
//  Created by tarena on 15/12/8.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "InputViewController.h"

@interface InputViewController ()

@property (weak, nonatomic) IBOutlet UITextField *xTextField;
@property (weak, nonatomic) IBOutlet UITextField *yTextField;

@property (weak, nonatomic) IBOutlet UITextField *wTextField;

@property (weak, nonatomic) IBOutlet UITextField *hTextField;
@property (weak, nonatomic) IBOutlet UITextField *textTextField;

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)clickOkButton:(id)sender {
    CGRect frame = CGRectZero;
    frame.origin.x = [self.xTextField.text floatValue];
    frame.origin.y = [self.yTextField.text floatValue];
    frame.size.width = [self.wTextField.text floatValue];
    frame.size.height = [self.hTextField.text floatValue];
    [self.delegate inputViewController:self newLabelFrame:frame andText:self.textTextField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
}









@end

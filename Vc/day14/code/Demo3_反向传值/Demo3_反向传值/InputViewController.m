//
//  InputViewController.m
//  Demo3_反向传值
//
//  Created by tarena on 15/12/17.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "InputViewController.h"

@interface InputViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)goback:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(inputViewController:didFinishInputString:)]) {
        [self.delegate inputViewController:self didFinishInputString:self.textField.text];
    }
    [self.navigationController popViewControllerAnimated:YES];
}







@end

//
//  InputViewController.m
//  Demo2_反向传值_代理
//
//  Created by tarena on 15/12/7.
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
    //第三件事：合适的时机，给代理发消息
    [self.delegate inputViewController:self didFinishInputWithString:self.textField.text];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}







@end

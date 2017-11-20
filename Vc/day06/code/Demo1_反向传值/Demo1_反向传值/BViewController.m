//
//  BViewController.m
//  Demo1_反向传值
//
//  Created by tarena on 15/12/7.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//点击后返回到推出此界面的vc
- (IBAction)goback:(id)sender
{
    //在返回前，借助于存储的avc的引用，给avc发消息
    [self.backReference bViewControllerDidInput:self.textField.text];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}





@end

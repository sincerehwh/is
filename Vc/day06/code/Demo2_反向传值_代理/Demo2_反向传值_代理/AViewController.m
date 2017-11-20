//
//  AViewController.m
//  Demo2_反向传值_代理
//
//  Created by tarena on 15/12/7.
//  Copyright © 2015年 Tarena. All rights reserved.
//


#import "AViewController.h"
#import "InputViewController.h"


//1.遵守协议
@interface AViewController ()<InputViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation AViewController

//2.实现方法
- (void)inputViewController:(InputViewController *)vc didFinishInputWithString:(NSString *)msg
{
    self.label.text = msg;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (IBAction)gotoInput:(id)sender
{
    InputViewController *inputVC = [[InputViewController alloc]init];
    
    //3。推出之前，将自己设置为inputVC的代理
    inputVC.delegate = self;
    
    [self presentViewController:inputVC animated:YES completion:nil];
}





@end

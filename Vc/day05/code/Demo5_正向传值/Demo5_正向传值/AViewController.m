//
//  AViewController.m
//  Demo5_正向传值
//
//  Created by tarena on 15/12/4.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

@interface AViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)gotoBVC:(id)sender
{
    BViewController *bvc = [[BViewController alloc]init];
    //通过bvc这个引用，给要推出的控制器公开的那个属性赋值
    bvc.msg = self.textField.text;
    
    //推出bvc
    [self.navigationController pushViewController:bvc animated:YES];
    //[self presentViewController:bvc animated:YES completion:nil];
    
}








@end

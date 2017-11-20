//
//  AViewController.m
//  Demo1_反向传值
//
//  Created by tarena on 15/12/7.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

@interface AViewController ()
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
//实现公开的方法，在方法内，完成传入的参数的显示
- (void)bViewControllerDidInput:(NSString *)msg
{
    self.resultLabel.text = msg;
}

//点击按钮推出BVC
- (IBAction)gotoBVC:(id)sender
{
    //1.创建BVC的实例
    BViewController *bvc = [[BViewController alloc]init];
    //2.在推出bvc之前，将自己的引用告诉给bvc
    //等同于当前控制器给要推出的bvc留一个联系方式
    bvc.backReference = self;
    //3.推出BVC
    [self presentViewController:bvc animated:YES completion:nil];
}







- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
}
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //self.resultLabel.text = self.backString;
}

@end

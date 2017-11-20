//
//  ViewController.m
//  Demo1_跳转
//
//  Created by tarena on 15/12/17.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "GreenViewController.h"
#import "YellowViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //引发跳转到红色vc的那个Segue
    [self performSegueWithIdentifier:@"ToRedSegue" sender:nil];
}

//点击按钮后跳转到独立的没有连线
//的绿色vc
- (IBAction)gotoGreenVC:(id)sender
{
    //GreenViewController *greenVC = [[GreenViewController alloc]init];
    //让故事板依据在它里面的设计，创建GreenViewController的实例
    //并且实例的view依照故事板上的子视图设计
    GreenViewController *greenVC = [self.storyboard instantiateViewControllerWithIdentifier:@"GreenVC"];
    [self.navigationController pushViewController:greenVC animated:YES];
}

//点击按钮后跳转到独立的xib文件
- (IBAction)gotoYellowVC:(id)sender
{
    YellowViewController *yellowVC = [[YellowViewController alloc]initWithNibName:@"YellowViewController" bundle:nil];
    [self.navigationController pushViewController:yellowVC animated:YES];
}





@end

//
//  MyViewController.m
//  Demo1_使用xib构建界面
//
//  Created by tarena on 15/12/1.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

//目标：能够在控制器中访问系统自动创建的label对象
//增加一个记录label的引用
@property(nonatomic,weak)IBOutlet UILabel *myLabel;

@property (weak, nonatomic) IBOutlet UIButton *myButton;

@property (weak, nonatomic) IBOutlet UIButton *myButton2;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myButton2.backgroundColor = [UIColor redColor];
    
    //添加按钮的点击事件
    [self.myButton addTarget:self action:@selector(changeText:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)changeText:(UIButton *)sender
{
    self.myLabel.text = @"Hello Kitty";
    //读取sender上的normal状态的title文字
    NSLog(@"%@",[sender titleForState:UIControlStateNormal]);
}

//通过连线的方式为button2添加了
//touchUpInside事件的响应
//只要点击了按钮，该方法自动执行
//sender代表的是触发这个方法的事件源
//也就是点击的是谁，sender就是谁，这里sender就是
//myButton2
- (IBAction)clickButton2:(UIButton *)sender {
    NSLog(@".....");
}









@end

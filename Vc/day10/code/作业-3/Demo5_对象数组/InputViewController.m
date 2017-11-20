//
//  InputViewController.m
//  Demo5_对象数组
//
//  Created by tarena on 15/12/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "InputViewController.h"

@interface InputViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *populationTextField;


@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"增加城市";
}

- (IBAction)clickSaveButton:(id)sender
{
    City *newCity = [[City alloc]init];
    newCity.name = self.nameTextField.text;
    newCity.population = [self.populationTextField.text integerValue];
    
    //给代理发消息，告诉代理新的城市对象数据
    // 先判断self.delegate中是否有xxxx方法
    // 有，再给代理发消息
    if ([self.delegate respondsToSelector:@selector(inputViewController:newCityInfo:)]) {
        [self.delegate inputViewController:self newCityInfo:newCity];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}





@end

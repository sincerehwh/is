//
//  MyViewController.m
//  Demo3_UISwitch
//
//  Created by tarena on 15/12/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)pressSwitch:(id)sender
{
    //判断开关的on属性，看是YES还是NO
    if (self.mySwitch.isOn) {
        NSLog(@"开关打开了");
    }else{
        NSLog(@"开关关闭了");
    }
}

//点击按钮后改变开关的状态

- (IBAction)changeSwitchState:(id)sender
{
    
    [self.mySwitch setOn:!self.mySwitch.isOn animated:YES];
    
//    if (self.mySwitch.isOn) {
//        [self.mySwitch setOn:NO animated:YES];
//    }else
//    {
//        [self.mySwitch setOn:YES animated:YES];
//    }
    
}






@end

//
//  MyViewController.m
//  Demo3_UISwitch
//
//  Created by tarena on 15/12/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *switch1;

@property (weak, nonatomic) IBOutlet UISwitch *switch2;


@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)pressSwitch1:(id)sender
{
    [self.switch2 setOn:self.switch1.on animated:YES];
    
    //switch1  on      YES   NO
    //switch2 enabled  YES   NO
    
    self.switch2.enabled = self.switch1.on;
    
//    if(!self.switch1.isOn){
//        self.switch2.enabled = NO;
//    }else{
//        self.switch2.enabled = YES;
//    }
}







@end

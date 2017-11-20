//
//  MyViewController.m
//  Demo1_懒加载
//
//  Created by tarena on 15/12/4.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@property(nonatomic,strong)NSArray *allStudents;

@end

@implementation MyViewController

// allStudents的getter方法
- (NSArray *)allStudents
{
    if (!_allStudents) {
        _allStudents = [NSArray array];
    }
    return _allStudents;
}
- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)showStudent:(id)sender
{
}

- (void)fun1{
    self.allStudents; }

- (void)fun2{
    self.allStudents; }

- (void)fun3{
    self.allStudents; }

- (void)fun4{
    self.allStudents;
}




@end

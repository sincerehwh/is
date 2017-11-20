//
//  ViewController.m
//  作业-1
//
//  Created by tarena on 15/12/22.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "MessageView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MessageView *messageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.messageView.message = @"OKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOK";
}


@end

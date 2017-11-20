//
//  ProgressViewController.m
//  Demo1_其它控件
//
//  Created by tarena on 15/12/18.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ProgressViewController.h"

@interface ProgressViewController ()
@property (weak, nonatomic) IBOutlet UIProgressView *myProgressView;

@end

@implementation ProgressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myProgressView.progress = 0;
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(change:) userInfo:nil repeats:YES];
}

-(void)change:(NSTimer *)sender
{
    self.myProgressView.progress+=0.1;
    if (self.myProgressView.progress == 1) {
        //销毁定时器
        [sender invalidate];
        NSLog(@"...");
    }
}



@end

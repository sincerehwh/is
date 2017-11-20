//
//  ActivityViewController.m
//  Demo1_其它控件
//
//  Created by tarena on 15/12/18.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ActivityViewController.h"

@interface ActivityViewController ()

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *myActivity;


@end

@implementation ActivityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myActivity.hidesWhenStopped = YES;
}

- (IBAction)start:(id)sender
{
    if (self.myActivity.isAnimating) {
        [self.myActivity stopAnimating];
    }else{
        [self.myActivity startAnimating];
    }
}

- (IBAction)stop:(id)sender
{
    //[self.myActivity stopAnimating];
}




@end

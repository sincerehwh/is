//
//  OtherViewController.m
//  Demo2_正向传值
//
//  Created by tarena on 15/12/17.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "OtherViewController.h"

@interface OtherViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation OtherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = self.str;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  SegmentsViewController.m
//  Demo1_其它控件
//
//  Created by tarena on 15/12/18.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "SegmentsViewController.h"

@interface SegmentsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;

@end

@implementation SegmentsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)clickButton:(UISegmentedControl *)sender
{
    // 选中的是第几个按钮
    NSInteger index = sender.selectedSegmentIndex;
    // 根据index构建图片名
    NSString *fileName = [NSString stringWithFormat:@"fbb0%ld.jpg",index+1];
    // 显示图片
    self.headerImageView.image = [UIImage imageNamed:fileName];
    
    
}


@end

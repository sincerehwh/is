//
//  ViewController.m
//  Demo2_自定义下载进度条
//
//  Created by tarena on 15/12/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "DownloadView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet DownloadView *downloadView;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.slider.value = 0;
    self.downloadView.downloadValue = self.slider.value;
    self.downloadView.lineColor = [UIColor redColor];
}

- (IBAction)changValue:(id)sender
{
    self.downloadView.downloadValue = self.slider.value;
    // 当视图接收到新值后，需要根据新的数据重新绘制
    // 图形时，可以使用以下方法通知系统重绘
    //[self.downloadView setNeedsDisplay];
}








@end

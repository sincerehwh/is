//
//  QRCodeViewController.m
//  Demo5_绘制图片
//
//  Created by tarena on 15/12/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "QRCodeViewController.h"
#import <CoreImage/CoreImage.h>

@interface QRCodeViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation QRCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1. 创建一个二维码种类的滤镜
    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    
    //2.恢复滤镜的默认设置（清除已经设置过的效果）
    [filter setDefaults];
    
    //3.将隐藏的地址变成二进制数据
    NSData *data = [@"http://www.baidu.com" dataUsingEncoding:NSUTF8StringEncoding];
    
    //4.通过KVC的方式设置滤镜，传入要隐藏的data
    //滤镜就能够依据data生成二维码
    [filter setValue:data forKey:@"inputMessage"];
    
    //5.输出二维码图片
    CIImage *outputImage = [filter outputImage];
    
    //6.将CIImage转换成UIImage
    UIImage *image = [UIImage imageWithCIImage:outputImage];
    //7.显示到图片视图上
    self.imageView.image = image;
    
}


@end

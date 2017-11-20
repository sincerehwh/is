//
//  DownloadView.m
//  Demo2_自定义下载进度条
//
//  Created by tarena on 15/12/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "DownloadView.h"

@implementation DownloadView

- (void)setDownloadValue:(CGFloat)downloadValue
{
    _downloadValue = downloadValue;
    //一接收到新值，就利用新的数值重绘
    [self setNeedsDisplay];
}

/*
 只会在创建视图实例时，由系统自动调用1次
 */
- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    // 圆弧的中心点
    CGPoint center = CGPointMake(self.bounds.size.width*0.5, self.bounds.size.height*0.5);
    // 圆弧的半径
    CGFloat radius = MIN(self.bounds.size.width, self.bounds.size.height)*0.5-10;
    // 勾勒路径
    // 起点：二分之三PI
    // 终点：在起点的数值基础上 累加一个弧度
    // 累加的弧度要有下载数据决定
    // 数据的百分之百是 2π 所以，下载了0.3 就用0.3乘以2π
    [path addArcWithCenter:center radius:radius startAngle:M_PI_2*3 endAngle:M_PI_2*3+self.downloadValue*2*M_PI clockwise:YES];
    // 设置线宽
    path.lineWidth = 8;
    // 设置描边的颜色
    if (self.lineColor) {
        [self.lineColor setStroke];
    }else{
        [[UIColor blueColor] setStroke];
    }
    // 描边
    [path stroke];
    
    //绘制百分比文字
    NSString *percentStr = [NSString stringWithFormat:@"%.0f%%",self.downloadValue*100];
    [percentStr drawAtPoint:CGPointMake(self.bounds.size.width*0.5-40,self.bounds.size.height*0.5-30) withAttributes:@{NSForegroundColorAttributeName:[UIColor redColor],NSFontAttributeName:[UIFont systemFontOfSize:45]}];
    
}


@end

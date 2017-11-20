//
//  ViewController.m
//  Demo3_UIImageView动画
//
//  Created by tarena on 15/12/28.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tomImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

// 点击头部区域的动画效果
- (IBAction)knockout:(id)sender
{
    //先构建存储了动画需要的图片的图片数组
    NSMutableArray *allImage = [NSMutableArray array];
    //循环向数组中添加UIImage图片对象
    for (NSInteger i=0; i<81; i++) {
        // 格式化文件名称
        NSString *fileName = [NSString stringWithFormat:@"knockout_%02ld.jpg",i];
        
        // 创建UIImage对象
        // 使用imageNamed方法加载过得图片为了提高以后
        // 的访问效率，不再重复加载，所以系统会将此图片
        // 一直保存在内存中
        //UIImage *image = [UIImage imageNamed:fileName];
        
        // 构建图片的完整地址路径
        NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:nil];
        
        // imageWithContentsOfFile方法只会在创建时加载
        // image引用消失后，图片从内存中释放
        // 参数 file 必须写图片的完整路径
        // 完整路径是指带有盘符，带有根文件夹信息的
        // 如：/User/xxxx/xxxx/xxxx/xxx
        UIImage *image = [UIImage imageWithContentsOfFile:path];
        
        // 将image对象添加到allImage数组中
        [allImage addObject:image];
    }
    
    // 设置动画图片数组
    //self.tomImageView.animationImages = allImage;
    [self.tomImageView setAnimationImages:allImage];
    
    // 设置重复次数
    self.tomImageView.animationRepeatCount = 1;
    
    // 设置动画时长
    self.tomImageView.animationDuration = 81*0.075;
    
    // 开始动画
    [self.tomImageView startAnimating];
    
    //  经过动画完整时长后，主动将tomImageView的animationImages属性中的数组设置为nil
    [self.tomImageView performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.tomImageView.animationDuration];
}









@end

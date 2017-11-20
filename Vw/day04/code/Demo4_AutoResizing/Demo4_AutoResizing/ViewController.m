//
//  ViewController.m
//  Demo4_AutoResizing
//
//  Created by tarena on 15/12/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建按钮
    UILabel *label = [[UILabel alloc]init];
    label.backgroundColor = [UIColor redColor];
    label.frame = CGRectMake(20, self.view.bounds.size.height-40, 100, 20);
    //点亮红线
    //与在第5个检查器中设置相反
    //如：左和下想固定，则需要设置上和右为可变
    label.autoresizingMask = UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleRightMargin;
    [self.view addSubview:label];
   
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    CGFloat buttonW = (self.view.bounds.size.width-50)*0.5;
    CGRect frame = self.button1.frame;
    frame.size.width = buttonW;
    self.button1.frame = frame;
    
    frame.origin.x+=(10+buttonW);
    self.button2.frame = frame;
    
    
    
}






@end

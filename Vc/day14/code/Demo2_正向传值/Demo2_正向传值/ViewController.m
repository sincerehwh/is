//
//  ViewController.m
//  Demo2_正向传值
//
//  Created by tarena on 15/12/17.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "OtherViewController.h"
#import "AnyViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

//当通过引用某个segue来实现跳转时
//在跳转前一刻，系统会自动调用该方法
//所以，想截获跳转前的一刻时，就可以实现这个方法
//并且通过该方法的参数segue，得到跳转到的目标vc对象
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Segue1"]) {
        //从segue中获取系统为我们自动创建
        //的要推出的otherViewController的实例(目标vc)
        OtherViewController *vc = segue.destinationViewController;
        vc.str = [self.textField.text stringByAppendingString:@":第一个"];
    }else{
        AnyViewController *vc2 = segue.destinationViewController;
        vc2.str2 = [self.textField.text stringByAppendingString:@":第二个"];
    }
    
}



@end

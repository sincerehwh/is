//
//  AViewController.h
//  Demo1_反向传值
//
//  Created by tarena on 15/12/7.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AViewController : UIViewController

//公开一个属性存回传的值
//@property(nonatomic,strong)NSString *backString;

//公开一个方法，此方法通过一个参数来接收B发消息时回传的值
-(void)bViewControllerDidInput:(NSString *)msg;

@end







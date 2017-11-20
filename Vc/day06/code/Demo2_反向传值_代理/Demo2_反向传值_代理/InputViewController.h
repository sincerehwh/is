//
//  InputViewController.h
//  Demo2_反向传值_代理
//
//  Created by tarena on 15/12/7.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
// 此句用于声明，告诉系统，遇见InputViewController
// 时，把它认为是一个类的名称即可
@class InputViewController;

/* 第一件事：定义协议 
    协议名： 委托方法类名+delegate
    方法名：第一个参数一定是委托方自己
           方法名要尽量体现发消息的时机
           要发给代理方的具体的消息内容就在剩余的参数中体现
    目的：规范代理方，委托方只会在合适的时候，发协议中的方法
 */
@protocol InputViewControllerDelegate <NSObject>

-(void)inputViewController:(InputViewController *)vc didFinishInputWithString:(NSString *)msg;

@end

@interface InputViewController : UIViewController

//第二件事：声明一个属性，用于存储代理方引用
@property(nonatomic,weak)id<InputViewControllerDelegate>  delegate;

@end












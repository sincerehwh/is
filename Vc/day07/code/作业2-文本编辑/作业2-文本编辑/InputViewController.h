//
//  InputViewController.h
//  作业2-文本编辑
//
//  Created by tarena on 15/12/8.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
@class InputViewController;

@protocol InputViewControllerDelegate <NSObject>

-(void)inputViewController:(InputViewController *)vc newLabelFrame:(CGRect)frame andText:(NSString *)text;

@end

@interface InputViewController : UIViewController

@property(nonatomic,weak)id<InputViewControllerDelegate> delegate;

@end









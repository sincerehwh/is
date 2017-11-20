//
//  InputViewController.h
//  Demo3_反向传值
//
//  Created by tarena on 15/12/17.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
@class InputViewController;

@protocol InputViewControllerDelegate <NSObject>

-(void)inputViewController:(InputViewController *)vc didFinishInputString:(NSString *)str;

@end


@interface InputViewController : UIViewController

@property(nonatomic,weak)id<InputViewControllerDelegate> delegate;

@end







//
//  InputViewController.h
//  Demo5_对象数组
//
//  Created by tarena on 15/12/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
@class InputViewController;

@protocol InputViewControllerDelegate <NSObject>

-(void)inputViewController:(InputViewController *)vc newCityInfo:(City *)city;

@end


@interface InputViewController : UIViewController

@property(nonatomic,weak)id<InputViewControllerDelegate> delegate;

@end








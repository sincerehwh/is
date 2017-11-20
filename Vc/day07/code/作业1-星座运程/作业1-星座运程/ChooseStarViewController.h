//
//  ChooseStarViewController.h
//  作业1-星座运程
//
//  Created by tarena on 15/12/8.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ChooseStarViewController;

@protocol ChooseStarViewControllerDelegate <NSObject>

-(void)chooseStarViewController:(ChooseStarViewController *)vc didChooseStarWithLuckyInfo:(NSString *)info;

@end

@interface ChooseStarViewController : UIViewController

@property(nonatomic,weak)id<ChooseStarViewControllerDelegate> delegate;

@end








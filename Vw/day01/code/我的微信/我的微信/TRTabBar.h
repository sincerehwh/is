//
//  TRTabBar.h
//  我的微信
//
//  Created by tarena on 15/12/19.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TRTabBar;

@protocol TRTabBarDelegate <UITabBarDelegate>

-(void)tabBarDidClickCenterButton:(TRTabBar *)tabBar;

@end

@interface TRTabBar : UITabBar

@property(nonatomic,weak)id<TRTabBarDelegate> delegate;

@end









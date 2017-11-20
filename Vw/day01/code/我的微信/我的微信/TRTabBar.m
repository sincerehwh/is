//
//  TRTabBar.m
//  我的微信
//
//  Created by tarena on 15/12/19.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TRTabBar.h"

@interface TRTabBar ()
@property(nonatomic,weak)UIButton *centerButton;
@end

@implementation TRTabBar

//告知系统动态处理delegate，当程序运行起来之后
//self指向的实际类型是什么，就用该类型的delegate属性
@dynamic delegate;

/*继承自UIView的子类，在创建实例时，系统会都自动调用
 initwithFrame方法，就算是使用时调用的是init方法，
 系统最后也是调用initWithFrame，只不过参数frame为0
 */
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //创建一个UIButton的实例
        UIButton *centerButton = [[UIButton alloc]init];
        [centerButton setImage:[UIImage imageNamed:@"sports"] forState:UIControlStateNormal];
        centerButton.frame = CGRectMake(0, 0, centerButton.currentImage.size.width, centerButton.currentImage.size.height);
        //以子视图的形式添加到TabBar中
        [self addSubview:centerButton];
        self.centerButton = centerButton;
        
        //为button添加点击事件
        [centerButton addTarget:self action:@selector(centerButtonClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

-(void)centerButtonClick
{
    if([self.delegate respondsToSelector:@selector(tabBarDidClickCenterButton:)]){
        [self.delegate tabBarDidClickCenterButton:self];
    }
}

/*
 UIView类中定义的一个方法
 当视图的frame发生变化时，系统会自动调用该方法
 对于该视图内部的子视图如何布局，就写在
 这个方法中
 使用此方法时一定要调用super，先保证父类中原本做的
 布局操作先实现，然后我们再写代码调整各个子视图的位置
*/
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //1.设置中间按钮的位置
    self.centerButton.center = CGPointMake(self.bounds.size.width*0.5, self.bounds.size.height*0.5-12);
    
    //计算每个UITabBarButton的宽
    CGFloat tabbarButtonW = self.bounds.size.width/5;
    CGFloat buttonIndex = 0;
    
    //2.设置系统根据子vc创建的4个UITabBarButton的位置
    for (UIView *child in self.subviews) {
        //根据字符串做类名，找到该类型的类型信息
        Class class = NSClassFromString(@"UITabBarButton");
        //判断当前遍历到的子视图是否是class类型
        if ([child isKindOfClass:class]) {
            //先拿出button原有的frame
            CGRect frame = child.frame;
            //改子视图的宽
            frame.size.width = tabbarButtonW;
            //改子视图的x
            frame.origin.x = buttonIndex*tabbarButtonW;
            //再把改完的frame赋会给button
            child.frame = frame;
            buttonIndex++;
            if (buttonIndex==2) {
                buttonIndex++;
            }
        }
    }
}


@end









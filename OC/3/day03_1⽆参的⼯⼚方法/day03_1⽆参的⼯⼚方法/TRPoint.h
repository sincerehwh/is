//
//  TRPoint.h
//  day03_1⽆参的⼯⼚方法
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRPoint : NSObject
@property int x;
@property int y;
-(void)show;
+(id)point;//声明了一个工厂方法
@end

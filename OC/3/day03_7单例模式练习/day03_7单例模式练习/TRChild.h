//
//  TRChild.h
//  day03_7单例模式练习
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRChild : NSObject
@property NSString* name;
@property int age;
+(id)sharedChild;
-(void)show;
@end

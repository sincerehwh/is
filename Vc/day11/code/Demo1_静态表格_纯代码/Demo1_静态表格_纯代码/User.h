//
//  User.h
//  Demo1_静态表格_纯代码
//
//  Created by tarena on 15/12/14.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property(nonatomic,strong)NSString *wechatNum;
@property(nonatomic,strong)NSString *qqNum;
@property(nonatomic,strong)NSString *phoneNum;
@property(nonatomic,strong)NSString *email;

@property(nonatomic,getter=isProtect)BOOL protect;

@end








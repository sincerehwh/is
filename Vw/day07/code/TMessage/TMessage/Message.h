//
//  Message.h
//  TMessage
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Message : NSObject

@property(nonatomic,strong)NSString *content;
@property(nonatomic)BOOL fromMe;

+(NSArray *)demoData;

@end








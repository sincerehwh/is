//
//  TRStudent.h
//  day07_2协议选择器
//
//  Created by tarena on 15/9/24.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRStudent : NSObject
@property NSString *name;
@property int ID;
-(id)initWithName:(NSString*)name andID:(int)ID;
-(void)study;
@end

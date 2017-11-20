//
//  TRStudent.h
//  day06_5类对象
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRStudent : NSObject
@property NSString *name;
@property int ID;
-(id)initWithName:(NSString*)name andID:(int)ID;
@end

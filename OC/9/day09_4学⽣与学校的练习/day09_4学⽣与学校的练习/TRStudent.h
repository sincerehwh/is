//
//  TRStudent.h
//  day09_4学⽣与学校的练习
//
//  Created by tarena on 15/9/29.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRStudent : NSObject
@property NSString *name;
@property int age;
-(id)initWithName:(NSString*)name andAge:(int)age;
-(void)print:(id)condition;
@end

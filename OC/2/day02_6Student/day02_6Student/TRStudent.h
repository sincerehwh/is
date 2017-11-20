//
//  TRStudent.h
//  day02_6Student
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRStudent : NSObject
@property NSString* name;
@property BOOL gender;
@property int age;
@property double salary;
-(void)show;
@end

//
//  TRStudent.h
//  day07_3深拷贝练习
//
//  Created by tarena on 15/9/24.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRStudent : NSObject<NSCopying>
@property int age;
@property char gender;
@property double salary;
-(id)initWithAge:(int)age andGender:(char)gender andSalary:(double)salary;
-(void)printInfo;
@end

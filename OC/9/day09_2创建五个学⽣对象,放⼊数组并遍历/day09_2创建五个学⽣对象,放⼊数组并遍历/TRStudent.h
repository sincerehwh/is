//
//  TRStudent.h
//  day09_2创建五个学⽣对象,放⼊数组并遍历
//
//  Created by tarena on 15/9/29.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRStudent : NSObject
@property NSString *name;
@property int age;
-(id)initWithName:(NSString*)name andAge:(int)age;
@end

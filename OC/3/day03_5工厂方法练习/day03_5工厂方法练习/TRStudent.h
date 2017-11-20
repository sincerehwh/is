//
//  TRStudent.h
//  day03_5工厂方法练习
//
//  Created by tarena on 15/9/19.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRStudent : NSObject
@property NSString* name;
@property BOOL gender;
@property int age;
@property NSString* address;
-(id)initWithName:(NSString*)name andGender:(BOOL)gender andAge:(int)age andAddress:(NSString*)address;
+(id)studentWithName:(NSString*)name andGender:(BOOL)gender andAge:(int)age andAddress:(NSString*)address;
-(void)show;
@end

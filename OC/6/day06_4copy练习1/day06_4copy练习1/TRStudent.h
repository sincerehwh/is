//
//  TRStudent.h
//  day06_4copy练习1
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRBook.h"

@interface TRStudent : NSObject
@property (assign) int age;
@property (copy) TRBook *book;
-(void)study;
@end

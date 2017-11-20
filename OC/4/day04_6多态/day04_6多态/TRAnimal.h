//
//  TRAnimal.h
//  day04_6多态
//
//  Created by tarena on 15/9/21.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRAnimal : NSObject
@property NSString *name;
@property int age;
-(id)initWithName:(NSString*)name andAge:(int)age;
-(void)eat;
-(void)sleep;
@end

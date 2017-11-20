//
//  TRInteger.h
//  day06_3copy
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRInteger : NSObject<NSCopying>
@property int integer;
-(id)initWithInteger:(int)integer;
-(void)show;
@end

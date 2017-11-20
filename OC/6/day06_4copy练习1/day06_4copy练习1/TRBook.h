//
//  TRBook.h
//  day06_4copy练习1
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRBook : NSObject<NSCopying>
@property int price;
-(id)initWithPrice:(int)price;
-(void)show;
@end
